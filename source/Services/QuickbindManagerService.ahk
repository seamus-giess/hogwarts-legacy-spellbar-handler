; This could probably be an array, but don't
; want to overengineer this early
currentQuickbind := false

isQuickbindCurrent(quickbind)
{
    global currentQuickbind

    return quickbind = currentQuickbind
}

unsetQuickbind()
{
    global currentQuickbind

    currentQuickbind := false
}

setCurrentQuickbind(slot, spell, castOnSet)
{
    global currentQuickbind

    BlockInput(true)

    ; Move spell to slot
    slot.putSpellHere(spell)

    ; TODO update quickspell global state
    currentQuickbind := spell
    
    BlockInput(false)

    if (!castOnSet) {
        return
    }

    useQuickbindSlot(slot)
}

useQuickbindSlot(slot)
{
    originalBar := getCurrentBar()
    
    slot.pageTo()
    sleep(10)

    ; TODO cast spell
    slot.press()
    sleep(10)

    ; TODO swap back to previous bar
    originalBar.pageTo()
}
