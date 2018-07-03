CREATE TABLE IF NOT EXISTS software (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  name TEXT VARCHAR(255) NOT NULL,
  category TEXT VARCHAR(255) NOT NULL,
  method TEXT VARCHAR(5) NOT NULL,
  info TEXT VARCHAR(255)
);

CREATE TABLE IF NOT EXISTS config (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  method TEXT VARCHAR(20) NOT NULL,
  category TEXT VARCHAR(255) NOT NULL,
  domain TEXT VARCHAR(255),
  key TEXT VARCHAR(255) NOT NULL,
  keytyp TEXT VARCHAR(10),
  keyvalue TEXT VARCHAR(25) NOT NULL,
  info TEXT VARCHAR(255)
);

INSERT INTO config(method, category, key, keyvalue, info) VALUES ('sudo systemsetup', 'time', 'settimezone', 'Europe/Zurich', 'Set timezone to Zurich.');

-- INSERT INTO config(method, category, domain, key, keytyp, keyvalue, info) VALUES ('defaults', 'window', 'NSGlobalDomain', 'NSAutomaticWindowAnimationsEnabled', 'bool', 'false', 'Disable animations when opening and closing windows.');
-- INSERT INTO config(method, category, domain, key, keytyp, keyvalue, info) VALUES ('defaults', 'window', 'NSGlobalDomain', 'NSAutomaticWindowAnimationsEnabled', 'bool', 'false', 'Disable animations when opening and closing windows.');
-- INSERT INTO config(method, category, domain, key, keytyp, keyvalue, info) VALUES ('defaults', 'window', 'NSGlobalDomain', 'QLPanelAnimationDuration', 'float', '0', 'Disable animations when opening a Quick Look window.');
INSERT INTO config(method, category, domain, key, keytyp, keyvalue, info) VALUES ('defaults', 'window', 'NSGlobalDomain', 'NSNavPanelExpandedStateForSaveMode', 'bool', 'true', 'Expand save panel by default.');
INSERT INTO config(method, category, domain, key, keytyp, keyvalue, info) VALUES ('defaults', 'window', 'NSGlobalDomain', 'NSNavPanelExpandedStateForSaveMode2', 'bool', 'true', 'Expand save panel by default.');
INSERT INTO config(method, category, domain, key, keytyp, keyvalue, info) VALUES ('defaults', 'window', 'NSGlobalDomain', 'PMPrintingExpandedStateForPrint', 'bool', 'true', 'Expand print panel by default.');
INSERT INTO config(method, category, domain, key, keytyp, keyvalue, info) VALUES ('defaults', 'window', 'NSGlobalDomain', 'AppleAquaColorVariant', 'int', '1', 'Color scheme: blue');
-- INSERT INTO config(method, category, domain, key, keytyp, keyvalue, info) VALUES ('defaults', 'finder', 'com.apple.finder', 'DisableAllAnimations', 'bool', 'true', 'Disable animation when opening the Info window in Finder (cmd + i).');
-- INSERT INTO config(method, category, domain, key, keytyp, keyvalue, info) VALUES ('defaults', 'finder', 'com.apple.finder', 'AppleShowAllFiles', 'bool', 'true', 'Show in finder hidden files by default.');
-- INSERT INTO config(method, category, domain, key, keytyp, keyvalue, info) VALUES ('defaults', 'finder', 'com.apple.finder', '_FXShowPosixPathInTitle', 'bool', 'true', 'Display full POSIX path as Finder window title.');
-- INSERT INTO config(method, category, domain, key, keytyp, keyvalue, info) VALUES ('defaults', 'finder', 'com.apple.finder', 'AppleShowAllExtensions', 'bool', 'true', 'Show in finder filename extensions.');
INSERT INTO config(method, category, domain, key, keytyp, keyvalue, info) VALUES ('defaults', 'finder', 'com.apple.finder', 'ShowStatusBar', 'bool', 'true', 'Show in status bar in finder.');
INSERT INTO config(method, category, domain, key, keytyp, keyvalue, info) VALUES ('defaults', 'finder', 'com.apple.finder', 'ShowPathbar', 'bool', 'true', 'Show Path bar in Finder.');
INSERT INTO config(method, category, domain, key, keytyp, keyvalue, info) VALUES ('defaults', 'finder', 'com.apple.finder', 'WarnOnEmptyTrash', 'bool', 'false', 'Disable the warning before emptying the Trash.');
INSERT INTO config(method, category, domain, key, keytyp, keyvalue, info) VALUES ('defaults', 'finder', 'com.apple.finder', 'FXEnableExtensionChangeWarning', 'bool', 'false', 'Disable the warning when changing a file extension.');
INSERT INTO config(method, category, domain, key, keytyp, keyvalue, info) VALUES ('defaults', 'finder', 'com.apple.finder', 'FXPreferredViewStyle', 'string', 'Nlsv', 'Use list view in all Finder windows by default.');
INSERT INTO config(method, category, domain, key, keytyp, keyvalue, info) VALUES ('defaults', 'finder', 'com.apple.desktopservices', 'DSDontWriteNetworkStores', 'bool', 'true', 'Avoid creating .DS_Store files on network volumes.');
INSERT INTO config(method, category, domain, key, keytyp, keyvalue, info) VALUES ('defaults', 'finder', 'com.apple.finder', 'FXDefaultSearchScope', 'string', 'SCcf', 'Use current directory as default search scope in Finder.');
INSERT INTO config(method, category, domain, key, keytyp, keyvalue, info) VALUES ('defaults', 'dock', 'com.apple.dock', 'launchanim', 'bool', 'false', 'Disable animations when you open an application from the Dock.');
INSERT INTO config(method, category, domain, key, keytyp, keyvalue, info) VALUES ('defaults', 'dock', 'com.apple.dock', 'expose-animation-duration', 'float', '0.1', 'Make all animations faster that are used by Mission Control.');
-- INSERT INTO config(method, category, domain, key, keytyp, keyvalue, info) VALUES ('defaults', 'dock', 'com.apple.dock', 'autohide-delay', 'float', '0', 'Disable the delay when you hide the Dock');
-- INSERT INTO config(method, category, domain, key, keytyp, keyvalue, info) VALUES ('defaults', 'dock', 'com.apple.dock', 'autohide', 'bool', 'true', 'Automatically hide and show the Dock');

