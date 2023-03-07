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
        global barSlots

        latestUnlockedBar := getLatestUnlockedBar()

        slot := barSlots[latestUnlockedBar.bind]["4"]

        if (!this.isAllowed()) {
            return
        }

        if (isQuickbindCurrent(this.spell)) {

            useQuickbindSlot(slot)
            return
        }

        setCurrentQuickbind(slot, this.spell, this.castOnSet)
    }
}