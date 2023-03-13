; ----------------------
; STUFF YOU SHOULD CHECK/REBIND
; ----------------------

; This prevents the keybinds from activating
; outside of the intended application
ALLOWED_APPLICATONS := [
    "Hogwarts Legacy",
    "hogwarts-legacy-spellbar-handler",
]

; Set this to the bind you use to open your spell selection menu
SPELL_SELECTION_BIND := "T"
; Hogwarts Legacy bugs bars if you move too many spells and close
; with the same key you use to open the selection menu
; don't ask me why :/
CLOSE_SELECTION_BIND := "Esc"

; This array will be used for binds to
; resume movement if you continue to hold the bind down
; Only applicable for certain binds,
; include all keys you press to move here
MOVEMENT_KEYS := [
    "S",
    "D",
    "F",
    "E",
    "LShift",
]

; Specify Hogwarts Legacy's binding for each specific spellbar
; x and y coordinate are of diamonds right of bar (when not in spell select)
; coordinates are used to determining what is currently active bar
; as well as what bars are unlocked
; coordinates are based on 1920x1080 display, recalibrate with window spy
BAR_BINDINGS := {
    Numpad1: {
        bind: "Numpad1",
        xCoordinate: 1896,
        yCoordinate: 864,
        unlocked: true,
    },
    Numpad2: {
        bind: "Numpad2",
        xCoordinate: 1896,
        yCoordinate: 884,
        unlocked: false,
    },
    Numpad3: {
        bind: "Numpad3",
        xCoordinate: 1896,
        yCoordinate: 904,
        unlocked: false,
    },
    Numpad4: {
        bind: "Numpad4",
        xCoordinate: 1896,
        yCoordinate: 924,
        unlocked: false,
    },
}

; Correlates slots (1-4) to their keybindings,
; slots are object structures in case of
; future extensions to data
SLOT_BINDINGS := {
    1: {
        bind: "1"
    },
    2: {
        bind: "2"
    },
    3: {
        bind: "3"
    },
    4: {
        bind: "4"
    },
}

; --------------
; KEYBIND CONFIG
; --------------

; Used for "modifier" map controls
; while holding the key down, swaps to another bar
; attempts to swap back on release
; (I don't handle alt-tab super well, sorry)
TEMPORARY_SWAP_MODIFIERS := {
    ; Numpad1: false,
    ; Numpad2: false,
    Numpad3: "LAlt",
    Numpad4: "LCtrl",
}

; Specify spellbar cycling/swapping keybinds (and bars) to be set
; if BAR_CYCLE_KEY is not set, this feature is disabled
BAR_CYCLE_KEY := "``" ; backtick
BAR_CYCLE_BARS := [
    "Numpad1",
    "Numpad2",
]

; Set hot-swapping keybinds
; Spell hot-swapping swaps the spells
; into the fourth slot of your lowest bar
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

; Configure spell layouts, outer object key is the
; bind to use, inner key is the bar identifier
SLOTS_FILL_BINDS := {
    Numpad5: {
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
}


; ----------------------------------------------------
; STUFF TO RECALIBRATE IF YOUR MONITOR ISN'T 1920x1080
; ----------------------------------------------------

; Use "Window Spy" to recalibrate
; (I recommend using steam overlay)

; Used for moving spells to bars
SPELL_SELECTION_BARS_Y := Map(
    "Numpad1", 200,
    "Numpad2", 350,
    "Numpad3", 500,
    "Numpad4", 650,
)
SPELL_SELECTION_BARS_SLOT_X := Map(
    "1", 140,
    "2", 267,
    "3", 395,
    "4", 517,
)
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

; ---------------------------------------------
; STUFF TO DOUBLE CHECK IF BARS ARE BEIND WEIRD
; ---------------------------------------------

; This is used for screen reader logic
; get the values if the keybinds don't
; work by using AHK's "Window Spy"
BAR_STATE_COLORS := {
    current: "0xE1E1E2",
    unlocked: "0x858585",
    locked: "0x1A1A1A",
}

; ---------------------------------------------
; DON'T TOUCH THIS UNLESS DLC COMES OUT PERHAPS
; ---------------------------------------------

; Used for moving spells shouldn't
; need to touch this unless new spells
; are added
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
