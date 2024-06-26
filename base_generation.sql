CREATE TABLE CHARACTER (
    CHARACTER_NAME VARCHAR2(24) NOT NULL,
    SERVER_NAME VARCHAR2(24) NOT NULL,
    LVL SMALLINT NOT NULL,
    RACE VARCHAR2(24) NOT NULL,
    CLASS VARCHAR2(24) NOT NULL,
    FACTION VARCHAR2(24) NOT NULL,
    PROFESSION VARCHAR2(24),
    PROFESSION_LVL SMALLINT,
    GUILD VARCHAR2(24),
    GOLD INTEGER NOT NULL,
    PVP_RATING SMALLINT NOT NULL,
    TITLE VARCHAR2(24)
);

ALTER TABLE CHARACTER ADD CONSTRAINT CHARACTER_PK PRIMARY KEY ( CHARACTER_NAME, SERVER_NAME );

CREATE TABLE CHARACTER_ITEM (
    CHARACTER_NAME VARCHAR2(24) NOT NULL,
    SERVER_NAME VARCHAR2(24) NOT NULL,
    ITEM_NAME VARCHAR2(48) NOT NULL
);

ALTER TABLE CHARACTER_ITEM ADD CONSTRAINT CHARACTERITEM_PK PRIMARY KEY ( CHARACTER_NAME, SERVER_NAME, ITEM_NAME );

CREATE TABLE CLASS (
    CLASS VARCHAR2(24) NOT NULL,
    MAIN_STAT VARCHAR2(24) NOT NULL,
    ARMORCLASS VARCHAR2(24) NOT NULL
);

ALTER TABLE CLASS ADD CONSTRAINT CLASS_PK PRIMARY KEY ( CLASS );

CREATE TABLE COMPANION (
    UNLOCKABLE_ID INTEGER NOT NULL,
    COMPANION_NAME VARCHAR2(48) NOT NULL,
    COMPANION_PG_NAME VARCHAR2(24),
    COMPANION_ELEMENT VARCHAR2(24) NOT NULL,
    COMPANION_LVL SMALLINT NOT NULL,
    COMPANION_HP SMALLINT NOT NULL,
    COMPANION_DPS SMALLINT NOT NULL,
    DROP_SOURCE VARCHAR2(24) NOT NULL
);

ALTER TABLE COMPANION ADD CONSTRAINT COMPANION_PK PRIMARY KEY ( UNLOCKABLE_ID );

ALTER TABLE COMPANION ADD CONSTRAINT COMPANION_PKV1 UNIQUE ( UNLOCKABLE_ID );

CREATE TABLE GUILD (
    GUILD VARCHAR2(24) NOT NULL,
    SERVER_NAME VARCHAR2(24) NOT NULL,
    GUILD_LVL SMALLINT NOT NULL,
    GUILD_MEMBERS_AMOUNT SMALLINT NOT NULL,
    GUILD_MESSAGE VARCHAR2(64)
);

ALTER TABLE GUILD ADD CONSTRAINT GUILD_PK PRIMARY KEY ( GUILD, SERVER_NAME );

CREATE TABLE ITEM (
    ITEM_NAME VARCHAR2(48) NOT NULL,
    ITEM_LVL SMALLINT,
    PRIM_ATTR VARCHAR2(24),
    SEC_ATTR VARCHAR2(24),
    TERT_ATTR VARCHAR2(24),
    PRIM_COMBAT_ATTR VARCHAR2(24),
    SEC_COMBAT_ATTR VARCHAR2(24),
    TERT_COMBAT_ATTR VARCHAR2(24),
    DPS SMALLINT,
    ATTACK_SPEED SMALLINT,
    MAX_DURABILITY SMALLINT
);

ALTER TABLE ITEM ADD CONSTRAINT ITEM_PK PRIMARY KEY ( ITEM_NAME );

