MIRROR="http://archive.ubuntu.com/ubuntu/"
SUITE="jammy"

# update sources.list [Only for ubuntu suites]
cat <<-EOF > /etc/apt/sources.list
# See http://help.ubuntu.com/community/UpgradeNotes for how to upgrade to
# newer versions of the distribution.
deb $MIRROR $SUITE main restricted
# deb-src $MIRROR $SUITE main restricted
## Major bug fix updates produced after the final release of the
## distribution.
deb $MIRROR $SUITE-updates main restricted
# deb-src $MIRROR $SUITE-updates main restricted
## N.B. software from this repository is ENTIRELY UNSUPPORTED by the Ubuntu
## team. Also, please note that software in universe WILL NOT receive any
## review or updates from the Ubuntu security team.
deb $MIRROR $SUITE universe
# deb-src $MIRROR $SUITE universe
deb $MIRROR $SUITE-updates universe
# deb-src $MIRROR $SUITE-updates universe
## N.B. software from this repository is ENTIRELY UNSUPPORTED by the Ubuntu
## team, and may not be under a free licence. Please satisfy yourself as to
## your rights to use the software. Also, please note that software in
## multiverse WILL NOT receive any review or updates from the Ubuntu
## security team.
deb $MIRROR $SUITE multiverse
# deb-src $MIRROR $SUITE multiverse
deb $MIRROR $SUITE-updates multiverse
# deb-src $MIRROR $SUITE-updates multiverse
## N.B. software from this repository may not have been tested as
## extensively as that contained in the main release, although it includes
## newer versions of some applications which may provide useful features.
## Also, please note that software in backports WILL NOT receive any review
## or updates from the Ubuntu security team.
deb $MIRROR $SUITE-backports main restricted universe multiverse
# deb-src $MIRROR $SUITE-backports main restricted universe multiverse
EOF
