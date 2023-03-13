class BarSlot {
    __New(bind, bar, slotPosition)
    {
        this.bind := bind
        this.bar := bar
        this.slotPosition := slotPosition

        this.selectionSlotPosition := Coordinates(
            SPELL_SELECTION_SLOT_X[this.bind],
            SPELL_SELECTION_BAR_Y[this.bar.bind],
        )
    }

    pageTo()
    {
        this.bar.pageTo()
    }

    dropHere()
    {
        this.selectionSlotPosition.dropHere()
    }

    putSpellHere(spell)
    {
        pressedKeys := getPressedMovementKeys()

        ; Open spell select menu
        spellSelectionKey := "{" . SPELL_SELECTION_BIND . "}"
        Send(spellSelectionKey)
        Sleep(25)

        spell.pickup()
        this.dropHere()

        Send(spellSelectionKey)

        repressKeys(pressedKeys)
    }

    press()
    {
        bind := "{" . this.bind . "}"
        Send(bind)
    }
}