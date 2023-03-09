latestUnlockedBar := false
lastCurrentBar := false

isBarLocked(bar)
{
    ; Trust previous estimations if to reduce overhead
    if (bar.unlocked) {
        return false
    }

    barStatusColor := PixelGetColor(
        bar.xCoordinate,
        bar.yCoordinate,
        "Alt"
    )

    isBarCurrent := barStatusColor = BAR_STATE_COLORS.current
    isBarUnlocked := barStatusColor = BAR_STATE_COLORS.unlocked

    isLocked := !isBarCurrent && !isBarUnlocked
    
    ; Update the bar's status while we're here
    bar.unlocked := !isLocked

    return isLocked
}

getCurrentBar()
{
    global bars
    global lastCurrentBar

    For (key, bar in bars) {
        barStatusColor := PixelGetColor(
            bar.xCoordinate,
            bar.yCoordinate,
            "Alt"
        )
        isBarActive := barStatusColor = BAR_STATE_COLORS.current
        if (isBarActive) {
            lastCurrentBar := bar
            return bar
        }
    }

    if (lastCurrentBar) {
        return lastCurrentBar
    }

    return bars["Numpad1"]
}

isBarCurrent(bar)
{
    return getCurrentBar() = bar
}

getLatestUnlockedBar() {
    global latestUnlockedBar
    
    if (
        latestUnlockedBar
        && latestUnlockedBar.bind = BAR_BINDINGS.Numpad4.bind
    ) {
        return latestUnlockedBar
    }

    For (key, bar in bars) {
        if (!isBarLocked(bar)) {
            latestUnlockedBar := bar
        }
    }

    return latestUnlockedBar
}

ShowBarDisabledTooltip(targetBarBind) {
    ToolTip("Bar bound to {" . targetBarBind . "} is not unlocked.", 0, 0)
    SetTimer(HideTooltip, -4000)
}

HideTooltip() {
    ToolTip
    return
}