isAnyBindRunning()
{
    global currentActiveBind
    return currentActiveBind
}

isBindRunning(bindLabel)
{
    global currentActiveBind
    return currentActiveBind = bindLabel
}

setBindRunning(bindLabel)
{
    global currentActiveBind
    currentActiveBind := bindLabel
}

releaseBinds()
{
    global currentActiveBind
    currentActiveBind := false
}