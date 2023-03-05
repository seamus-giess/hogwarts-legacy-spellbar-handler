class SwapBarKeybind extends AppKeybind {
    __New(thisKey, targetBar)
    {
        this.bind := thisKey
        this.bar := targetBar

        this.previousBar := false
    }

    swapTo()
    {
        global currentActiveBind
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

        currentActiveBind := this.getBindLabel()

        this.previousBar := getCurrentBar()
        this.bar.pageTo()

        KeyWait(this.bind)
    }
    
    swapBack()
    {
        global currentActiveBind
        if (!this.isAllowed()) {
            return
        }

        ; Only allow release if it was first pressed
        if (currentActiveBind != this.getBindLabel()) {
            return false
        }

        currentActiveBind := false

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