CREATE TABLE MOUNT (
    UNLOCKABLE_ID INTEGER NOT NULL,
    MOUNT_NAME VARCHAR2(48) NOT NULL,
    DROP_SOURCE VARCHAR2(48) NOT NULL
);

ALTER TABLE MOUNT ADD CONSTRAINT MOUNT_PK PRIMARY KEY ( UNLOCKABLE_ID );

ALTER TABLE MOUNT ADD CONSTRAINT MOUNT_PKV1 UNIQUE ( UNLOCKABLE_ID );

CREATE TABLE PLAYER (
    BATTLETAG INTEGER NOT NULL,
    NICKNAME VARCHAR2(24) NOT NULL,
    SUBSCRIPTION_END_DATE DATE,
    BALANCE NUMBER(10, 2) NOT NULL,
    FIRST_NAME VARCHAR2(48) NOT NULL,
    LAST_NAME VARCHAR2(48) NOT NULL,
    EMAIL_ADDRESS VARCHAR2(48) NOT NULL,
    CREDIT_CARD_NUMBER VARCHAR2(16)
);

ALTER TABLE PLAYER ADD CONSTRAINT PLAYER_PK PRIMARY KEY ( BATTLETAG, NICKNAME );

CREATE TABLE PLAYER_CHARACTER (
    BATTLETAG INTEGER NOT NULL,
    NICKNAME VARCHAR2(24) NOT NULL,
    CHARACTER_NAME VARCHAR2(24) NOT NULL,
    SERVER_NAME VARCHAR2(24) NOT NULL
);

ALTER TABLE PLAYER_CHARACTER ADD CONSTRAINT PLAYERCHARACTER_PK PRIMARY KEY ( BATTLETAG, NICKNAME, CHARACTER_NAME, SERVER_NAME );

CREATE TABLE PLAYER_UNLOCKABLE (
    BATTLETAG INTEGER NOT NULL,
    NICKNAME VARCHAR2(24) NOT NULL,
    UNLOCKABLE_ID INTEGER NOT NULL,
    UNLOCK_DATE DATE NOT NULL
);

ALTER TABLE PLAYER_UNLOCKABLE ADD CONSTRAINT PLAYERUNLOCKABLE_PK PRIMARY KEY ( BATTLETAG, NICKNAME, UNLOCKABLE_ID );

CREATE TABLE SERVER (
    SERVER_NAME VARCHAR2(24) NOT NULL,
    SERVER_TOTAL_POPULATION INTEGER NOT NULL,
    SERVER_TYPE VARCHAR2(24) NOT NULL,
    SERVER_POPULATION_LIMIT INTEGER NOT NULL
);

ALTER TABLE SERVER ADD CONSTRAINT SERVER_PK PRIMARY KEY ( SERVER_NAME );

CREATE TABLE UNLOCKABLE (
    UNLOCKABLE_ID INTEGER NOT NULL,
    ACHIEVEMENT_NAME VARCHAR2(48),
    UNLOCKABLE_TYPE VARCHAR2(24)
);

ALTER TABLE UNLOCKABLE ADD CONSTRAINT UNLOCKABLE_PK PRIMARY KEY ( UNLOCKABLE_ID );

ALTER TABLE CHARACTER ADD CONSTRAINT CHARACTER_CLASS_FK FOREIGN KEY ( CLASS ) REFERENCES CLASS ( CLASS );

ALTER TABLE CHARACTER ADD CONSTRAINT CHARACTER_SERVER_FK FOREIGN KEY ( SERVER_NAME ) REFERENCES SERVER ( SERVER_NAME );

ALTER TABLE CHARACTER_ITEM ADD CONSTRAINT CHARACTERITEM_CHARACTER_FK FOREIGN KEY ( CHARACTER_NAME, SERVER_NAME ) REFERENCES CHARACTER ( CHARACTER_NAME, SERVER_NAME );

