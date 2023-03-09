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

; Set hot-swapping keybinds
; Spell hot-swapping swaps the spells into the fourth slot of your lowest bar
SPELL_QUICKBINDS := {
    lumos: {
        bind: "A",
        xCoordinate: 1010,
        yCoordinate: 524,
        ; castOnSet: true
    },
    reparo: {
        bind: "H",
        xCoordinate: 1128,
        yCoordinate: 524,
        ; castOnSet: true
    },
    disillusionment: {
        bind: "C",
        xCoordinate: 891,
        yCoordinate: 524,
        ; castOnSet: true
    },
    wingardium_leviosa: {
        bind: false,
        xCoordinate: 0,
        yCoordinate: 0,
        ; cazstOnSet: true
    },
    conjuring_spell: {
        bind: "F1",
        xCoordinate: 891,
        yCoordinate: 644,
        delay: 1000,
        ; cazstOnSet: true
    },
    altering_spell: {
        bind: "F2",
        xCoordinate: 1010,
        yCoordinate: 644,
        delay: 1000,
        ; cazstOnSet: true
    },
    evanesco: {
        bind: "F3",
        xCoordinate: 1128,
        yCoordinate: 644,
        delay: 1000,
        ; cazstOnSet: true
    }
}
