# [ubuntu-initial-setup](https://github.com/ultreson/ubuntu-initial-setup)

> [html version of this README](https://ultreson.github.io/ubuntu-initial-setup/)

 - `sudo ufw allow from 192.168.0.0/16` _enable local connections_
 - `sudo ufw allow ssh` _enable ssh_
 - `sudo apt update` _updates repositories_
 - `sudo apt dist-upgrade` _upgrades packages to latest version_
 - `sudo apt install ubuntu-restricted-extras $(check-language-support)` _installs Microsoft fonts, extra media decoders and missing translations_
 - Install packages I need from under [packages.sh](./packages.sh)
 - Start firefox
    - login to firefox sync
    - enable bookmark bar
 - `sudo snap install --classic code` _installs [VSCode](https://code.visualstudio.com/docs/setup/linux)_
 - SSH
    - [Install headless x server for remote windows](https://gist.github.com/ultreson/a614b7dc09ba32dd2dc2484e975ed947)
    - Reserve IP address in my router's DHCP config to keep it static within my local network
    - add new server to ~/.ssh/config of my main computer [_Resource on where to find this file found here_](https://stackoverflow.com/questions/58957203/how-do-we-remove-ssh-targets-from-remote-explorer)
    - Install VSCode remote server for access via SSH (via VSCode on main computer)
 - git
    - [generate ssh](https://gist.github.com/ultreson/98c6d47ca005ad598c8a05dcc71d98a6) -> [add ssh github](https://github.com/settings/ssh), [add ssh gitlab](https://gitlab.com/profile/keys)
    - `git config --global user.name "ultreson"` -> `git config --global user.email "ultreson@outlook.com"` -> `git config --global core.editor vim` -> `git config credential.helper store`

## References

 - [robkorv/ubuntu-post-install-todo](https://github.com/robkorv/ubuntu-post-install-todo)
 - [Code2Pro: How to Forward X11 to Windows 10 via PuTTY & vcxsrv](https://gist.github.com/vietlq/8b20d09fdfe5f02f8b511c7847df39ee)
 - [KrauseFx/markdown-to-html-github-style](https://github.com/KrauseFx/markdown-to-html-github-style) _HTML version of this README generate using this_
