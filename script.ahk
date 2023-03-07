#Include configuration.ahk
#Include source/_index.ahk

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

; QUICKBIND DATA SETUP
spells := Map()
quickbinds := Map()
For (key, quickbindData in SPELL_QUICKBINDS.OwnProps()) {
    spells[key] := Spell(
        quickbindData.xCoordinate,
        quickbindData.yCoordinate,
    )

    castOnSet := IsSet(quickbindData.castOnSet)
        ? quickbindData.castOnSet
        : true
    quickbinds[key] := SpellQuickbind(quickbindData.bind, spells[key], castOnSet)
}

; TEMP BAR SWAP BISND SETUP
barSwaps := Map()
For (barSlug, bind in TEMPORARY_SWAP_MODIFIERS.OwnProps()) {
    if (!bind) {
        Continue
    }

    barSwaps[barSlug] := SwapBarKeybind(bind, bars[barSlug])
}
