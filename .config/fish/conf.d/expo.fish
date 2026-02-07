function expo --description "Expo CLI wrapper using pnpx with automatic --pnpm flag for install"
    if test (count $argv) -gt 0; and test $argv[1] = install
        # If first argument is install, add --pnpm flag
        npx expo $argv --pnpm
    else
        # For all other commands, pass through normally
        npx expo $argv
    end
end