-- https://github.com/ymendel/dotfiles/blob/master/osx/corners.defaults (and others):
-- Possible values:
--  0: no-op
--  2: Mission Control (all windows)
--  3: Show application windows
--  4: Desktop
--  5: Start screen saver
--  6: Disable screen saver
--  7: Dashboard
-- 10: Put display to sleep
-- 11: Launchpad
-- 12: Notification Center

    ---- The following are the values of each option in the GUI
    -- Start Screen Saver = 5
    --   Modifier = 0
    -- Disable Screen Saver = 6
    --   Modifier = 0
    -- Mission Control = 2
    --   Modifier = 0
    -- Application Windows = 3
    --   Modifier = 0
    -- Desktop = 4
    --   Modifier = 0
    -- Dashboard = 7
    --   Modifier = 0
    -- Notification Center = 12
    --   Modifier = 0
    -- Launchpad = 11 
    --   Modifier = 0
    -- Put Display to Sleep = 10
    --   Modifier = 0
    -- None = 1
    --   Modifier = 1048576

-- Top Left: Mission Control
-- Bottom Left: Dashboard
-- Top Right: Programmfenster (Application Windows)
-- Bottom Right: Launchpad

INSERT INTO config(method, category, domain, key, keytyp, keyvalue, info) VALUES ('defaults', 'dock', 'com.apple.dock', 'wvous-tl-corner', 'int', '2', 'Top Left: Mission Control');
INSERT INTO config(method, category, domain, key, keytyp, keyvalue, info) VALUES ('defaults', 'dock', 'com.apple.dock', 'wvous-tl-modifier', 'int', '0', 'Top Left: Mission Control');

