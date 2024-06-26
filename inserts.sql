INSERT INTO CHARACTER (
    CHARACTER_NAME,
    SERVER_NAME,
    LVL,
    RACE,
    CLASS,
    FACTION,
    PROFESSION,
    PROFESSION_LVL,
    GUILD,
    GOLD,
    PVP_RATING,
    TITLE
) VALUES (
    'Godfrid',
    'Darnassus',
    45,
    'Human',
    'Warrior',
    'Alliance',
    'Blacksmith',
    80,
    'Argent Crusade',
    23211,
    1200,
    'Champion of the Alliance'
);

INSERT INTO CHARACTER (
    CHARACTER_NAME,
    SERVER_NAME,
    LVL,
    RACE,
    CLASS,
    FACTION,
    PROFESSION,
    PROFESSION_LVL,
    GUILD,
    GOLD,
    PVP_RATING,
    TITLE
) VALUES (
    'MALFURIONN',
    'ARGENT DAWN',
    72,
    'NIGHT ELF',
    'HUNTER',
    'ALLIANCE',
    'ALCHEMIST',
    160,
    'METHOD',
    35000,
    1342,
    'LOREMASTER'
);

INSERT INTO CHARACTER (
    CHARACTER_NAME,
    SERVER_NAME,
    LVL,
    RACE,
    CLASS,
    FACTION,
    PROFESSION,
    PROFESSION_LVL,
    GUILD,
    GOLD,
    PVP_RATING,
    TITLE
) VALUES (
    'GODPEON',
    'BLACK HAND',
    15,
    'ORC',
    'MAGE',
    'HORDE',
    'JEWELER',
    10,
    'THE BOYS',
    211,
    150,
    'NOVICE'
);

INSERT INTO CLASS (
    CLASS,
    MAIN_STAT,
    ARMORCLASS
) VALUES (
    'WARRIOR',
    'STRENGTH',
    'PLATE'
);

INSERT INTO CLASS (
    CLASS,
    MAIN_STAT,
    ARMORCLASS
) VALUES (
    'MAGE',
    'INTELLIGENCE',
    'CLOTH'
);

INSERT INTO CLASS (
    CLASS,
    MAIN_STAT,
    ARMORCLASS
) VALUES (
    'HUNTER',
    'AGILITY',
    'LEATHER'
);

INSERT INTO UNLOCKABLE (
    UNLOCKABLE_ID,
    ACHIEVEMENT_NAME,
    UNLOCKABLE_TYPE
) VALUES (
    1221,
    'HERO OF THE ALLIANCE',
    'TITLE'
);

INSERT INTO UNLOCKABLE (
    UNLOCKABLE_ID,
    ACHIEVEMENT_NAME,
    UNLOCKABLE_TYPE
) VALUES (
    252,
    'GLADIATOR',
    'TITLE'
);

INSERT INTO UNLOCKABLE (
    UNLOCKABLE_ID,
    ACHIEVEMENT_NAME,
    UNLOCKABLE_TYPE
) VALUES (
    31,
    'DRAGON SLAYER',
    'ACHIEVEMENT'
);

INSERT INTO GUILD (
    GUILD,
    SERVER_NAME,
    GUILD_LVL,
    GUILD_MEMBERS_AMOUNT,
    GUILD_MESSAGE
) VALUES (
    'ARGENT CRUSADE',
    'DARNASSUS',
    3,
    50,
    'STRATHOLME MUST BE PURGED!'
);

INSERT INTO GUILD (
    GUILD,
    SERVER_NAME,
    GUILD_LVL,
    GUILD_MEMBERS_AMOUNT,
    GUILD_MESSAGE
) VALUES (
    'METHOD',
    'ARGENT DAWN',
    2,
    253,
    'something'
);

INSERT INTO GUILD (
    GUILD,
    SERVER_NAME,
    GUILD_LVL,
    GUILD_MEMBERS_AMOUNT,
    GUILD_MESSAGE
) VALUES (
    'THE BOYS',
    'BLACK HAND',
    4,
    550,
    'CHILLIN WITH THE BOYS.'
);

