export DYLD_LIBRARY_PATH=/opt/intel/mkl/lib/

# SSH aliases
# see .ssh/config for ssh aliases

alias python=python3
alias python2=python
alias pip=pip3
# Computer specific aliases (slurm etc) on respective .bash_profiles

alias gotom='cd ~/Dropbox/Science/analysis/m\*\ results/data/' 
# VASP specific aliases

alias delete-output='rm CHG CHGCAR CONTCAR DOSCAR EIGENVAL IBZKPT OSZICAR OUTCAR PCDAT REPORT vasprun.xml WAVECAR XDATCAR'

PYTHONPATH="/Users/lucywhalley/bin:/Users/lucywhalley/code/vasppy:/Users/lucywhalley/code/scripts/:${PATH}"
export PYTHONPATH

PATH="/Users/lucywhalley/bin:/Users/lucywhalley/code/vasppy/scripts:${PATH}"
export PATH
