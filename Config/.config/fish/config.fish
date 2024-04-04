set -g fish_greeting

if status is-login
    if test (tty) = /dev/tty1
       startx
    end
end