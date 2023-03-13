isWindowAllowed()
{
    try {
        activeWindow := WinGetTitle("A")
    } catch Error as err {
        return false
    }

    isAllowedWindow := arrayContains(ALLOWED_APPLICATONS, activeWindow)
    if (!isAllowedWindow) {
        return false
    }

    return true
}