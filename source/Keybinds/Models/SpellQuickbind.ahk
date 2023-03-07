class SpellQuickbind extends AppKeybind {
    __New(bind, targetSpell, castOnSet := true)
    {
        this.bind := bind
        this.spell := targetSpell
        this.castOnSet := castOnSet

        this.isCurrentQuickSpell := false
             
        actionBind := "~" . this.bind
        this.initializeHotkey(actionBind, "doAction")
    }

    doAction()
    {
        bar := getLatestUnlockedBar
        quickslot := Slot(bar, 0, 0)

        if (!this.isAllowed()) {
            return
        }

        if (isQuickbindCurrent(this.spell)) {

            useQuickbindSlot(quickslot)
            return
        }

        setCurrentQuickbind(quickslot, this.spell, this.castOnSet)
    }
}