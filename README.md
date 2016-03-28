# dotfiles
Some of my configuration files that I want to be able to access remotely.

## .Xresources
This contains configurations for the terminals XTerm and URxvt.

### .Xresources-*
These files are all `#include`d through the main .Xresources file. A bit baroque to have so many config files, but using just the one was starting to get unwieldy. This is helping to keep things organized.

### .Xresources-solarized
Ethan Schoonover's famous [Solarized](http://ethanschoonover.com/solarized) color scheme. Modified to specifically target XTerm and URxvt terminals while ignoring other X applications. The URxvt set of options includes true RGBA transparency support and coloration of the tab bar in the same style as the line number bar in Vim.

Works great in Debian/GNOME3.

## .inputrc
Options for the GNU Readline library, used in many command-line applications including Bash and MySQL. This short config uses vi-like line editing. Still getting used to having two modes on the command line, but so far it beats the Emacs mode that has been shoved down our throats all these years. Alt-left and Alt-right have never worked consistently across platforms anyway, and all those modifier keys give me carpal tunnel.

## .vimrc
Vim options.
