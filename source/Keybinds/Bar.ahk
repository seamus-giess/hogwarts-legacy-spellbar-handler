class Bar {
    __New(bind, xCoordinate, yCoordinate, unlocked)
    {
        this.bind := bind
        this.xCoordinate := xCoordinate
        this.yCoordinate := yCoordinate
        this.unlocked := unlocked
    }

    pageTo()
    {
        Send("{" . this.bind . "}")
    }
}