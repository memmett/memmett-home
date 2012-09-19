# .bash_profile

export PROJECTS=$HOME/projects
export PYPFASST=$PROJECTS/pypfasst
export PFASST=$PROJECTS/pfasst
export BOXLIB_HOME=$PROJECTS/BoxLib

PYTHONPATH=$PFASST:$PYPFASST
PYTHONPATH=$PYTHONPATH:$BOXLIB_HOME/Src/Python
PYTHONPATH=$PYTHONPATH:$PROJECTS/sympy:$PROJECTS/pyweno
PYTHONPATH=$PYTHONPATH:$PROJECTS/pyasy
PYTHONPATH=$PYTHONPATH:/usr/lib64/python2.7/site-packages/mpich2
#PYTHONPATH=$PYTHONPATH:$HOME/VEnv/mpich2/lib/python2.7/site-packages/
export PYTHONPATH

export PATH=$HOME/opt/bin:$HOME/bin:$PATH:$PFASST/bin
export LD_LIBRARY_PATH=$HOME/opt/lib:$HOME/opt/lib64:$BOXLIB_HOME/Src/Python

#source $PROJECTS/claw/activate

source $HOME/.bashrc
