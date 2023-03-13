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

setCurrentQuickbind(slot, spell, castOnSet, delay := 1)
{
    global currentQuickbind

    BlockInput(true)

    ; Move spell to slot
    pressedKeys := getPressedMovementKeys()

    ; Open spell select menu
    spellSelectionKey := "{" . SPELL_SELECTION_BIND . "}"
    Send(spellSelectionKey)
    Sleep(25)

    slot.putSpellHere(spell)

    Send(spellSelectionKey)
    repressKeys(pressedKeys)

    ; TODO update quickspell global state
    currentQuickbind := spell
    
    BlockInput(false)

    if (!castOnSet) {
        return
    }

    useQuickbindSlot(slot, delay)
}

useQuickbindSlot(slot, delay := 1)
{
    originalBar := getCurrentBar()
    
    if (originalBar = slot.bar) {
        slot.press()
        return
    }

    ; wait for previous actions to end
    sleep(50)
    
    slot.pageTo()
    sleep(50)

    ; TODO cast spell
    slot.press()
    sleep(delay)

    ; TODO swap back to previous bar
    originalBar.pageTo()
}
