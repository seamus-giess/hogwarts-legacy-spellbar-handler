class SwapBarKeybind extends AppKeybind {
    __New(thisKey, targetBar)
    {
        this.bind := thisKey
        this.bar := targetBar

        this.previousBar := false

        this.initialiseHotkeys()
    }

    swapTo()
    {
        if (!this.isAllowed()) {
            return
        }

        if (isBarLocked(this.bar)) {
            ShowBarDisabledTooltip(this.bar.bind)
            return
        }

        if (isBarCurrent(this.bar)) {
            return
        }

        this.setRunning()

        this.previousBar := getCurrentBar()
        this.bar.pageTo()

        KeyWait(this.bind)
    }
    
    swapBack()
    {
        ; Only allow release if initial press successful
        if (!isAnyBindRunning()) {
            return
        }

        if (!this.isAllowed()) {
            return
        }

        releaseBinds()

        this.previousBar.pageTo()
    }

    initialiseHotkeys()
    {
        swapToAcitonBind := "~" . this.bind
        this.initializeHotkey(swapToAcitonBind, "swapTo")

        swapBackActionBind := "~*" . this.bind . " Up"
        this.initializeHotkey(swapBackActionBind, "swapBack")
    }
}
