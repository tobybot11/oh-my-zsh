# default options for 'less'
# -e or --quit-at-eof
#   Causes less to automatically exit the second time it reaches end-of-file.  By default, the only way to exit less is via the "q" command.
# -m or --long-prompt
#   Causes less to prompt verbosely (like more), with the percent into the file.  By default, less prompts with a colon.
# -M or --LONG-PROMPT
#   Causes less to prompt even more verbosely than more.
# -q or --quiet or --silent
#   Causes moderately "quiet" operation: the terminal bell is not rung if an attempt is made to scroll past the end of the file or before the beginning
#   of the file.  If the terminal has a "visual bell", it is used instead.  The bell will be rung on certain other errors, such as  typing  an  invalid
#   character.  The default is to ring the terminal bell in all such cases.
export LESS="eMq"

# TextMate
# from http://macromates.com/textmate/manual/bundles
export LC_CTYPE=en_US.UTF-8


# PATH
# next line to use gems installed without sudo
# export PATH="~/.gem/ruby/1.8/bin:$PATH"
# export PATH="/usr/local/bin:/usr/local/sbin:/usr/local/mysql/bin:$PATH"


# MacPorts Installer addition on 2010-02-12_at_00:35:06: adding an appropriate PATH variable for use with MacPorts.
# export PATH=/opt/local/bin:/opt/local/sbin:$PATH
# Finished adapting your PATH environment variable for use with MacPorts.



# EDITORS
export GEM_OPEN_EDITOR=mate
export GIT_EDITOR=/usr/bin/vi
# export EDITOR=/usr/bin/vi
export VISUAL="/usr/bin/mate -w"
export GEMEDITOR="/usr/bin/mate"
# export WEBBY_EDITOR="/usr/bin/mate"