INSERT INTO config(method, category, domain, key, keytyp, keyvalue, info) VALUES ('defaults', 'dock', 'com.apple.dock', 'wvous-bl-corner', 'int', '7', 'Top Left: Mission Control');
INSERT INTO config(method, category, domain, key, keytyp, keyvalue, info) VALUES ('defaults', 'dock', 'com.apple.dock', 'wvous-bl-modifier', 'int', '0', 'Top Left: Mission Control');

INSERT INTO config(method, category, domain, key, keytyp, keyvalue, info) VALUES ('defaults', 'dock', 'com.apple.dock', 'wvous-tr-corner', 'int', '3', 'Top Left: Mission Control');
INSERT INTO config(method, category, domain, key, keytyp, keyvalue, info) VALUES ('defaults', 'dock', 'com.apple.dock', 'wvous-tr-modifier', 'int', '0', 'Top Left: Mission Control');

INSERT INTO config(method, category, domain, key, keytyp, keyvalue, info) VALUES ('defaults', 'dock', 'com.apple.dock', 'wvous-br-corner', 'int', '11', 'Top Left: Mission Control');
INSERT INTO config(method, category, domain, key, keytyp, keyvalue, info) VALUES ('defaults', 'dock', 'com.apple.dock', 'wvous-br-modifier', 'int', '0', 'Top Left: Mission Control');

INSERT INTO config(method, category, domain, key, keytyp, keyvalue, info) VALUES ('defaults', 'dock', 'com.apple.dock', 'largesize', 'int', '128', 'Scale dock icons');
INSERT INTO config(method, category, domain, key, keytyp, keyvalue, info) VALUES ('defaults', 'dock', 'com.apple.dock', 'magnification', 'int', '1', 'Enable dock icon magnification');

INSERT INTO config(method, category, domain, key, keytyp, keyvalue, info) VALUES ('defaults', 'dock', 'com.apple.dock', 'tilesize', 'int', '16', 'Size of dock icons');
INSERT INTO config(method, category, domain, key, keytyp, keyvalue, info) VALUES ('defaults', 'dock', 'com.apple.dock', 'orientation', 'string', 'left', 'Position of dock');
INSERT INTO config(method, category, domain, key, keytyp, keyvalue, info) VALUES ('defaults', 'dock', 'com.apple.dock', 'mineffect', 'string', 'genie', 'Minifaction effect of apps');
INSERT INTO config(method, category, domain, key, keytyp, keyvalue, info) VALUES ('defaults', 'dock', 'com.apple.dock', 'minimize-to-application', 'int', '1', 'minimize-to-application');
INSERT INTO config(method, category, domain, key, keytyp, keyvalue, info) VALUES ('defaults', 'dock', 'com.apple.dock', 'launchanim', 'int', '1', 'Animation of application launch');
INSERT INTO config(method, category, domain, key, keytyp, keyvalue, info) VALUES ('defaults', 'dock', 'com.apple.dock', 'showAppExposeGestureEnabled', 'int', '1', 'Enable Expose gesture.');


