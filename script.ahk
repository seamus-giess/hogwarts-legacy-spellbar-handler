#Include configuration.ahk
#Include source/_index.ahk

; Handler to prevent multiple modifiers from overlapping
currentActiveBind := false

; BAR DATA SETUP
bars := Map()
For (key, barData in BAR_BINDINGS.OwnProps()) {
    bars[key] := Bar(
        barData.bind,
        barData.xCoordinate,
        barData.yCoordinate,
        barData.unlocked
    )
}

; QUICKSLOT DATA SETUP
spells := Map()
quickbinds := Map()
For (key, spellData in SPELL_QUICKBINDS.OwnProps()) {
    spells[key] := Spell(
        spellData.xCoordinate,
        spellData.yCoordinate,
    )

    quickbinds[key] := SpellQuickbind(spellData.bind, spells[key])
}

; TEMP BAR SWAP BISND SETUP
barSwaps := Map()
For (barSlug, bind in TEMPORARY_SWAP_MODIFIERS.OwnProps()) {
    if (!bind) {
        Continue
    }

    barSwaps[barSlug] := SwapBarKeybind(bind, bars[barSlug])
    barSwaps[barSlug].initialiseHotkeys()
}
