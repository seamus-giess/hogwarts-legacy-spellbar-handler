class SpellQuickbind extends AppKeybind {
    __New(bind, targetSpell)
    {
        this.bind := bind
        this.spell := targetSpell

        this.isCurrentQuickSpell := false
    }
}