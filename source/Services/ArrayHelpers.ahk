arrayContains(haystack, needle)
{
    needle := StrReplace(needle, ' ', '')
    isSearchable := IsObject(haystack)

	if (!isSearchable) {
        return false
    }

    isEmpty := haystack.Length = 0
    if (isEmpty) {
        return false
    }
    
	for (value in haystack)
    {
        value := StrReplace(value, ' ', '')
        if (value = needle) {
            return true
        }
    }
	
	return false
}