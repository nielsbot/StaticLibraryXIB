StaticLibraryXIB
================

### What's this?

This is a sample project showing how you may include XIBs in a static library. 
I'm sure you could apply the same technique to other types of binary data.

### Where's the magic?

The important bits are in a custom shell script build phase in the included project:

    #! /usr/bin/bash
    /usr/bin/ibtool --output-format human-readable-text --compile "$TARGET_TEMP_DIR/$INPUT_FILE_BASE.nib" "$INPUT_FILE_DIR/$INPUT_FILE_NAME"
    Hexdump=`hexdump -v -e '1 1 "0x%02x, "' "$TARGET_TEMP_DIR/${INPUT_FILE_BASE}.nib"`
    Datalength=`stat -f "%z" ${TARGET_TEMP_DIR}/${INPUT_FILE_BASE}.nib`
    sed -e "s/HEX_DUMP/$Hexdump/" -e "s/NIB_NAME/${INPUT_FILE_BASE}/g" -e "s/HEX_LENGTH/$Datalength/g" "${SRCROOT}/NibTest/CompiledNibTemplate.m" > "$DERIVED_FILE_DIR/$INPUT_FILE_BASE.nib.m"
