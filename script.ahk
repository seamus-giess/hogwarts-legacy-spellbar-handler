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
    spellPosition := getSpellCoordinates(key)
    spells[key] := Spell(spellPosition)

    quickbinds[key] := SpellQuickbind(
        quickbindData.bind,
        spells[key],
        hasProp(quickBindData, "castOnSet") ? quickBindData.castOnSet : true,
        hasProp(quickBindData, "delay") ? quickBindData.delay : 1
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

; CREATE BAR CYCLE LOOP
barCycle := []
For (barBind in BAR_CYCLE_BARS) {
    barCycle.push(bars[barBind])
}
CycleBind := BarCycleBind(BAR_CYCLE_KEY, barCycle)
