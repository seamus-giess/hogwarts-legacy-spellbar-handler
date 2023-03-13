class FillSlotsBind extends AppKeybind {
    __New(bind, rows) {
        this.rows := rows
        this.bind := bind

        acitonBind := "~" . this.bind
        this.initializeHotkey(acitonBind, "action")
    }

    action()
    {
        global barSlots
        global spells

        if (!this.isAllowed()) {
            return
        }

        pressedKeys := getPressedMovementKeys()

        ; Open spell select menu
        spellSelectionKey := "{" . SPELL_SELECTION_BIND . "}"
        Send(spellSelectionKey)
        Sleep(25)

        For (rowKey, rowSpells in this.rows.OwnProps()) {
            For (columnKey, spellKey in rowSpells.OwnProps()) {
                slot := barSlots[rowKey][columnKey]
                spell := spells[spellKey]

                slot.putSpellHere(spell)
            }
        }
        
        breakSelectionKey := "{" . CLOSE_SELECTIONB_BIND . "}"
        Send(breakSelectionKey)
        repressKeys(pressedKeys)
    }
}
