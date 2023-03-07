; Handler to prevent multiple modifiers from overlapping
currentActiveBind := false

bindableObjectMethod(pressedKey, object, methodName)
{
    object.%methodName%()
}

isAnyBindRunning()
{
    return currentActiveBind
}

isBindRunning(bindLabel)
{
    return currentActiveBind = bindLabel
}

setBindRunning(bindLabel)
{
    currentActiveBind := bindLabel
}

releaseBinds()
{
    currentActiveBind := false
}
