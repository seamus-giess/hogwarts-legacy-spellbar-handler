class Slot {
    __New(bar, xCoordinate, yCoodinate)
    {
        this.bar := bar
        this.xCoordinate := xCoordinate
        this.yCoodinate := yCoodinate
    }

    pageTo()
    {
        this.bar.pageTo()
    }
}