ALLOWED_APPLICATONS := [
    "Hogwarts Legacy",
    "hogwarts-legacy-spellbar-handler",
]

SPELL_SELECTION_BIND := "T"

MOVEMENT_KEYS := [
    "S",
    "D",
    "F",
    "E",
    "LShift",
]

BAR_STATE_COLORS := {
    current: "0xE1E1E2",
    unlocked: "0x858585",
    locked: "0x1A1A1A",
}

SLOT_BINDINGS := {
    1: {bind: "1", xCoordinate: 1896, yCoordinate: 864},
    2: {bind: "2", xCoordinate: 1896, yCoordinate: 884},
    3: {bind: "3", xCoordinate: 1896, yCoordinate: 904},
    4: {bind: "4", xCoordinate: 1896, yCoordinate: 924},
}

; Specify Hogwarts Legacy's binding for each specific spellbar
BAR_BINDINGS := {
    Numpad1: {bind: "Numpad1", xCoordinate: 1896, yCoordinate: 864, unlocked: true},
    Numpad2: {bind: "Numpad2", xCoordinate: 1896, yCoordinate: 884, unlocked: false},
    Numpad3: {bind: "Numpad3", xCoordinate: 1896, yCoordinate: 904, unlocked: false},
    Numpad4: {bind: "Numpad4", xCoordinate: 1896, yCoordinate: 924, unlocked: false},
}

SPELL_SELECTION_BAR_Y := Map(
    "Numpad1", 200,
    "Numpad2", 350,
    "Numpad3", 500,
    "Numpad4", 650,
)
SPELL_SELECTION_SLOT_X := Map(
    "1", 140,
    "2", 267,
    "3", 395,
    "4", 517,
)

; Specify spellbar cycling/swapping keybinds (and bars) to be set
; if BAR_CYCLE_KEY is not set, this feature is disabled
BAR_CYCLE_KEY := "``" ; backtick
BAR_CYCLE_BARS := [
    "Numpad1",
    "Numpad2",
]

; if a bar has a falsey value (or not assigned), it is skipped
TEMPORARY_SWAP_MODIFIERS := {
    ; F1: false,
    ; F2: false,
    Numpad3: "LAlt",
    Numpad4: "LCtrl",
}

SPELL_SELECTION_ROW := {
    1: 160,
    2: 280,
    3: 400,
    4: 520,
    5: 640,
    6: 760,
}

SPELL_SELECTION_COLUMN := {
    1: 770,
    2: 890,
    3: 1010,
    4: 1130,
}

SPELL_SELECTION_SLOTS := {
    arresto_memomentum: {
        row: "1",
        column: "1",
    },
    glacius: {
        row: "1",
        column: "2",
    },
    levioso: {
        row: "1",
        column: "3",
    },
    transformation: {
        row: "1",
        column: "4",
    },
    accio: {
        row: "2",
        column: "1",
    },
    depulso: {
        row: "2",
        column: "2",
    },
    descendo: {
        row: "2",
        column: "3",
    },
    flipendo: {
        row: "2",
        column: "4",
    },
    confringo: {
        row: "3",
        column: "1",
    },
    diffindo: {
        row: "3",
        column: "2",
    },
    expelliarmus: {
        row: "3",
        column: "3",
    },
    bombarda: {
        row: "3",
        column: "4",
    },
    incendio: {
        row: "4",
        column: "1",
    },
    disillusionment: {
        row: "4",
        column: "2",
    },
    lumos: {
        row: "4",
        column: "3",
    },
    reparo: {
        row: "4",
        column: "4",
    },
    wingardium_leviosa: {
        row: "5",
        column: "1",
    },
    conjuring_spell: {
        row: "5",
        column: "2",
    },
    altering_spell: {
        row: "5",
        column: "3",
    },
    evanesco: {
        row: "5",
        column: "4",
    },
    avada_kedavra: {
        row: "6",
        column: "1",
    },
    crucio: {
        row: "6",
        column: "2",
    },
    imperio: {
        row: "6",
        column: "3",
    },
}

; Set hot-swapping keybinds
; Spell hot-swapping swaps the spells into the fourth slot of your lowest bar
SPELL_QUICKBINDS := {
    lumos: {
        bind: "A",
        ; castOnSet: true
    },
    reparo: {
        bind: "H",
        ; castOnSet: true
    },
    disillusionment: {
        bind: "C",
        ; castOnSet: true
    },
    wingardium_leviosa: {
        bind: false,
        ; cazstOnSet: true
    },
    conjuring_spell: {
        bind: "F1",
        delay: 1000,
        ; cazstOnSet: true
    },
    altering_spell: {
        bind: "F2",
        delay: 1000,
        ; cazstOnSet: true
    },
    evanesco: {
        bind: "F3",
        delay: 1000,
        ; cazstOnSet: true
    }
}

SLOTS_FILL := {
    Numpad1: {
        1: "diffindo",
        2: "levioso",
        3: "accio",
        4: "expelliarmus",
    },
    Numpad2: {
        1: "incendio",
        2: "flipendo",
        3: "depulso",
        4: "confringo",
    },
}