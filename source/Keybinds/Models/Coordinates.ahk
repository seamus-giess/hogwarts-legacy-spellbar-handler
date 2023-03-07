class Coordinates {
    __New(xCoordinate, yCoordinate)
    {
        this.xCoordinate := xCoordinate
        this.yCoordinate := yCoordinate
    }

    moveCursorTo()
    {
        MouseMove(this.xCoordinate, this.yCoordinate, 0)
    }

    pickup()
    {
        MouseClick("Left", this.xCoordinate, this.yCoordinate, , 0, "D")
    }

    dropHere()
    {
        MouseClick("Left", this.xCoordinate, this.yCoordinate, , 0, "U")
    }
}