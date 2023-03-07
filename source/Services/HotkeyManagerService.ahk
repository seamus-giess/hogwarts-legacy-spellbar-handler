; Handler to prevent multiple modifiers from overlapping
currentActiveBind := false

bindableObjectMethod(pressedKey, object, methodName)
{
    object.%methodName%()
}

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
