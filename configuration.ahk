ALLOWED_APPLICATONS := [
    "Hogwarts Legacy",
    "hogwarts-legacy-spellbar-handler",
]

BAR_STATE_COLORS := {
    current: "0xE1E1E2",
    unlocked: "0x858585",
    locked: "0x1A1A1A",
}

; Specify Hogwarts Legacy's binding for each specific spellbar
BAR_BINDINGS := {
    bar_1: {bind: "F1", xCoordinate: 1896, yCoordinate: 864, unlocked: true},
    bar_2: {bind: "F2", xCoordinate: 1896, yCoordinate: 884, unlocked: false},
    bar_3: {bind: "F3", xCoordinate: 1896, yCoordinate: 904, unlocked: false},
    bar_4: {bind: "F4", xCoordinate: 1896, yCoordinate: 924, unlocked: false},
}

; Specify spellbar cycling/swapping keybinds (and bars) to be set
; if BAR_CYCLE_KEY is not set, this feature is disabled
BAR_CYCLE_KEY := "``" ; backtick
BAR_CYCLE_BARS := [
    "bar_1",
    "bar_2",
]

; if a bar has a falsey value (or not assigned), it is skipped
TEMPORARY_SWAP_MODIFIERS := {
    ; bar_1: false,
    ; bar_2: false,
    bar_3: "LAlt",
    bar_2: "LCtrl",
}

; Set hot-swapping keybinds
; Spell hot-swapping swaps the spells into the fourth slot of your lowest bar
SPELL_QUICKBINDS := {
    lumos: {
        bind: "A",
        xCoordinate: 0,
        yCoordinate: 0,
        ; castOnSet: true
    },
    reparo: {
        bind: false,
        xCoordinate: 0,
        yCoordinate: 0,
        ; castOnSet: true
    },
    disillusionment: {
        bind: "C",
        xCoordinate: 0,
        yCoordinate: 0,
        ; castOnSet: true
    },
    wingardium_leviosa: {
        bind: false,
        xCoordinate: 0,
        yCoordinate: 0,
        ; castOnSet: true
    },
}
