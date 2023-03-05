isBarLocked(bar)
{
    barStatusColor := PixelGetColor(
        bar.xCoordinate,
        bar.yCoordinate,
        "Alt"
    )

    isBarCurrent := barStatusColor = BAR_STATE_COLORS.current
    isBarUnlocked := barStatusColor = BAR_STATE_COLORS.unlocked

    return !isBarCurrent && !isBarUnlocked
}

getCurrentBar()
{
    global bars
    For (key, bar in bars) {
        barStatusColor := PixelGetColor(
            bar.xCoordinate,
            bar.yCoordinate,
            "Alt"
        )
        isBarActive := barStatusColor = BAR_STATE_COLORS.current
        if (isBarActive) {
            return bar
        }
    }

    return bars["bar_1"]
}

getLatestUnlockedBar() {
    latestUnlockedBar := bars["bar_1"]
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