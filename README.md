# gentoo-dots
a collection of my dot files.

a note about the suckless tools:

they do not use config files, if you wish to use the config.h files, please symlink them to the specific tools source tree with `ln -s .config/<tool>/config.h <output>/config.h`

there may be things missing from the below list, please do not be alarmed if the list seems short, there are probably a lot of thing i have forgotten. Like wise there may also be some dotfiles i missed.


## key:
S - Suckless.org

G - git (not suckless)

P - package manager ( in this case portage)

## programs
| Program | purpose | from |
| --- | --- | :---: |
| st | the terminal i use | S |
| DWM | the window manager i use | S |
| sent | simple presentations | S |
| dmenu | a menu system | S |
| sic | a very simple IRC client | S |
| ii | a fifo  based IRC client | S |
| quark | a simple web server used more on my server | S |
| farbifeld | a simple image algorithm | S |
| surf | a simple tabless web browser | S |
| slock | the simple lock screen | S |
| xclip | a clipboard manager | P |
| cmus | a music player wrote in C | G |
| ffmpeg | a command line video processor | G |
| fzf | a fuzzy finder wrote in go | P |
| mpv | a simple video player | P |
| maim | a screenshot program | P |
| neo mutt | a terminal based mail client | P |
| neofetch | a bash script to display system information | P |
| rustup | the rust init for allow for compilation support of rust | G |
| nmap | a network scanner | G |
| urlscan | a url handler | G |
| fish | the shell im using | G |
| sxiv | the simple image viewer | G |
| rtorrent | a command line torrent client | G |
| transmission remote cli | another cli torrent client | P |
| unrar | a tool to handle rar archives | P |
| git | a version control system | P |
| subversion | a (pretty bad) version control system | P |
| xsetroot | sets the root on window managers | P |
| wpa_supplicant | used to allow me to connect to wireless networks | P |
| palemoon | the web browser i mainly use | G |
| bitlbee | allows for IM connections over IRC | G |
| bitlbee-discord | a discord plugin for bitlbee to allow me to use discord without the offical client | G |
| lutris | allows me to run my games | G |
| steam (yes i know propatiary :() | only used to open games that need steam | P |
| retroarch | used to lanch older games | P |
| isync | used to sync my mail, replacment for offline imap | P |
| offline imap | used to sync emails, being replaced with isync | P |
| newsboat | used to keep up with websites through there RSS feeds | P |
| neovim | an imporved VIM fork | P |
| pywal | used to generate colurschemes from my wallpaper | G |
| youutbe-viewer | allows me to view youtube without opening the youutbe site | P |
| youtube-dl | allows me to download videos from alot of diffrent sites | G |
| zathura | a minimal PDF reader | P |
| shellcheck | used to check shell scripts | G |
| R | a beefed up calculator | P |
| biber | used to reference a biblogrophy file into latex documents | P |
| pdflatex | used to allow me to compile latex files into PDF's | P |
| nodejs | used to allow me to run nodejs | P |
| npm | used to allow me to install nodejs modules | P |
| smu | a simple markdown to html converter | G |
| GNU net | a annoymous peer to peer network | G |
| sudo | used to gain root accsess | P |
| doas | used to gain root accsess | G |
| pandoc | used to convert files | P |
| cReddit | used to browse reddit from the command line | G |
| ChanCLI | used to browse 4chan from the command line | G |
| geomyidae | used to allow me to accsess gopher sites | G |
| irssi | another command line IRC client | G |
| nhentai | used to download lewd manga from the command line | G |
| notmuch | email indexing and searching | G |
| pirate-get | used to allow me to brose the pirate bay from the command line | G |
| stagit | a static git page generator | G |
| staait | a static page generator | G |
| stagit-gopher | used to generate static gopher pages | G |
| mat2 | used to clean up metadata on files | G |
| flaggie | used to set use flags in portage | G |
| tor-browser | used to allow me to connect to the TOR network | G |
| xurls | link handler wrote in go | G |
| wine | used to allow me to run the few windows programs i need | P |
| qemu | used to create and manage virtual machines | G |
| spice | used to conenct to my virtual machines | P |
| GIMP | used to edit images | P |
| uberzug | used to display images in the terminal | G |

## palemoon plugins
* adblock lattitude
* stylem (currently disabled)
* pentadtycal (currently does not work, as of the latest version of palemoon)

## neovim plugins
| name | what it does | where to get it |
| --- | --- | --- |
| plug | the plugin manager i use | https://github.com/junegunn/plug.vim |
| goyo | centers text to make it easier for reading | https://github.com/junegunn/goyo.vim |
| wal | provides pywal coloring in vim | https://github.com/dylanaraps/wal |
| nerdtree | provides a nicer file browser | https://github.com/scrooloose/nerdtree |
| vim-ps1 | syntax suport for powershell | https://github.com/PProvost/vim-ps1 |
| vim-cmus | allows me to control cmus from vim | https://github.com/azadkuh/vim-cmus |
| discord-nvim | provides rich presitance for neovim in discord ( will be removing as i no longer use the officla client) | https://dgithub.com/aurieh/discord.nvim |
