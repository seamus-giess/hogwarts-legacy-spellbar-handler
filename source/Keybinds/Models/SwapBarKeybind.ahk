class SwapBarKeybind extends AppKeybind {
    __New(thisKey, targetBar)
    {
        this.bind := thisKey
        this.bar := targetBar

        this.previousBar := false
    }

    swapTo()
    {
        if (!this.isAllowed()) {
            return
        }

        if (!this.bar.unlocked) {
            this.bar.unlocked := !isBarLocked(this.bar)

            if (!this.bar.unlocked) {
                ShowBarDisabledTooltip(this.bar.bind)
                return
            }
        }

        isBarCurrent := getCurrentBar() = this.bar
        if (isBarCurrent) {
            return
        }

        this.setRunning()

        this.previousBar := getCurrentBar()
        this.bar.pageTo()

        KeyWait(this.bind)
    }
    
    swapBack()
    {
        if (!this.isAllowed()) {
            return
        }

        ; Only allow release if it was first pressed
        if (!this.isRunning()) {
            return
        }

        releaseBinds()

        this.previousBar.pageTo()
    }

    initialiseHotkeys()
    {
        bindKeyTo := "~" . this.bind
        this.initializeHotkey(bindKeyTo, "swapTo")

        bindKeyFrom := "~*" . this.bind . " Up"
        this.initializeHotkey(bindKeyFrom, "swapBack")
    }
}
