# Initialize variables
set -g _distro ""
set -g _device ""
set -g ICON ""
set -g DEVICE ""

switch (uname)
    case "Darwin"
        set -g _distro "macos"
        set -g _device (system_profiler SPHardwareDataType | awk '/Model Name/ {print $3,$4,$5,$6,$7}')
    case "Linux"
        if test -f $LFILE
            set -g _distro (awk '/^ID=/' /etc/*-release | awk -F'=' '{ print tolower($2) }')
        end
        set -g _device (uname -a | awk '{print $3}') # set -g _device (uname -a | awk '{print $3}' | awk -F'-' '{print tolower($4)}')
    case "*"
        set -g _distro ""
end

switch $_distro
    case "*kali*"
        set -g ICON "ﴣ "
    case "*arch*"
        set -g ICON " "
    case "*debian*"
        set -g ICON " "
    case "*raspbian*"
        set -g ICON " "
    case "*ubuntu*"
        set -g ICON " "
    case "*elementary*"
        set -g ICON " "
    case "*fedora*"
        set -g ICON " "
    case "*coreos*"
        set -g ICON " "
    case "*gentoo*"
        set -g ICON " "
    case "*mageia*"
        set -g ICON " "
    case "*centos*"
        set -g ICON " "
    case "*opensuse*" "*tumbleweed*"
        set -g ICON " "
    case "*sabayon*"
        set -g ICON " "
    case "*slackware*"
        set -g ICON " "
    case "*linuxmint*"
        set -g ICON " "
    case "*alpine*"
        set -g ICON " "
    case "*aosc*"
        set -g ICON " "
    case "*nixos*"
        set -g ICON " "
    case "*devuan*"
        set -g ICON " "
    case "*manjaro*"
        set -g ICON " "
    case "*rhel*"
        set -g ICON " "
    case "*macos*"
        set -g ICON " "
    case "*docker*"
        set -g ICON " "
    case "*"
        set -g ICON " "
end

switch $_device
    case "*MacBook*"
        set -g DEVICE " "
    case "*mini*"
        set -g DEVICE "󰇄 "
    case "wsl2" "wsl" "*microsoft*"
        set -g DEVICE "󰻀 "
    case "*raspberry*"
        set -g DEVICE "󰐿 "
    case "*"
        set -g DEVICE "󱓇 "
end

# Export the variables
set -x STARSHIP_DISTRO "$ICON"
set -x STARSHIP_DEVICE "$DEVICE"
