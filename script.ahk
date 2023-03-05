#Include configuration.ahk
#Include source/_index.ahk

; BAR DATA SETUP
bars := Map()
For (key, barData in BAR_BINDINGS.OwnProps()) {
    bars[key] := Bar(
        barData.bind,
        barData.xCoordinate,
        barData.yCoordinate,
        barData.unlocked
    )
}

currentBar := bars["bar_1"]
currentActiveBind := false

; TEMP BAR SWAP BIND SETUP
barSwaps := Map()
For (barSlug, bind in TEMPORARY_SWAP_MODIFIERS.OwnProps()) {
    if (!bind) {
        Continue
    }

    barSwaps[barSlug] := SwapBarKeybind(bind, bars[barSlug])
    barSwaps[barSlug].initialiseHotkeys()
}
