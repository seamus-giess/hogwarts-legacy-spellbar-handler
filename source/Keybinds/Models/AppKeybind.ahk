#Include ../../Services/_index.ahk

class AppKeyBind
{
    isAllowed()
    {
        if (!isWindowAllowed()) {
            return false
        }

        ; Don't execute if already running a bind, but let release macros of the same bind through
        if (isAnyBindRunning() && !this.isRunning()) {
            return false
        }

        return true
    }

    getBindLabel()
    {
        return this.__class . this.bind
    }

    initializeHotkey(bind, methodName) 
    {
        hotkeyableObjectMethod := bindableObjectMethod.Bind(, object, methodName)
        Hotkey(bind, hotkeyableObjectMethod)
    }

    isRunning()
    {
        return isBindRunning(this.getBindLabel)
    }

    setRunning()
    {
        setBindRunning(this.getBindLabel)
    }
}