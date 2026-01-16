#!/bin/sh

module purge
source /opt/cray/pe/cpe/23.12/restore_lmod_system_defaults.sh
module load PrgEnv-intel/8.5.0
module load cray-hdf5-parallel/1.12.2.9
module load cray-python/3.11.7
export LD_LIBRARY_PATH=/opt/cray/pe/python/3.11.5/lib:$LD_LIBRARY_PATH
make -j 8


# cori (retired)
#module load craype-haswell PrgEnv-intel cray-mpich cray-hdf5-parallel
#make machine=cori_hsw -j 8
#make machine=cori_hsw config=verbose -j 16
