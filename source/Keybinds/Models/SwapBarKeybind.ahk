class SwapBarKeybind extends AppKeybind {
    __New(thisKey, targetBar)
    {
        this.thisKey := thisKey
        this.targetBar := targetBar

        this.previousBar := false
    }

    swapTo()
    {
        global currentActiveBind
        if (!this.isAllowed()) {
            return
        }

        if (!this.targetBar.unlocked) {
            this.targetBar.unlocked := !isBarLocked(this.targetBar)

            if (!this.targetBar.unlocked) {
                ShowBarDisabledTooltip(this.targetBar.bind)
                return
            }
        }

        isBarCurrent := getCurrentBar() = this.targetBar
        if (isBarCurrent) {
            return
        }

        currentActiveBind := this.getBindLabel()

        this.previousBar := getCurrentBar()
        Send("{" . this.targetBar.bind . "}")
        KeyWait(this.thisKey)
    }
    
    swapFrom()
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

        Send("{" . this.previousBar.bind . "}")
    }

    initialiseHotkeys()
    {
        bindKeyTo := "~" . this.thisKey
        bindKeyFrom := "~*" . this.thisKey . " Up"

        Hotkey(bindKeyTo, bindFunction.Bind(,this,"swapTo"))
        Hotkey(bindKeyFrom, bindFunction.Bind(,this,"swapFrom"))

        bindFunction(pressedKey, object, action)
        {
            object.%action%()
        }
    }
}
