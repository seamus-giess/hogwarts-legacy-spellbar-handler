class SpellQuickbind extends AppKeybind {
    __New(bind, targetSpell)
    {
        this.bind := bind
        this.spell := targetSpell

        this.isCurrentQuickSpell := false

        
        actionBind := "~" . this.bind
        this.initializeHotkey(actionBind, "doAction")
    }

    doAction()
    {
        ; IF currentQuickspell is this.spell
        ; DO quick cat
        ; ELSE set this.spell as currentQuickspell
    }

    ; This should be in a service? feels weird being a helper in a class
    castQuickSpell()
    {
        ; TODO swap to bar

        ; TODO cast spell

        ; TODO swap back to previous bar
    }

    ; This also probably belongs in a helper
    setQuickspell()
    {
        ; TODO swap to bar

        ; TODO open spell select menu

        ; TODO move to this.spell

        ; TODO pick up spell

        ; TODO move to specified spellbar slot

        ; TODO drop spell

        ; TODO update quickspell global state

        ; TODO swap back to previous bar
    }
}