INSERT INTO config(method, category, domain, key, keytyp, keyvalue, info) VALUES ('defaults', 'safari', 'com.apple.Safari', 'WebKitInitialTimedLayoutDelay', 'string', '0.25', 'Disable the standard delay in rendering a Web page.');
-- INSERT INTO config(method, category, domain, key, keytyp, keyvalue, info) VALUES ('defaults', 'safari', 'com.apple.Safari', 'IncludeInternalDebugMenu', 'bool', 'true', 'Enable Safari’s debug menu.');
-- INSERT INTO config(method, category, domain, key, keytyp, keyvalue, info) VALUES ('defaults', 'system', 'com.apple.menuextra.battery', 'ShowPercent', 'string', 'YES', 'Show percentage battery info.');
INSERT INTO config(method, category, domain, key, keytyp, keyvalue, info) VALUES ('defaults', 'system', 'com.apple.LaunchServices', 'LSQuarantine', 'bool', 'false', 'Disable the “Are you sure you want to open this application?” dialog.');
-- INSERT INTO config(method, category, domain, key, keytyp, keyvalue, info) VALUES ('defaults', 'system', 'NSGlobalDomain', 'KeyRepeat', 'int', '1', 'The keyboard react faster to keystrokes.');
-- INSERT INTO config(method, category, domain, key, keytyp, keyvalue, info) VALUES ('defaults', 'system', 'NSGlobalDomain', 'InitialKeyRepeat', 'int', '10', 'The keyboard react faster to keystrokes.');
-- INSERT INTO config(method, category, domain, key, keytyp, keyvalue, info) VALUES ('defaults', 'system', 'NSGlobalDomain', 'ApplePressAndHoldEnabled', 'bool', 'true', 'Set Press and hold to enable for special character');
-- INSERT INTO config(method, category, domain, key, keytyp, keyvalue, info) VALUES ('defaults', 'system', 'com.apple.SoftwareUpdate', 'AutomaticDownload', 'bool', 'false', 'Disable autoamtic download from updates.');
INSERT INTO config(method, category, domain, key, keytyp, keyvalue, info) VALUES ('defaults', 'system', 'com.apple.driver.AppleBluetoothMultitouch.trackpad', 'Clicking', 'bool', 'true', 'Trackpad: enable tap to click for this user and for the login screen.');
INSERT INTO config(method, category, domain, key, keytyp, keyvalue, info) VALUES ('defaults', 'system', 'NSGlobalDomain', 'com.apple.mouse.tapBehavior', 'int', '1', 'Trackpad: enable tap to click for this user and for the login screen.');
INSERT INTO config(method, category, domain, key, keytyp, keyvalue, info) VALUES ('defaults', 'system', 'com.apple.BezelServices', 'kDim', 'bool', 'true', 'Automatically illuminate built-in MacBook keyboard in low light.');
INSERT INTO config(method, category, domain, key, keytyp, keyvalue, info) VALUES ('defaults', 'system', 'com.apple.BezelServices', 'kDimTime', 'int', '300', 'Turn off keyboard illumination when computer is not used for 5 minutes.');
INSERT INTO config(method, category, domain, key, keytyp, keyvalue, info) VALUES ('defaults', 'system', 'NSGlobalDomain', 'AppleKeyboardUIMode', 'int', '3', 'Enable full keyboard access for all controls (e.g. enable Tab in modal dialogs).');
INSERT INTO config(method, category, domain, key, keytyp, keyvalue, info) VALUES ('defaults', 'system', 'NSGlobalDomain', 'AppleFontSmoothing', 'int', '2', 'Enable subpixel font rendering on non-Apple LCDs.');
INSERT INTO config(method, category, domain, key, keytyp, keyvalue, info) VALUES ('defaults', 'system', 'com.apple.screencapture', 'disable-shadow', 'bool', 'true', 'Disable shadow in screenshots.');
-- INSERT INTO config(method, category, domain, key, keytyp, keyvalue, info) VALUES ('defaults', 'screensaver', 'com.apple.screensaver', 'askForPassword', 'int', '1', 'Require password immediately after sleep or screen saver begins.');
-- INSERT INTO config(method, category, domain, key, keytyp, keyvalue, info) VALUES ('defaults', 'screensaver', 'com.apple.screensaver', 'askForPasswordDelay', 'int', '0', 'Require password immediately after sleep or screen saver begins.');
-- INSERT INTO config(method, category, domain, key, keytyp, keyvalue, info) VALUES ('defaults', 'mail', 'com.apple.mail', 'DisableSendAnimations', 'bool', 'true', 'Disable the animation when you sending an e-mail');
-- INSERT INTO config(method, category, domain, key, keytyp, keyvalue, info) VALUES ('defaults', 'mail', 'com.apple.mail', 'DisableReplyAnimations', 'bool', 'true', 'Disable the animation when you replying an e-mail');
INSERT INTO config(method, category, domain, key, keytyp, keyvalue, info) VALUES ('defaults', 'textedit', 'com.apple.TextEdit', 'RichText', 'int', '0', 'Use plain text as default format in TextEdit');
INSERT INTO config(method, category, domain, key, keytyp, keyvalue, info) VALUES ('defaults', 'appstore', 'com.apple.appstore', 'ShowDebugMenu', 'bool', 'true', 'Show debug menu in appstore.');

