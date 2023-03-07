; Handler to prevent multiple modifiers from overlapping
currentActiveBind := false

initializeObjectHotkey(bind, object, methodName)
{
    hotkeyableObjectMethod := bindableObjectMethod.Bind(, object, methodName)
    Hotkey(bind, hotkeyableObjectMethod)
}

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

