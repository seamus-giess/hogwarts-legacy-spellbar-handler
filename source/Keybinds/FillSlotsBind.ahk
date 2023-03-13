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

        pressedKeys := getPressedMovementKeys()

        ; Open spell select menu
        spellSelectionKey := "{" . SPELL_SELECTION_BIND . "}"
        Send(spellSelectionKey)
        Sleep(25)

        For (rowKey, rowSpells in this.rows.OwnProps()) {
            For (columnKey, spellKey in rowSpells.OwnProps()) {
                slot := barSlots[rowKey][columnKey]
                try {
                    spell := spells[spellKey]
                } catch Error as err {
                    MsgBox(spellKey)
                    continue
                }

                slot.putSpellHere(spell)
            }
        }
        
        Send(spellSelectionKey)
        repressKeys(pressedKeys)
    }
}
