# =============
# = Processes =
# =============
alias tu="top -o cpu"   # cpu
alias tm="top -o vsize" # memory


# ===========
# = Utility =
# ===========
alias flushdns="dscacheutil -flushcache"
alias trash_size="du -skh ~/.trash | awk '{print $1}'"


# =========
# = Shell =
# =========
# -A  List all entries except for . and ..
# -F  Display a slash (`/') immediately after each pathname that is a directory, an asterisk (`*') after
#     each that is executable, an at sign (`@') after each symbolic link, an equals sign (`=') after each
#     socket, a percent sign (`%') after each whiteout, and a vertical bar (`|') after each that is a FIFO.
# -l  (The lowercase letter ``ell''.)  List in long format.  (See below.)  If the output is to a terminal,
#     a total sum for all the file sizes is output on a line before the long listing.
# -P  If argument is a symbolic link, list the link itself rather than the object the link references.
#     This option cancels the -H and -L options.
# -h  When used with the -l option, use unit suffixes: Byte, Kilobyte, Megabyte, Gigabyte, Terabyte and
#     Petabyte in order to reduce the number of digits to three or less using base 2 for sizes.
# -G  Enable colorized output (see `man ls` for details)
alias ls="/bin/ls -AFlPhG"

# -i  Cause mv to write a prompt to standard error before moving a file that would overwrite an existing file.
#     If the response from the standard input begins with the character `y' or `Y', the move is attempted.
#     (The -i option overrides any previous -f or -n options.)
alias mv="mv -i"

alias w='cd ~/work'
alias att='cd ~/work/att_synaptic'
# alias ..='cd ..'
# alias :='cd ..'
# alias ::='cd ../..'
# alias :::='cd ../../..'
# alias cdd="cd -"
alias h="history"
alias hg="history | grep"


# ==============
# = Management =
# ==============
alias resource="source $ZSH/oh-my-zsh.sh"
alias ea="aquamacs $ZSH/custom/alias.zsh && resource"
alias ez="aquamacs $ZSH && resource"
alias ag='alias | grep'


# ========
# = Ruby =
# ========
alias irbs='irb --simple-prompt'
alias glg='gem list | grep'
alias gi='gem install'
alias gup='gem update'
alias gun='gem uninstall'

# =========
# = Rails =
# =========
alias r="rails"
alias ss="./script/server"
alias sc="./script/console"
alias sg="./script/generate"
alias spi="./script/plugin install"
alias spu="./script/plugin remove"
alias spr="./script/plugin remove"
alias raket="RAILS_ENV=test rake"
alias rmig="rake db:migrate"
alias rml="rake db:migrate db:test:load"
alias rtl="rake db:test:load"
alias rlc="rake log:clear"
alias rtc="rake tmp:clear"
alias ttr="touch tmp/restart.txt"
alias ttrd="ttr tmp/restart.txt tmp/debug.txt"
alias cf="cucumber features/"
alias spsp="spec spec/"
alias be="bundle exec"

# ==========
# = Github =
# ==========
alias gh="github"

# ==========
# = Apache =
# ==========
alias apacheconf="sudo mate /etc/apache2/httpd.conf"
alias apacherestart="sudo apachectl restart"
alias apachestop="sudo apachectl stop"
alias apachestart="sudo apachectl start"
alias apachelogs="cd /var/log/apache2/"
# alias truncateapachelogs="apachestop && sudo rm -f /var/log/apache2/access_log /var/log/apache2/error_log && sudo kill -1 `cat /private/var/run/httpd.pid` && apachestart"
alias truncateapachelogs="apachestop && sudo rm -f /var/log/apache2/access_log /var/log/apache2/error_log && apachestart"

# =========
# = Nginx =
# =========
alias nginxconf="sudo mate /opt/nginx/conf/nginx.conf"
alias nginxstart="sudo /opt/nginx/sbin/nginx -c /opt/nginx/conf/nginx.conf"
alias nginxlog="cat /opt/nginx/logs/error.log"
alias nginxprocess="ps -aef | egrep '(PID|nginx)'"

# ============
# = TextMate =
# ============
alias tmbundles="cd ~/Library/Application\ Support/TextMate/Bundles/"
alias resettexmatefiledetection="defaults delete com.macromates.textmate OakLanguageFileBindings"


# =========
# = MySQL =
# =========
alias mysql=/usr/local/mysql/bin/mysql
alias mysqladmin=/usr/local/mysql/bin/mysqladmin
alias mysqlshutdown="sudo launchctl unload -w /Library/LaunchDaemons/com.mysql.mysqld.plist"
alias mysqlstartup="sudo launchctl load -w /Library/LaunchDaemons/com.mysql.mysqld.plist"


# ==============
# = Subversion =
# ==============
alias svnaddall='svn status | grep "^\?" | awk "{print \$2}" | xargs svn add'


# =================
# = Miscellaneous =
# =================
alias rcnotes='mate ~/work/RailsConf2008_notes.txt'
alias mountlacie="sudo /usr/local/bin/ntfs-3g /dev/disk1s1 /Volumes/Windows -o force,ping_diskarb,volname=Windows" # external Lacie drive
alias rmmysql="ssh -L 8888:localhost:3306 deploy@dhunter.railsmachina.com" # STC production/staging databases
alias bcmysql="ssh -p 30000 -L 8889:localhost:3306 george@benevolentcode.com" # BenevolentCode (Wordpress) databases
alias ppc="pwd | pbcopy"
# alias vim="/Applications/MacVim.app/Contents/MacOS/Vim"
alias a="aquamacs"

# =======
# = RVM =
# =======
alias rgn="rvm gemset name"
alias rgd="rvm gemdir"
alias rug="rvm use ree@global"
alias gld="gem list -d | egrep '\([0-9].*\)|Installed'"

# =========
# = ijump =
# =========
alias ijb="ssh tford@msubls01.emc.usi.net"
alias ija="ssh tford@mdsxaaw11.usi.net"
alias ij="ssh tford@mdsxaaw11.usi.net"

# ====================
# = Project-specific =
# ====================
alias deploy_synaptic_staging="git push github CAAS_master:CAAS_master && git push downstream CAAS_master:CAAS_master && cap staging deploy"
alias deploy_mock_emc_staging="git push github master:master && git push downstream master:master && cap staging deploy"
alias deploy_staas_staging="git push github pre_production_deploy:pre_production_deploy && git push downstream pre_production_deploy:pre_production_deploy && cap staas deploy"
alias wa="cd ~/work/att_synaptic"
alias wb="cd ~/work/bwfa"
alias ws="cd ~/work/stc_partner_plan"
alias was="cd ~/work/att_synaptic && git show"
alias wbs="cd ~/work/bwfa && git sh"
alias wss="cd ~/work/stc_partner_plan && git sh"
alias resetemc="cd ~/work/mock_emc_api/ && rake db:migrate:reset db:test:load db:populate && rake db:populate" 
alias resetatt="cd ~/work/att_synaptic && rake db:test:purge db:test:load && RAILS_ENV='test' rake db:populate"

alias p80="cd ~/work/att_synaptic; rvmsudo script/server -p 80"
alias p3013="cd ~/work/mock_emc_api; bundle exec unicorn_rails -p 3013"

