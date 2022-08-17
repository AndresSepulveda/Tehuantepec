#!/bin/bash

# number of processors for MPI run
NBPROCS=20

# command for running the mode : ./ for sequential job, mpirun -np NBPROCS for mpi run
RUNCMD='./'
#RUNCMD="mpirun -np $NBPROCS "

#
#  Define environment variables for OPENMP
#
OMP_SCHEDULE=static
export OMP_NUM_THREADS=20
OMP_DYNAMIC=false
OMP_NESTED=false
KMP_LIBRARY=throughput
KMP_STACKSIZE=2m
KMP_DUPLICATE_LIB_OK=TRUE
ulimit -u unlimited
./croco croco.in
