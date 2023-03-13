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

getSpellCoordinates(spell)
{
    spellSelectionGridPlacement := SPELL_SELECTION_SLOTS.%spell%
    return Coordinates(
        SPELL_SELECTION_COLUMN.%spellSelectionGridPlacement.column%,
        SPELL_SELECTION_ROW.%spellSelectionGridPlacement.row%,
    )
}