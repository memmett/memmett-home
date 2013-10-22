# .bash_profile

LD_LIBRARY_PATH=$HOME/opt/lib:$HOME/opt/lib64:$LD_LIBRARY_PATH
PATH=$HOME/bin:$HOME/opt/bin:$HOME/bin:$PATH

export PROJECTS=$HOME/projects

if [ -d $PROJECTS/pypfasst ]; then
   export PYPFASST=$PROJECTS/pypfasst
   export PFASST=$PROJECTS/pfasst

   PYTHONPATH=$PYTHONPATH:$PFASST:$PYPFASST
   PATH=$PATH:$PFASST/bin
fi

if [ -d $PROJECTS/pyweno ]; then
   PYTHONPATH=$PYTHONPATH:$PROJECTS/pyweno
fi

if [ -d $PROJECTS/BoxLib ]; then
   export BOXLIB_HOME=$PROJECTS/BoxLib
   PYTHONPATH=$PYTHONPATH:$BOXLIB_HOME/Src/Python
fi

if [ -d $PROJECTS/SDCLib ]; then
   export SDCLIB_HOME=$PROJECTS/SDCLib
fi

if [ -d $HOME/openmm ]; then
   LD_LIBRARY_PATH=$HOME/openmm/lib:$LD_LIBRARY_PATH
   export OPENMM_PLUGIN_DIR=$HOME/openmm/lib/plugins
fi

if [ "$HOST" = "orga" ]; then
   LD_LIBRARY_PATH=$HOME/gcc-4.7/lib:$HOME/gcc-4.7/lib64:$LD_LIBRARY_PATH
   export CXXFLAGS=-D__USE_XOPEN2K8
   export MPICH_CC=/home/memmett/gcc-4.7/bin/gcc
   export MPICH_F90=/home/memmett/gcc-4.7/bin/gfortran
   export MPICH_CXX=/home/memmett/gcc-4.7/bin/g++
fi

export PATH
export PYTHONPATH
export LD_LIBRARY_PATH
