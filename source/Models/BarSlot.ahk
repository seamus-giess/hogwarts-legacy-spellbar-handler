class BarSlot {
    __New(bind, bar)
    {
        this.bind := bind
        this.bar := bar

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
        spell.pickup()
        this.dropHere()
    }

    press()
    {
        bind := "{" . this.bind . "}"
        Send(bind)
    }
}