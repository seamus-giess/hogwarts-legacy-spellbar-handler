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

getPressedMovementKeys()
{
    global MOVEMENT_KEYS

    pressedKeys := []
    For (key in MOVEMENT_KEYS) {
        keyisPressed := GetKeyState(key, "P")
        if (keyIsPressed) {
            pressedKeys.Push(key)
        }
    }

    return pressedKeys
}

unpressKeys(pressedKeys)
{
    For (key in pressedKeys) {
        Send("{" . key . " up}")
    }
}

repressKeys(pressedKeys)
{
    For (key in pressedKeys) {
        if (!GetKeyState(key, "P")) {
            continue
        }
        Send("{" . key . " down}")
    }
}
