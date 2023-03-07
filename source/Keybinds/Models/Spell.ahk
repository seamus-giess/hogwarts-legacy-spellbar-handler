class Spell {
    __New(spellPosition)
    {
        this.spellPosition := spellPosition
    }

    pickup()
    {
        this.spellPosition.pickup()
    }

    mouse(action)
    {
        MouseClick(
            , ; WhichButton
            , ; X
            , ; Y
            , ; ClickCount
            , ; Speed
            action,
        )
    }
}