INSERT INTO config(method, category, domain, key, keytyp, keyvalue, info) VALUES ('defaults', 'system', 'NSGlobalDomain', 'AppleAquaColorVariant', 'int', '1', 'Color scheme: blue (1).');
INSERT INTO config(method, category, domain, key, keytyp, keyvalue, info) VALUES ('defaults', 'system', 'NSGlobalDomain', 'AppleHighlightColor', 'string', '0.752941 0.964706 0.678431', 'Highlight color: green (1).');
INSERT INTO config(method, category, domain, key, keytyp, keyvalue, info) VALUES ('defaults', 'system', 'NSGlobalDomain', 'NSQuitAlwaysKeepsWindows', 'int', '0', 'Close windows when quitting application - do not.');

INSERT INTO config(method, category, domain, key, keytyp, keyvalue, info) VALUES ('defaults', 'system', 'com.apple.dashboard', 'dashboard-enabled-state', 'int', '3', 'Enable dashboard as an overlay.');

INSERT INTO config(method, category, domain, key, keytyp, keyvalue, info) VALUES ('defaults', 'system', 'com.apple.menuextra.clock', 'DateFormat', 'string', 'EEE d. MMM  HH:mm:ss', 'Clock in menu: format with seconds');
INSERT INTO config(method, category, domain, key, keytyp, keyvalue, info) VALUES ('defaults', 'system', 'com.apple.menuextra.clock', 'FlashDateSeparators', 'int', '1', 'Clock in menu: flash separator');
INSERT INTO config(method, category, domain, key, keytyp, keyvalue, info) VALUES ('defaults', 'system', 'com.apple.menuextra.clock', 'IsAnalog', 'int', '0', 'Clock in menu: not analog clock');

INSERT INTO software(name, category, method) VALUES ('caskroom/cask', 'tap', 'tap');
INSERT INTO software(name, category, method) VALUES ('caskroom/drivers', 'tap', 'tap');
INSERT INTO software(name, category, method) VALUES ('caskroom/versions', 'tap', 'tap');
INSERT INTO software(name, category, method) VALUES ('caskroom/fonts', 'tap', 'tap');

INSERT INTO software(name, category, method) VALUES ('bash-completion', 'core', 'core');
INSERT INTO software(name, category, method) VALUES ('bash', 'core', 'core');
INSERT INTO software(name, category, method) VALUES ('coreutils', 'core', 'core');
INSERT INTO software(name, category, method) VALUES ('fish', 'programming', 'core');
INSERT INTO software(name, category, method) VALUES ('go', 'programming', 'core');
INSERT INTO software(name, category, method, info) VALUES ('gnupg', 'crypt', 'core', '--with-readline');
INSERT INTO software(name, category, method) VALUES ('hping', 'security', 'core');
INSERT INTO software(name, category, method) VALUES ('ipcalc', 'security', 'core');
INSERT INTO software(name, category, method) VALUES ('macvim', 'core', 'core');
INSERT INTO software(name, category, method) VALUES ('mas', 'core', 'core');
INSERT INTO software(name, category, method) VALUES ('neovim', 'core', 'core');
INSERT INTO software(name, category, method) VALUES ('netcat', 'core', 'core');
INSERT INTO software(name, category, method) VALUES ('nmap', 'security', 'core');
-- INSERT INTO software(name, category, method) VALUES ('node', 'programming', 'core');
INSERT INTO software(name, category, method) VALUES ('p7zip', 'core', 'core');
INSERT INTO software(name, category, method) VALUES ('pwgen', 'core', 'core');
INSERT INTO software(name, category, method) VALUES ('rubocop', 'dev', 'gem');
INSERT INTO software(name, category, method) VALUES ('shellcheck', 'core', 'core');
INSERT INTO software(name, category, method) VALUES ('sqlite', 'core', 'core');
INSERT INTO software(name, category, method) VALUES ('testssl', 'security', 'core');
INSERT INTO software(name, category, method) VALUES ('tmux', 'core', 'core');
INSERT INTO software(name, category, method) VALUES ('unrar', 'core', 'core');
INSERT INTO software(name, category, method, info) VALUES ('wget', 'core', 'core', '--with-libmetalink');
INSERT INTO software(name, category, method, info) VALUES ('wireshark', 'security', 'core', '--with-libsmi --with-libssh --with-nghttp2');
INSERT INTO software(name, category, method) VALUES ('youtube-dl', 'multimedia', 'core');
INSERT INTO software(name, category, method, info) VALUES ('zsh', 'core', 'core', '--with-pcre --with-unicode9');

