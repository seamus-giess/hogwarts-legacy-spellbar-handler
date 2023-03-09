class SpellQuickbind extends AppKeybind {
    __New(bind, targetSpell, castOnSet := true, delay := 1)
    {
        this.bind := bind
        this.spell := targetSpell
        this.castOnSet := castOnSet
        this.delay := delay

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

            useQuickbindSlot(slot, this.delay)
            return
        }

        setCurrentQuickbind(slot, this.spell, this.castOnSet, this.delay)
    }
}