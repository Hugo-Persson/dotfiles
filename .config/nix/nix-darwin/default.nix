{ pkgs, ... }: {
  # Install nix packages
  # List packages installed in system profile. To search by name, run:
  # $ nix-env -qaP | grep wget
  environment = {
    systemPackages = with pkgs; [

      btop
      nixfmt-classic
      bear
      cscope
      git-open
      imagemagick
      luajitPackages.magick
      git-lfs
    ];
  };
  # Dock
  system.defaults.dock = {
    autohide = true;
    autohide-delay = 0.0;
    mru-spaces = false;
    expose-group-apps = true;
    tilesize = 32;
  };
  system.defaults.spaces = {
    spans-displays = false;

  };

  # Auto upgrade nix package and the daemon service.
  services.nix-daemon.enable = true;
  # nix.package = pkgs.nix;

  # Necessary for using flakes on this system.
  nix.settings.experimental-features = "nix-command flakes";

  programs.fish.enable = true;

  # Set Git commit hash for darwin-version.

  # Used for backwards compatibility, please read the changelog before changing.
  # $ darwin-rebuild changelog
  system.stateVersion = 4; # here go the darwin preferences and config items

  # system.activationScripts.postUserActivation.text = ''
  #   # Following line should allow us to avoid a logout/login cycle
  #   /System/Library/PrivateFrameworks/SystemAdministration.framework/Resources/activateSettings -u
  # '';
  security.pam.enableSudoTouchIdAuth = true;
  system.defaults.NSGlobalDomain.AppleShowAllExtensions=true;
   # 120, 90, 60, 30, 12, 6, 2
  system.defaults.NSGlobalDomain.InitialKeyRepeat = 2;
  system.defaults.finder.ShowPathbar = true;
  system.defaults.finder.ShowStatusBar = true;
  # Whether to automatically rearrange spaces based on most recent use. The default is true.

  system.defaults.CustomUserPreferences = {
    "com.apple.finder" = {
      ShowExternalHardDrivesOnDesktop = true;
      ShowHardDrivesOnDesktop = false;
      ShowMountedServersOnDesktop = true;
      ShowRemovableMediaOnDesktop = true;
      _FXSortFoldersFirst = true;
      # When performing a search, search the current folder by default
      FXDefaultSearchScope = "SCcf";
    };
    "com.apple.desktopservices" = {
      # Avoid creating .DS_Store files on network or USB volumes
      DSDontWriteNetworkStores = true;
      DSDontWriteUSBStores = true;
    };
    "com.apple.screensaver" = {
      # Require password immediately after sleep or screen saver begins
      askForPassword = 1;
      askForPasswordDelay = 0;
    };
    "com.apple.dt.Xcode" = {
      #https://macos-defaults.com/xcode/showbuildoperationduration.html
      ShowBuildOperationDuration = true;
    };
  };

  # Configure mac options #
  system.defaults = { };

  # home-manager.backupFileExtension = "backup";

  # Manage homebrew
  homebrew.enable = false;
  # homebrew.onActivation.cleanup = "uninstall";
  homebrew.casks = [
    "stats"
    "nikitabobko/tap/aerospace"
    "pearcleaner"
    "jordanbaird-ice"
    "hammerspoon"
    "mos"
    "sf-symbols"
    "signal"
    "spotify"
    "wezterm"
    "devtoys"
    "1password"
    "copilot-for-xcode"
    "keyboard-cleaner"
    "localsend"
    "middleclick"
    "openvpn-connect"
    "raycast"
    "postman"
    "swiftformat-for-xcode"
    # "mactex-no-gui"
    "proton-mail"
    "proton-pass"
    "protonmail-bridge"
    "protonvpn"
    "proton-drive"
    "bruno"
    "betterdisplay"
    "arc"

    "drawio"
  ];
  homebrew.brews = [
    "hugo-persson/dns-cli-tools/dns-cli-tools"
    "pam-reattach"
    "ktlint"
    "sesh"
    "infisical/get-cli/infisical"
    "fish"
    "thefuck"
    "fzf"
  ];
  homebrew.taps = [ "hugo-persson/dns-cli-tools" "nikitabobko/tap" ];

}