INSERT INTO ITEM (
    ITEM_NAME,
    ITEM_LVL,
    PRIM_ATTR,
    SEC_ATTR,
    TERT_ATTR,
    PRIM_COMBAT_ATTR,
    SEC_COMBAT_ATTR,
    TERT_COMBAT_ATTR,
    DPS,
    ATTACK_SPEED,
    MAX_DURABILITY
) VALUES (
    'COPPER SWORD',
    20,
    'STRENGTH',
    'STAMINA',
    'AGILITY',
    'ATTACK POWER',
    'CRITICAL STRIKE',
    'HASTE',
    150,
    20,
    200
) INSERT INTO ITEM (
    ITEM_NAME,
    ITEM_LVL,
    PRIM_ATTR,
    SEC_ATTR,
    TERT_ATTR,
    PRIM_COMBAT_ATTR,
    SEC_COMBAT_ATTR,
    TERT_COMBAT_ATTR,
    DPS,
    ATTACK_SPEED,
    MAX_DURABILITY
) VALUES (
    'ARCANITE REAPER',
    122,
    'STRENGTH',
    'STAMINA',
    'INTELLECT',
    'ATTACK POWER',
    'CRITICAL STRIKE',
    'LEECH',
    432,
    40,
    150
) INSERT INTO ITEM (
    ITEM_NAME,
    ITEM_LVL,
    PRIM_ATTR,
    SEC_ATTR,
    TERT_ATTR,
    PRIM_COMBAT_ATTR,
    SEC_COMBAT_ATTR,
    TERT_COMBAT_ATTR,
    DPS,
    ATTACK_SPEED,
    MAX_DURABILITY
) VALUES (
    'SULFURAS',
    530,
    'STRENGTH',
    'STAMINA',
    'AGILITY',
    'ATTACK POWER',
    'CRITICAL STRIKE',
    'HASTE',
    150,
    20
) INSERT INTO CHARACTER_ITEM (
    CHARACTER_NAME,
    SERVER_NAME,
    ITEM_NAME
) VALUES (
    'GODFRID',
    'DARNASSUS',
    'COPPER SWORD'
);

INSERT INTO CHARACTER_ITEM (
    CHARACTER_NAME,
    SERVER_NAME,
    ITEM_NAME
) VALUES (
    'MALFURIONN',
    'ARGENT DAWN',
    'ARCANITE REAPER'
);

INSERT INTO CHARACTER_ITEM (
    CHARACTER_NAME,
    SERVER_NAME,
    ITEM_NAME
) VALUES (
    'GODPEON',
    'BLACK HAND',
    'SULFURAS'
);

INSERT INTO PLAYER_CHARACTER (
    BATTLETAG,
    NICKNAME,
    CHARACTER_NAME,
    SERVER_NAME
) VALUES (
    2433,
    'ZYSTRR0',
    'GODFRID',
    'DARNASSUS'
);

INSERT INTO PLAYER_CHARACTER (
    BATTLETAG,
    NICKNAME,
    CHARACTER_NAME,
    SERVER_NAME
) VALUES (
    2541,
    'GGHOST22',
    'MALFURIONN',
    'ARGENT DAWN'
);

INSERT INTO PLAYER_CHARACTER (
    BATTLETAG,
    NICKNAME,
    CHARACTER_NAME,
    SERVER_NAME
) VALUES (
    4449,
    'SHARKZZ',
    'GODPEON',
    'BLACK HAND'
);

INSERT INTO SERVER (
    SERVER_NAME,
    SERVER_TOTAL_POPULATION,
    SERVER_TYPE,
    SERVER_POPULATION_LIMIT
) VALUES(
    'DARNASSUS',
    3793,
    'PVE',
    10000
);

INSERT INTO SERVER (
    SERVER_NAME,
    SERVER_TOTAL_POPULATION,
    SERVER_TYPE,
    SERVER_POPULATION_LIMIT
) VALUES(
    'BLACK HAND',
    1231,
    'PVP',
    5000
);

INSERT INTO SERVER (
    SERVER_NAME,
    SERVER_TOTAL_POPULATION,
    SERVER_TYPE,
    SERVER_POPULATION_LIMIT
) VALUES(
    'ARGENT DAWN',
    7521,
    'RP',
    10000
);

INSERT INTO PLAYER (
    BATTLETAG,
    NICKNAME,
    SUBSCRIPTION_END_DATE,
    BALANCE,
    FIRST_NAME,
    LAST_NAME,
    EMAIL_ADDRESS
) VALUES (
    2433,
    'ZYSTRR0',
    TO_DATE('22-10- 2023', 'DD-MM-YYYY'),
    100.00,
    'JOHN',
    'DOE',
    'JOHNDOE@EXAMPLE.COM'
);

INSERT INTO PLAYER (
    BATTLETAG,
    NICKNAME,
    SUBSCRIPTION_END_DATE,
    BALANCE,
    FIRST_NAME,
    LAST_NAME,
    EMAIL_ADDRESS
) VALUES (
    2541,
    'GGHOST22',
    TO_DATE('28-09- 2023', 'DD-MM-YYYY'),
    200.00,
    'JANE',
    'SMITH',
    'JANESMITH@EXAMPLE.COM'
);

