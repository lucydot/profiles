# Lucy's bash profile (Curie)
# see .ssh/config for ssh aliases
# computer specific aliases (slurm etc) on respective .bash_profiles


#aliases
alias gotom='cd ~/Dropbox/Science/Projects/effective_mass' 
alias delete-output='rm CHG CHGCAR CONTCAR DOSCAR EIGENVAL IBZKPT OSZICAR OUTCAR PCDAT REPORT vasprun.xml WAVECAR XDATCAR'
alias weatherbham='curl http://wttr.in/birmingham'
alias weatherlondon='curl http://wttr.in/london'
alias ipn='ipython notebook'
alias cpu='echo time $(uptime) && echo $(sysctl -n hw.ncpu) cores on $(hostname)'
# hugo aliases
alias minify-theme='curl -X POST -s --data-urlencode 'input@theme.css' http://cssminifier.com/raw > theme.min.css'
alias sublime='open -a /Applications/Sublime\ Text.app/'

#functions
function vestaview { cp "$1" "$1".vasp ; open "$1".vasp ; rm "$1".vasp;}
function doitobib { curl -LH "Accept: text/bibliography; style=bibtex" https://doi.org/$1 ;}

# git aliases 
alias gp='git push'
alias gc='git commit'
alias gca='git commit -a'
alias gcm='git commit -m'
alias gcam='git commit -am'
alias gcA='git commit -A'


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


#path to python code
PYTHONPATH="/Users/lucydot/effmass/python:/Users/lucydot/scripts:/Users/lucydot/projects/nr-recombo/src:/Users/lucydot/Applications/ascii-phonons/:/Applications/:/Users/lucydot/scripts:/Users/lucydot/scripts/vaspscripts:/Users/lucydot/scripts/vaspscripts/vasptools/:/Users/lucydot/scripts/vaspscripts/vasptools/vasptools/:${PATH}"
export PYTHONPATH

#path to executable programs
PATH="/Users/lucydot/bin:~/Library/Python/2.7/bin:~/.local/bin:/Users/lucydot/Applications/phonopy/phonopy-1.11.0/bin:/Users/lucydot/effmass/bin:/Users/lucydot/Applications/vasp/vasp.5.4.1/bin:/Users/lucydot/projects/nr-recombo/src:/Users/lucydot/Applications/ascii-phonons/:/Applications/:~/Applications/band_unfolding/bandUP_bin/:${PATH}"
export PATH

#c/fortran
# export CC=/usr/local/bin/icc
# export FC=/usr/local/bin/ifort
# source /opt/intel/mkl/bin/mklvars.sh intel64
# source /opt/intel/bin/compilervars.sh intel64

# hopefully with my move to conda I won't need to mess with PYTHONPATH variables anymore
#PYTHONPATH=":${PATH}"
#export PYTHONPATH


# I'll try and be really strict and keep a nice symlinked folder
# PATH="$HOME/bin/:${PATH}"
# export PATH

#stack size
ulimit -Ss unlimited

#open-mpi
# export DYLD_LIBRARY_PATH=$DYLD_LIBRARY_PATH:/usr/local/openmpi-2.0.1/lib
# export PATH=./:/usr/local/openmpi-2.0.1/bin:$PATH
# export OMP_NUM_THREADS=1

#greet me please

echo "Hey Lucy"

# added by Anaconda3 4.4.0 installer
export PATH="/Users/lucydot/anaconda/bin:$PATH"


whoami | figlet 
fortune

# neat terminal
export PS1="$ "


