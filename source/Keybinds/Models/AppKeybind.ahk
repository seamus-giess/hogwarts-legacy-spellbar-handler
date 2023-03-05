#Include ../../Services/_index.ahk

class AppKeyBind
{
    isAllowed()
    {
        if (!isWindowAllowed()) {
            return false
        }

        if (currentActiveBind && currentActiveBind != this.getBindLabel()) {
            return false
        }

        return true
    }

    getBindLabel()
    {
        return this.__class . this.thisKey
    }
}