module switch PrgEnv-cray/8.3.3 PrgEnv-nvhpc
module load friendly-testing
module load nvhpc/22.11

# export MPI_HOME="${NVHPC_ROOT}/comm_libs/hpcx/latest/ompi"
export MPI_HOME="${NVHPC_ROOT}/comm_libs/mpi"
export CUFFT_LIB="${NVHPC_ROOT}/math_libs/lib64/"
export CUFFT_INC="${NVHPC_ROOT}/math_libs/include/cufftmp"
export NVSHMEM_LIB="${NVHPC_ROOT}/comm_libs/nvshmem/lib"
export NVSHMEM_INC="${NVHPC_ROOT}/comm_libs/nvshmem/include"
export MPI="mpi"
export LD_LIBRARY_PATH="$NVHPC_ROOT/math_libs/11.8/lib64/compat/nvshmem_2.6.0-1/:$LD_LIBRARY_PATH