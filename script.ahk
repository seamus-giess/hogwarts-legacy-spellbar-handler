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

; SLOT DATA SETUP
barSlots := Map()
For (barKey, barObject in bars) {
    barSlots[barObject.bind] := Map()

    For (slot, slotData in SLOT_BINDINGS.OwnProps()) {
        barSlots[barObject.bind][slot] := BarSlot(
            slotData.bind,
            barObject,
            Coordinates(
                slotData.xCoordinate,
                slotData.yCoordinate,
            )
        )
    }
}

; QUICKBIND DATA SETUP
spells := Map()
quickbinds := Map()
For (key, quickbindData in SPELL_QUICKBINDS.OwnProps()) {
    spellPosition := Coordinates(
        quickbindData.xCoordinate,
        quickbindData.yCoordinate,
    )
    spells[key] := Spell(spellPosition)

    quickbinds[key] := SpellQuickbind(
        quickbindData.bind,
        spells[key],
        quickBindData || true
    )
}

; TEMP BAR SWAP BISND SETUP
barSwaps := Map()
For (barSlug, bind in TEMPORARY_SWAP_MODIFIERS.OwnProps()) {
    if (!bind) {
        Continue
    }

    barSwaps[barSlug] := SwapBarKeybind(bind, bars[barSlug])
}
