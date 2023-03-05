; Specify Hogwarts Legacy's binding for each specific spellbar
BAR_BINDINGS := Map(
    "bar1", F1,
    "bar2", F2,
    "bar3", F3,
    "bar4", F4,
)

; Specify spellbar cycling/swapping keybinds (and bars) to be set
; if BAR_CYCLE_KEY is not set, this feature is disabled
BAR_CYCLE_KEY := ` ; backtick
BAR_CYCLE_BARS := [
    "bar1",
    "bar2",
]

; if a bar has a falsey value (or not assigned), it is skipped
BAR_TEMPORARY_SWAP_MODIFIERS := Map(
    "bar1", ,
    "bar2", ,
    "bar3", LAlt,
    "bar4", ,
)

; Set hot-swapping keybinds
; Spell hot-swapping swaps the spells into the fourth slot of your lowest bar
SPELL_HOTSWAP_BINDS := Map(
    "lumos", A,
    "reparo", ,
    "disillusionment", C,
    "wingardium_leviosa", ,
)
