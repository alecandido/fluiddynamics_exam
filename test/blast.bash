source $(dirname ${BASH_SOURCE[0]})/_setup.bash

# Running an example calculation
# ------------------------------
mkdir -p ../_runs/blast
pushd ../_runs/blast

../../phantom/scripts/writemake.sh sedov >Makefile
cat Makefile
make
make setup
# setup with 15 particles (bare minimum: 8)
printf "15\n" | ./phantomsetup blast
ls -l

# actual run
./phantom blast.in

source $SRCDIR/_close.bash
