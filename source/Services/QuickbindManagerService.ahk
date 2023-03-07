; This could probably be an array, but don't
; want to overengineer this early
currentQuickbind := false

isQuickbindCurrent(quickbind)
{
    return quickbind = currentQuickbind
}

setCurrentQuickbind(spell)
{
    ; Innitialize slot
    bar := getLatestUnlockedBar
    slot := Slot(bar, 4)

    slot.pageTo()

    ; TODO open spell select menu
    spellSelectionKey = "{" . SPELL_SELECTION_BIND . "}"
    Send(spellSelectionKey)

    ; TODO move to this.spell

    ; TODO pick up spell

    ; TODO move to specified spellbar slot

    ; TODO drop spell

    ; TODO update quickspell global state

    ; TODO swap back to previous bar
}

useQuickbindSlot(slot)
{
    ; TODO swap to bar

    ; TODO cast spell

    ; TODO swap back to previous bar
}
