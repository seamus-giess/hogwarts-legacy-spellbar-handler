initializeObjectHotkey(bind, object, methodName)
{
    hotkeyableObjectMethod := bindableObjectMethod.Bind(, object, methodName)
    Hotkey(bind, hotkeyableObjectMethod)
}

bindableObjectMethod(pressedKey, object, methodName)
{
    object.%methodName%()
}