INSERT INTO software(name, category, method) VALUES ('1password', 'office', 'cask');
INSERT INTO software(name, category, method) VALUES ('1password-cli', 'office', 'cask');
-- INSERT INTO software(name, category, method) VALUES ('adobe-creative-cloud', 'multimedia', 'cask');
INSERT INTO software(name, category, method) VALUES ('bartender', 'multimedia', 'cask');
INSERT INTO software(name, category, method) VALUES ('cheatsheet', 'multimedia', 'cask');
-- INSERT INTO software(name, category, method) VALUES ('chefdk', 'dev', 'cask');
-- INSERT INTO software(name, category, method) VALUES ('citrix-receiver', 'communication', 'cask');
INSERT INTO software(name, category, method) VALUES ('cleanmymac', 'core', 'cask');
INSERT INTO software(name, category, method) VALUES ('controlplane', 'core', 'cask');
-- INSERT INTO software(name, category, method) VALUES ('dnscrypt', 'core', 'cask');
INSERT INTO software(name, category, method) VALUES ('docker', 'dev', 'cask');
-- INSERT INTO software(name, category, method) VALUES ('firefox', 'browser', 'cask');
INSERT INTO software(name, category, method) VALUES ('homebrew/cask-versions/firefox-beta', 'browser', 'cask');
INSERT INTO software(name, category, method) VALUES ('font-dejavu-sans', 'font', 'cask');
INSERT INTO software(name, category, method) VALUES ('font-monoid', 'font', 'cask');
INSERT INTO software(name, category, method) VALUES ('font-raleway', 'font', 'cask');
INSERT INTO software(name, category, method) VALUES ('font-source-code-pro', 'font', 'cask');
-- INSERT INTO software(name, category, method) VALUES ('garmin-express', 'driver', 'cask');
-- INSERT INTO software(name, category, method) VALUES ('google-chrome', 'browser', 'cask');
INSERT INTO software(name, category, method) VALUES ('homebrew/cask-versions/google-chrome-beta', 'browser', 'cask');
-- INSERT INTO software(name, category, method) VALUES ('gpg-suite', 'communication', 'cask');
INSERT INTO software(name, category, method) VALUES ('handbrake', 'multimedia', 'cask');
-- INSERT INTO software(name, category, method) VALUES ('i1profiler', 'driver', 'cask');
-- INSERT INTO software(name, category, method) VALUES ('istat-menus', 'core', 'cask');
INSERT INTO software(name, category, method) VALUES ('iterm2', 'core', 'cask');
INSERT INTO software(name, category, method) VALUES ('java', 'programming', 'cask');
-- INSERT INTO software(name, category, method) VALUES ('keepassx', 'core', 'cask');
INSERT INTO software(name, category, method) VALUES ('libreoffice-language-pack', 'office', 'cask');
INSERT INTO software(name, category, method) VALUES ('libreoffice', 'office', 'cask');
-- INSERT INTO software(name, category, method) VALUES ('microsoft-office', 'office', 'cask');
-- INSERT INTO software(name, category, method) VALUES ('microsoft-teams', 'communication', 'cask');
-- INSERT INTO software(name, category, method) VALUES ('nextcloud', 'core', 'cask');
-- INSERT INTO software(name, category, method) VALUES ('omnifocus', 'office', 'cask');
-- INSERT INTO software(name, category, method) VALUES ('omnigraffle', 'office', 'cask');
INSERT INTO software(name, category, method) VALUES ('opera', 'browser', 'cask');
-- INSERT INTO software(name, category, method) VALUES ('sizeup', 'core', 'cask');
INSERT INTO software(name, category, method) VALUES ('skype-for-business', 'communication', 'cask');
INSERT INTO software(name, category, method) VALUES ('skype', 'communication', 'cask');
INSERT INTO software(name, category, method) VALUES ('slack', 'communication', 'cask');
-- INSERT INTO software(name, category, method) VALUES ('snagit', 'support', 'cask');
-- INSERT INTO software(name, category, method) VALUES ('sonos', 'multimedia', 'cask');
INSERT INTO software(name, category, method) VALUES ('teamviewer', 'support', 'cask');
INSERT INTO software(name, category, method) VALUES ('torbrowser', 'browser', 'cask');
INSERT INTO software(name, category, method) VALUES ('vagrant', 'dev', 'cask');
INSERT INTO software(name, category, method) VALUES ('visual-studio-code', 'programming', 'cask');
INSERT INTO software(name, category, method) VALUES ('virtualbox', 'dev', 'cask');
INSERT INTO software(name, category, method) VALUES ('vlc', 'multimedia', 'cask');
-- INSERT INTO software(name, category, method) VALUES ('vmware-fusion', 'dev', 'cask');
-- INSERT INTO software(name, category, method) VALUES ('wacom-intuos-tablet', 'driver', 'cask');
INSERT INTO software(name, category, method) VALUES ('whatsapp', 'communication', 'cask');

