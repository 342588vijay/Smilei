#!/bin/sh

module load intel/19.1.1 
module load impi/19.0.9   
#module load python2/2.7.16
module load python3/3.9.2
export PYTHONEXE=python3


#export HDF5_ROOT_DIR=$HOME/src/hdf5/1.12.0-threadsafe
export HDF5_ROOT_DIR=$HOME/src/hdf5/1.12.0

#this is new
#export LD_LIBRARY_PATH=$HDF5_ROOT_DIR/lib:$CONDA_PREFIX/lib:$LD_LIBRARY_PATH
#export CPATH=$HDF5_ROOT_DIR/include:$CPATH
#export LIBRARY_PATH=$HDF5_ROOT_DIR/lib:$LIBRARY_PATH
#export PYTHON_EXECUTABLE=$CONDA_PREFIX/bin/python

make -j 16
