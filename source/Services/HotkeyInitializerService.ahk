initializeObjectHotkey(bind, object, methodName)
{
    hotkeyableObjectMethod := bindObjectMethod.Bind(, object, methodName)
    Hotkey(bind, hotkeyableObjectMethod)
}

bindObjectMethod(pressedKey, object, methodName)
{
    object.%methodName%()
}