# Firejail profile for gnome-clocks
# Description: Simple GNOME app with stopwatch, timer, and world clock support
# This file is overwritten after every install/update
# Persistent local customizations
include gnome-clocks.local
# Persistent global definitions
include globals.local


include disable-common.inc
include disable-devel.inc
include disable-interpreters.inc
include disable-passwdmgr.inc
include disable-programs.inc
include disable-xdg.inc

include whitelist-var-common.inc

caps.drop all
netfilter
no3d
nodvd
nogroups
nonewprivs
noroot
notv
nou2f
novideo
protocol unix,inet,inet6
seccomp
shell none
tracelog

disable-mnt
# private-bin gnome-clocks
private-dev
# private-etc fonts,ca-certificates,ssl,pki,crypto-policies
private-tmp

noexec ${HOME}
noexec /tmp
