class BarCycleBind extends AppKeybind {
    __New(bind, cycleBars)
    {
        this.currentBar := cycleBars[1]
        this.currentIndex := 1
        this.maxIndex := cycleBars.Length
        this.bars := cycleBars
        this.bind := bind

        cycleBarsBind := "" . this.bind
        this.initializeHotkey(cycleBarsBind, "swapBars")
    }

    swapBars()
    {
        currentBar := getCurrentBar()

        if (!this.isAllowed()) {
            return
        }

        if (currentBar != this.currentBar) {
            this.currentBar.pageTo()
            return
        }

        this.currentIndex := this.currentIndex + 1
        if (this.currentIndex > this.maxIndex) {
            this.currentIndex := 1
        }

        this.currentBar := this.bars[this.currentIndex]
        this.currentBar.pageTo()
    }
}
