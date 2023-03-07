class SpellQuickbind extends AppKeybind {
    __New(bind, targetSpell, castOnSet := true)
    {
        this.bind := bind
        this.spell := targetSpell
        this.castOnSet := true

        this.isCurrentQuickSpell := false

        
        actionBind := "~" . this.bind
        this.initializeHotkey(actionBind, "doAction")
    }

    doAction()
    {
        if (isQuickbindCurrent(this.spell)) {
            this.castQuickSpell()
            return
        }

        setCurrentQuickbind(,this.spell)

        if (!this.castOnSet) {
            return
        }

        useSlotQuickly()
    }
}