ALTER TABLE CHARACTER_ITEM ADD CONSTRAINT CHARACTERITEM_ITEM_FK FOREIGN KEY ( ITEM_NAME ) REFERENCES ITEM ( ITEM_NAME );

ALTER TABLE COMPANION ADD CONSTRAINT COMPANION_UNLOCKABLE_FK FOREIGN KEY ( UNLOCKABLE_ID ) REFERENCES UNLOCKABLE ( UNLOCKABLE_ID );

ALTER TABLE GUILD ADD CONSTRAINT GUILD_SERVER_FK FOREIGN KEY ( SERVER_NAME ) REFERENCES SERVER ( SERVER_NAME );

ALTER TABLE MOUNT ADD CONSTRAINT MOUNT_UNLOCKABLE_FK FOREIGN KEY ( UNLOCKABLE_ID ) REFERENCES UNLOCKABLE ( UNLOCKABLE_ID );

ALTER TABLE PLAYER_CHARACTER ADD CONSTRAINT PLAYERCHARACTER_CHARACTER_FK FOREIGN KEY ( CHARACTER_NAME, SERVER_NAME ) REFERENCES CHARACTER ( CHARACTER_NAME, SERVER_NAME );

ALTER TABLE PLAYER_CHARACTER ADD CONSTRAINT PLAYERCHARACTER_PLAYER_FK FOREIGN KEY ( BATTLETAG, NICKNAME ) REFERENCES PLAYER ( BATTLETAG, NICKNAME );

ALTER TABLE PLAYER_UNLOCKABLE ADD CONSTRAINT PLAYERUNLOCKABLE_PLAYER_FK FOREIGN KEY ( BATTLETAG, NICKNAME ) REFERENCES PLAYER ( BATTLETAG, NICKNAME );

ALTER TABLE PLAYER_UNLOCKABLE ADD CONSTRAINT PLAYERUNLOCKABLE_UNLOCKABLE_FK FOREIGN KEY ( UNLOCKABLE_ID ) REFERENCES UNLOCKABLE ( UNLOCKABLE_ID );

CREATE OR REPLACE TRIGGER ARC_FKARC_1_MOUNT BEFORE
    INSERT OR UPDATE OF UNLOCKABLE_ID ON MOUNT FOR EACH ROW
DECLARE
    D VARCHAR2(24);
BEGIN
    SELECT
        A.UNLOCKABLE_TYPE INTO D
    FROM
        UNLOCKABLE A
    WHERE
        A.UNLOCKABLE_ID = :NEW.UNLOCKABLE_ID;
    IF ( D IS NULL
    OR D <> 'mount' ) THEN
        RAISE_APPLICATION_ERROR(-20223, 'FK Mount_Unlockable_FK in Table Mount
violates Arc constraint on Table Unlockable - discriminator column unlockable_type
doesn''t have value ''mount''' );
    END IF;
EXCEPTION
    WHEN NO_DATA_FOUND THEN
        NULL;
    WHEN OTHERS THEN
        RAISE;
END;
/

CREATE OR REPLACE TRIGGER ARC_FKARC_1_COMPANION BEFORE
    INSERT OR UPDATE OF UNLOCKABLE_ID ON COMPANION FOR EACH ROW
DECLARE
    D VARCHAR2(24);
BEGIN
    SELECT
        A.UNLOCKABLE_TYPE INTO D
    FROM
        UNLOCKABLE A
    WHERE
        A.UNLOCKABLE_ID = :NEW.UNLOCKABLE_ID;
    IF ( D IS NULL
    OR D <> 'companion' ) THEN
        RAISE_APPLICATION_ERROR(-20223, 'FK Companion_Unlockable_FK in Table
Companion violates Arc constraint on Table Unlockable - discriminator column
unlockable_type doesn''t have value ''companion''' );
    END IF;
EXCEPTION
    WHEN NO_DATA_FOUND THEN
        NULL;
    WHEN OTHERS THEN
        RAISE;
END;