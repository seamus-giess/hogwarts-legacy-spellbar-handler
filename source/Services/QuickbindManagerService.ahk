; This could probably be an array, but don't
; want to overengineer this early
currentQuickbind := false

isQuickbindCurrent(quickbind)
{
    return quickbind = currentQuickbind
}

setCurrentQuickbind(quickslot, spell, castOnSet)
{
    quickslot.pageTo()

    ; TODO open spell select menu
    spellSelectionKey := "{" . SPELL_SELECTION_BIND . "}"
    Send(spellSelectionKey)

    ; TODO move to this.spell

    ; TODO pick up spell

    ; TODO move to specified spellbar slot

    ; TODO drop spell

    ; TODO update quickspell global state

    ; TODO swap back to previous bar
    

    if (!castOnSet) {
        return
    }

    useQuickbindSlot(quickslot)
}

useQuickbindSlot(slot)
{
    ; TODO swap to bar

    ; TODO cast spell

    ; TODO swap back to previous bar
}