INSERT INTO software(name, category, method, info) VALUES ('497799835', 'programming', 'mas', 'Xcode');

-- INSERT INTO software(name, category, method, info) VALUES ('1090488118', 'core', 'mas', 'gemini 2');
-- INSERT INTO software(name, category, method, info) VALUES ('405399194', 'core', 'mas', 'kindle');
-- INSERT INTO software(name, category, method, info) VALUES ('1063996724', 'core', 'mas', 'Tyme 2');
-- INSERT INTO software(name, category, method, info) VALUES ('494803304', 'core', 'mas', 'WiFi Explorer');
-- INSERT INTO software(name, category, method, info) VALUES ('409183694', 'office', 'mas', 'keynote');
-- INSERT INTO software(name, category, method, info) VALUES ('409201541', 'office', 'mas', 'pages');
-- INSERT INTO software(name, category, method, info) VALUES ('409203825', 'office', 'mas', 'numbers');
-- INSERT INTO software(name, category, method, info) VALUES ('424389933', 'multimedia', 'mas', 'final cut pro');
-- INSERT INTO software(name, category, method, info) VALUES ('424390742', 'multimedia', 'mas', 'compressor');
-- INSERT INTO software(name, category, method, info) VALUES ('425264550', 'core', 'mas', 'blackmagic disk speed test');
-- INSERT INTO software(name, category, method, info) VALUES ('425424353', 'core', 'mas', 'the unarchiver');
-- INSERT INTO software(name, category, method, info) VALUES ('430255202', 'core', 'mas', 'mactracker');
-- INSERT INTO software(name, category, method, info) VALUES ('434290957', 'multimedia', 'mas', 'motion');
-- INSERT INTO software(name, category, method, info) VALUES ('572280828', 'core', 'mas', 'MacFamilyTree');
-- INSERT INTO software(name, category, method, info) VALUES ('634148309', 'multimedia', 'mas', 'logic pro x');
-- INSERT INTO software(name, category, method, info) VALUES ('634159523', 'multimedia', 'mas', 'main stage');
INSERT INTO software(name, category, method, info) VALUES ('715768417', 'core', 'mas', 'Microsoft Remote Desktop');
-- INSERT INTO software(name, category, method, info) VALUES ('801463932', 'games', 'mas', 'stockfish');
-- INSERT INTO software(name, category, method, info) VALUES ('824183456', 'multimedia', 'mas', 'affinity photo');

INSERT INTO software(name, category, method, info) VALUES ('441258766', 'core', 'mas', 'Magnet');
INSERT INTO software(name, category, method, info) VALUES ('425955336', 'multimedia', 'mas', 'Skitch');
