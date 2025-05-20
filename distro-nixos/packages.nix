{ pkgs, ... } : {
  environment.systemPackages = with pkgs; [
    vim
    wget
    fastfetch
    tmux
    git

    brave
    bitwarden-desktop
    ente-auth
    ticktick
    onlyoffice-bin
    qbittorrent
    discord
    zapzap

    vscode
    code-cursor
    insomnia
    beekeeper-studio
    warp-terminal
    termius

    gnome-weather
    gnome-clocks
    gnome-calendar
    gnome-disk-utility
    gnome-font-viewer
    gnome-calculator
    gnome-boxes
    gnome-console
    gnome-tweaks
    gnome-text-editor
    geary
    file-roller
    nautilus
    eog

    evince
    gnome-frog
    resources
    celluloid
    dialect
    gearlever
    g4music
    pdfarranger
    devtoolbox
    apostrophe
    blackbox-terminal

    audacity
    kdenlive
    obs-studio
    handbrake
    losslesscut-bin
    parabolic
    openshot-qt

    krita
    gthumb
    upscayl
    switcheroo

    easyeffects
    cavalier
    spotify
    spotdl

    wine
    bottles
    quickemu

    nerdfonts
    sassc
    gtk-engine-murrine
    gnome-themes-extra
    adw-gtk3
    yaru-theme
    font-awesome
    colloid-gtk-theme
    colloid-icon-theme
    bibata-cursors-translucent

    gnomeExtensions.dash-to-dock
    gnomeExtensions.clipboard-indicator
    gnomeExtensions.caffeine
    gnomeExtensions.appindicator
    gnomeExtensions.tiling-assistant
    gnomeExtensions.gnome-40-ui-improvements
    gnomeExtensions.gsconnect
    gnomeExtensions.rounded-window-corners-reborn
    gnomeExtensions.blur-my-shell
    gnomeExtensions.window-gestures

    nodejs_22
    pnpm
    nest-cli

    python314
    poetry

    go
    rustc

    # FLATPAK APPS
    # Zen Browser
    # REAL Video Enhancer

    # APPIMAGE APPS
    # Capacities
  ];
}