INSERT INTO PLAYER (
    BATTLETAG,
    NICKNAME,
    SUBSCRIPTION_END_DATE,
    BALANCE,
    FIRST_NAME,
    LAST_NAME,
    EMAIL_ADDRESS
) VALUES (
    4449,
    'SHARKZZ',
    TO_DATE('21-02- 2023', 'DD-MM-YYYY'),
    150.00,
    'BOB',
    'JOHNSON',
    'BOBJOHNSON@EXAMPLE.COM'
);

INSERT INTO COMPANION (
    UNLOCKABLE_ID,
    ACHIEVEMENT_NAME,
    UNLOCKABLE_TYPE,
    COMPANION_NAME,
    COMPANION_PG_NAME,
    COMPANION_ELEMENT,
    COMPANION_LVL,
    COMPANION_HP,
    COMPANION_DPS,
    DROP_SOURCE
) VALUES (
    1100,
    NULL,
    'COMPANION',
    'TINY GRYPHON',
    'GRF',
    'AIR',
    20,
    2000,
    500,
    'ONYXIA'
);

INSERT INTO COMPANION (
    UNLOCKABLE_ID,
    ACHIEVEMENT_NAME,
    UNLOCKABLE_TYPE,
    COMPANION_NAME,
    COMPANION_PG_NAME,
    COMPANION_ELEMENT,
    COMPANION_LVL,
    COMPANION_HP,
    COMPANION_DPS,
    DROP_SOURCE
) VALUES (
    1110,
    'LIFE AND DEATH',
    'COMPANION',
    'EMERALD DRAGON',
    'DRAKE',
    'NATURE',
    13,
    1920,
    420,
    'ALEXSTRAZA'
);

INSERT INTO COMPANION (
    UNLOCKABLE_ID,
    ACHIEVEMENT_NAME,
    UNLOCKABLE_TYPE,
    COMPANION_NAME,
    COMPANION_PG_NAME,
    COMPANION_ELEMENT,
    COMPANION_LVL,
    COMPANION_HP,
    COMPANION_DPS,
    DROP_SOURCE
) VALUES (
    1112,
    NULL,
    'COMPANION',
    'RAT',
    'BIGGIECHEESE',
    'WATER',
    11,
    900,
    133,
    'RAT GOD'
);

INSERT INTO MOUNT (
    UNLOCKABLE_ID,
    ACHIEVEMENT_NAME,
    UNLOCKABLE_TYPE,
    MOUNT_NAME,
    DROP_SOURCE
) VALUES (
    221,
    NULL,
    'MOUNT',
    'GIANT COLDSNOUT',
    "INVADER'S FORGOTTEN TREASURE"
);

INSERT INTO MOUNT (
    UNLOCKABLE_ID,
    ACHIEVEMENT_NAME,
    UNLOCKABLE_TYPE,
    MOUNT_NAME,
    DROP_SOURCE
) VALUES (
    223,
    NULL,
    'MOUNT',
    'TUNDRA ICEHOOF',
    'FROST GIANT FORTRESS'
);

INSERT INTO MOUNT (
    UNLOCKABLE_ID,
    ACHIEVEMENT_NAME,
    UNLOCKABLE_TYPE,
    MOUNT_NAME,
    DROP_SOURCE
) VALUES (
    331,
    'GOD SURGE',
    'MOUNT',
    'THUNDERBIRD',
    'PLAINS OF THE THUNDERLORD'
);

INSERT INTO PLAYER_UNLOCKABLE (
    BATTLETAG,
    NICKNAME,
    UNLOCKABLE_ID,
    UNLOCK_DATE
) VALUES (
    2433,
    'ZYSTRR0',
    1112,
    TO_DATE('21-03- 2022', 'DD-MM-YYYY')
);

INSERT INTO PLAYER_UNLOCKABLE (
    BATTLETAG,
    NICKNAME,
    UNLOCKABLE_ID,
    UNLOCK_DATE
) VALUES (
    2541,
    'GGHOST22',
    2,
    TO_DATE('01-02- 2022', 'DD-MM-YYYY')
);

INSERT INTO PLAYER_UNLOCKABLE (
    BATTLETAG,
    NICKNAME,
    UNLOCKABLE_ID,
    UNLOCK_DATE
) VALUES (
    4449,
    'SHARKZZ',
    3,
    TO_DATE('22-05- 2022', 'DD-MM-YYYY')
);