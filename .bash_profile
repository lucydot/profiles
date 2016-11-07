# Lucy's bash profile
# see .ssh/config for ssh aliases
# computer specific aliases (slurm etc) on respective .bash_profiles

#aliases
alias gotom='cd ~/Dropbox/Science/Projects/effective_mass' 
alias deilete-output='rm CHG CHGCAR CONTCAR DOSCAR EIGENVAL IBZKPT OSZICAR OUTCAR PCDAT REPORT vasprun.xml WAVECAR XDATCAR'
alias weatherbham='curl http://wttr.in/birmingham'
alias weatherlondon='curl http://wttr.in/london'

# Music aliases thanks to Jarvist
# Background noise; seen before elsewhere, but these are from: https://news.ycombinator.com/item?id=12851409
alias play-pinknoise="play -n -n --combine merge synth pinknoise band -n 1200 1800 tremolo 50 10 tremolo 0.14 70 tremolo 0.2 50 gain  -10"
alias play-ocean="play -n -n --combine merge synth pinknoise band -n 1200 1800 tremolo 50 10 tremolo 0.14 70 tremolo 0.2 50 gain  -10"
alias play-enterprise="play -c2 -n synth whitenoise band -n 100 24 band -n 300 100 gain +20"

# Internet Radios
# Soma FM
alias soma-dronezone='mplayer -playlist http://somafm.com/dronezone130.pls'
alias soma-groovesalad='mplayer -playlist http://somafm.com/groovesalad130.pls'
alias soma-defcon='mplayer -playlist http://somafm.com/defcon130.pls'

# BBC: What else do you need other than R4 and R6?  :)
# Latest working playlists from: https://gist.github.com/noodlebug/0e5e3754f4e8dbf608e72431b9c34484
alias r6='mplayer -playlist http://a.files.bbci.co.uk/media/live/manifesto/audio/simulcast/hls/nonuk/low/ak/bbc_6music.m3u8 '
alias r4=' mplayer -playlist http://a.files.bbci.co.uk/media/live/manifesto/audio/simulcast/hls/nonuk/low/ak/bbc_radio_fourfm.m3u8 '

#path variables
PYTHONPATH="/Users/lucydot/bin:/Users/lucydot/bin/phonopy-1.11.0/lib/python:/Users/lucydot/vasppy:/Users/lucydot/scripts/:${PATH}"
export PYTHONPATH

PATH="/Users/lucydot/bin:~/Library/Python/2.7/bin:/Users/lucydot/bin/phonopy-1.11.0/bin:/Users/lucydot/vasppy/scripts:/Users/lucydot/Applications/vasp/vasp.5.4.1/bin:${PATH}"
export PATH

#c/fortran
export CC=/usr/local/bin/icc
export FC=/usr/local/bin/ifort
source /opt/intel/mkl/bin/mklvars.sh intel64
source /opt/intel/bin/compilervars.sh intel64

#stack size
ulimit -Ss unlimited

#open-mpi
export DYLD_LIBRARY_PATH=$DYLD_LIBRARY_PATH:/usr/local/openmpi-2.0.1/lib
export PATH=./:/usr/local/openmpi-2.0.1/bin:$PATH
export OMP_NUM_THREADS=1

#greet me please
echo "Hey Lucy"
