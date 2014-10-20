set(CMAKE_SYSTEM_NAME Linux)

# Set compilers (assumes the compilers are in the PATH)
set(CMAKE_C_COMPILER gcc)
set(CMAKE_CXX_COMPILER g++)
set(MPI_C_COMPILER mpicc)
set(MPI_CXX_COMPILER mpicxx)

# Set compile flags
set(CMAKE_C_FLAGS_INIT             "-std=c99" CACHE STRING "Inital C compile flags")
set(CMAKE_C_FLAGS_DEBUG            "-g -Wall" CACHE STRING "Inital C debug compile flags")
set(CMAKE_C_FLAGS_MINSIZEREL       "-Os -march=native -DNDEBUG" CACHE STRING "Inital C minimum size release compile flags")
set(CMAKE_C_FLAGS_RELEASE          "-O3 -march=native -DNDEBUG" CACHE STRING "Inital C release compile flags")
set(CMAKE_C_FLAGS_RELWITHDEBINFO   "-O2 -g -Wall" CACHE STRING "Inital C release with debug info compile flags")
set(CMAKE_CXX_FLAGS_INIT           "-std=c++11" CACHE STRING "Inital C++ compile flags")
set(CMAKE_CXX_FLAGS_DEBUG          "-g -Wall" CACHE STRING "Inital C++ debug compile flags")
set(CMAKE_CXX_FLAGS_MINSIZEREL     "-Os -march=native -DNDEBUG" CACHE STRING "Inital C++ minimum size release compile flags")
set(CMAKE_CXX_FLAGS_RELEASE        "-O3 -march=native -DNDEBUG" CACHE STRING "Inital C++ release compile flags")
set(CMAKE_CXX_FLAGS_RELWITHDEBINFO "-O2 -g -Wall" CACHE STRING "Inital C++ release with debug info compile flags")

# Set BLAS/LAPACK flags
if($ENV{MKLROOT} AND EXISTS $ENV{MKLROOT})
  set(MKLROOT "$ENV{MKLROOT}")
else()
  set(MKLROOT "/opt/apps/intel/13.1/mkl")
endif()

set(BLAS_LIBRARIES "-Wl,--start-group;${MKLROOT}/lib/intel64/libmkl_intel_lp64.a;${MKLROOT}/lib/intel64/libmkl_core.a;${MKLROOT}/lib/intel64/libmkl_sequential.a;-Wl,--end-group;-lpthread;-lm" CACHE STRING "BLAS linker flags")
set(LAPACK_LIBRARIES "${BLAS_LIBRARIES};-ldl" CACHE STRING "LAPACK linker flags")
set(INTEGER4 TRUE CACHE BOOL "Set Fortran integer size to 4 bytes")

# Set BOOST directory
set(BOOST_ROOT "$ENV{BOOST_DIR}" CACHE STRING "Boost root directory")