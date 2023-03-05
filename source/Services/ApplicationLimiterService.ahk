isWindowAllowed()
{
    isAllowedWindow := arrayContains(ALLOWED_APPLICATONS, WinGetTitle("A"))
    if (!isAllowedWindow) {
        return false
    }

    return true
}