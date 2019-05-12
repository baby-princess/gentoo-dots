# sets my path
set -x PATH /usr/local/bin /usr/sbin /home/bp/.local/bin/ /home/bp/.scripts/ /home/bp/.cargo/bin /home/bp/.source/webkit2gtk-webextension-rs/gir/target/bin/ /home/bp/.rvm/bin/ /usr/local/include /usr/local/lib /usr/local/go/bin /usr/lib64 $PATH
set -x BROWSER palemoon
set -x GIMP2_DIRECTORY /home/bp/.config/gimp-2.8/
set -x EDITOR nvim
# sets greeting
set fish_greeting "Hello" $USER "welcome to FISH - the Friendly Interactive SHell :)"
# test for login and startx on login
status --is-login; if test -z "$DISPLAY"; exec startx; end 
fish_default_key_bindings
fish_vi_key_bindings

#functions
function fish_mode_prompt
end

function pirate-bay --description="automated piracy"
./.scripts/automagnetaddition & 
pirate-get -M $argv
sudo killall automagnetaddition
end

function mintimer --description="makes a timer system for a inputed number of minutes"
	termdown $argv"m"
	mpv ~/.config/timer/Dial_up.opus
end

function suckless --description="clones a tool from suckless.org's git"
	git clone https://git.suckless.org/$argv
end
# test function (to test grep and fzf toghter to search for a string in a file
function search_test
	du -a work | awk '{print $2}' | grep -Ev ".swp|.swo" | fzf | xargs cat | xargs -0 tr "\n" "" | xargs grep "$argv"
end

function sec
	du -a ~/.scripts ~/.config | awk '{print $2}' | grep -Ev ".swp|.swo" | fzf | xargs -r $EDITOR
end

function sew
	du -a ~/work | awk '{print $2}' | grep -Ev ".swp.swo" | fzf | xargs -r $EDITOR
end

function sep
	du -a ~/general_programming | awk '{print $2}' | grep -Ev ".swp|.swo" | fzf | xargs -r $EDITOR
end

function sem
	du -a ~/Music | awk '{print $2}' | grep -Ev ".swp|.swo" | fzf
end

function clipboard-add
	xclip -selection clip
	xclip -selection p
	xclip -selection sec
end

# general shortcuts
abbr v "nvim"
abbr sv "sudo nvim"
abbr y "cp -r"
abbr d "rm -rf"
abbr q "exit"
abbr g "gimp"
abbr gpgkey1 "cat ~/.gnupg/baby_princess_thinkpad.gpg | clipboard-add"
abbr gpgkey2 "cat ~/.gnupg/matt_mods.gpg | clipboard-add"
abbr build "make;sudo make install"

# kernel building
abbr ke "cd /usr/src/linux; sudo make menuconfig"
abbr bke "cd /usr/src/linux; sudo make; sudo make modules_install; sudo make firmware; sudo make install; sudo genkernel --install initramfs; sudo grub-mkconfig -o /boot/grub/grub.cfg"


# screenshot related
abbr s "maim -o -s | xclip -selection clipboard -t image/png"
abbr ss "maim -o -s /tmp/ss.png; and echo 'screenshot saved to /tmp/ss.png'"
abbr ne "neofetch"
abbr nes "neofetch; maim -o -s | xclip -selection clipboard -t image/png"
abbr ness "neofetch;maim -o -s /tmp/ss.png; and echo 'image saved at /tmp/ss.png'"
abbr tpb "pirate-bay"

# commands without having to type sudo
abbr shutdown "sudo shutdown -h now"
abbr reboot "sudo reboot"
abbr sv "sudo nvim"
abbr rc "sudo rc service"
abbr etc-update "sudo etc-update --automode -5"
abbr em "sudo emerge --ask"

# git related
abbr gc "git clone"
abbr gi "git init --bare"
abbr ga "git add"
abbr gcm "git commit -m"
abbr gs "git status"
abbr gp "git push origin master"
abbr gin "vim .gitignore"
abbr gd "git diff --staged"
abbr gr "git rm"
abbr gm "git mv"
abbr gl "git log"
abbr glp "git log -p -2"
abbr gri "git remote show origin"

# config files
abbr nbcfg "nvim .config/newsboat/config"
abbr nbl "nvim .config/newsboat/urls"
abbr dwmcfg "nvim ~/.dwm/config.h"
abbr sentcfg "nvim ~/.sent/config.h"
abbr stcfg "nvim .st/config.h"
abbr siccfg "nvim ~/.sic/config.h"
abbr mucfg "nvim ~/.config/mutt/config"
abbr vcfg "nvim ~/.vimrc"
abbr cccfg "nvim ~/.calcurse"
abbr fishcfg "nvim ~/.config/fish/config.fish"
abbr fishpr "nvim ~/.config/fish/functions/prompt.fish"
abbr disclinecfg "nvim ~/.config/Discline/config"

# misc
abbr cbib "nvim ~/work/ref.bib"
abbr ubib "nvim ~/work/uni.bib"
abbr cv "nvim ~/work/cv.tex"
abbr c "cmus"
abbr ff "ffmpeg -i"
abbr nb "newsboat -C ~/.config/newsboat/config -u ~/.config/newsboat/urls -c ~/.config/newsboat/cache.db"
abbr nm "neomutt -F ~/.config/mutt/muttrc"
abbr cc "calcurse -D ~/.config/calcurse"
abbr vpn "sudo /etc/init.d/openvpn start"
abbr discline "python3 ~/.Discline-Master/Discline.py"
abbr cb "xclip -selection primary"
abbr cbc "xclip -selection clip"
abbr cbs "xclip -selection sec"
abbr clip "clipboard-add"
abbr R "R -q --no-save"
abbr 4chan-cli "python ~/.source/chancli/chancli.py"
abbr msmtp "msmtp -C ~/.config/msmtprc"
abbr time "time -p"
abbr sic " sic -h "localhost" -p 6667 -n baby_princess"
abbr bitlbee "bitlbee -F -d ~/.config/bitlbee/"
abbr reddit "creddit -s"
#directory shortcuts
abbr bbd "clear; cd ~/general_programming/baby-bot/; ls"
abbr sgld "clear; cd ~/general_programming/simple-game-launcher/; ls"
abbr wsd "clear; cd ~/general_programming/websites/; ls"
abbr jwsd "clear; cd ~/general_programming/websites/james_duffys_website/; ls"
abbr ewsd "clear; cd ~/general_programming/websites/my_website/; ls"
abbr mwsd "clear; cd ~/general_programming/websites/matts_website/; ls"
abbr wd "clear; cd ~/work/; ls"
abbr pdfd "clear; cd ~/PDF/; ls"
abbr dd "clear; cd ~/Downloads/; ls"
abbr mud "clear; cd ~/Music/; ls"
abbr fod "clear; cd ~/general_programming/flossos/; ls"
abbr btd "clear; cd ~/general_programming/babysteps-and-testing/; ls"
abbr wcrd "clear; cd ~/general_programming/windows-cleanup-rewrite/; ls"
abbr u3d "clear; cd ~/work/unit-3; ls"
abbr u9d "clear; cd ~/work/unit-9; ls"
abbr eepd "clear; cd ~/work/EEP/; ls"
abbr unid "clear; cd ~/work/uni; ls"
abbr u21d "clear;cd ~/work/unit-21-virtualization/; ls"
abbr mtxd "sudo mount /dev/sdb1 /mnt/external_drive; cd /mnt/external_drive"
abbr imnt "ifuse /media/iphone"
# pywal colour syncing
cat /home/bp/.cache/wal/sequences
