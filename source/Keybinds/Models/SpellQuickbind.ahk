class SpellQuickbind extends AppKeybind {
    __New(thisKey, targetSpell)
    {
        this.thisKey := thisKey
        this.spell := targetSpell

        this.isCurrentQuickSpell := false
    }
}