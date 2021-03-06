# path
export PATH=$HOME/bin:$PATH

# include path
#export CPATH=$HOME/include:$CPATH
#export CPLUS_INCLUDE_PATH=$HOME/include:$CPLUS_INCLUDE_PATH

# library path
#export LD_LIBRARY_PATH=$HOME/lib:$LD_LIBRARY_PATH
#export LIBRARY_PATH=$LD_LIBRARY_PATH

# compile options
#export LDFLAGS="-L$(echo $LD_LIBRARY_PATH | sed 's/:/ -L/g')"
export CXX_FLAGS="-Wall -pedantic-errors"
export CXX_FLAGS_RELEASE="-O3 -march=native"
export CXX_FLAGS_RELEASE_EM="-O3"
export CXX_FLAGS_DEBUG="-O0 -g"

# c++ aliases
alias c++="c++ $CXX_FLAGS"
alias c++.release="c++ $CXX_FLAGS_RELEASE"
alias c++.debug="c++ $CXX_FLAGS_DEBUG"
alias c++0x="c++ $CXX_FLAGS --std=c++0x"
alias c++0x.release="c++ $CXX_FLAGS_RELEASE --std=c++0x"
alias c++0x.debug="c++ $CXX_FLAGS_DEBUG --std=c++0x"
alias c++11="c++ $CXX_FLAGS -std=c++11"
alias c++11.release="c++ $CXX_FLAGS_RELEASE -std=c++11"
alias c++11.debug="c++ $CXX_FLAGS_DEBUG -std=c++11"
alias c++1y="c++ $CXX_FLAGS -std=c++1y"
alias c++1y.release="c++ $CXX_FLAGS_RELEASE -std=c++1y"
alias c++1y.debug="c++ $CXX_FLAGS_DEBUG -std=c++1y"
alias c++14="c++ $CXX_FLAGS -std=c++14"
alias c++14.release="c++ $CXX_FLAGS_RELEASE -std=c++14"
alias c++14.debug="c++ $CXX_FLAGS_DEBUG -std=c++14"

# g++ aliases
alias g++="g++ $CXX_FLAGS"
alias g++.release="g++ $CXX_FLAGS_RELEASE"
alias g++.debug="g++ $CXX_FLAGS_RELEASE"
alias g++0x="g++ $CXX_FLAGS --std=c++0x"
alias g++0x.release="g++ $CXX_FLAGS_RELEASE --std=c++0x"
alias g++0x.debug="g++ $CXX_FLAGS_DEBUG --std=c++0x"
alias g++11="g++ $CXX_FLAGS -std=c++11"
alias g++11.release="g++ $CXX_FLAGS_RELEASE -std=c++11"
alias g++11.debug="g++ $CXX_FLAGS_DEBUG -std=c++11"

# clang++ aliases
alias clang++="clang++ $CXX_FLAGS"
alias clang++.release="clang++ $CXX_FLAGS_RELEASE"
alias clang++.debug="clang++ $CXX_FLAGS $CXX_FLAGS_DEBUG"
alias clang++11="clang++ $CXX_FLAGS -std=c++11"
alias clang++11.release="clang++ $CXX_FLAGS_RELEASE -std=c++11"
alias clang++11.debug="clang++ $CXX_FLAGS_DEBUG -std=c++11"

# em++ aliases
alias em++="em++ $CXX_FLAGS"
alias em++.release="em++ $CXX_FLAGS_RELEASE_EM"
alias em++.debug="em++ $CXX_FLAGS_DEBUG"
alias em++11="em++ $CXX_FLAGS -std=c++11"
alias em++11.release="em++ $CXX_FLAGS_RELEASE_EM -std=c++11"
alias em++11.debug="em++ $CXX_FLAGS_DEBUG -std=c++11"
alias em++1y="em++ $CXX_FLAGS -std=c++1y"
alias em++1y.release="em++ $CXX_FLAGS_RELEASE_EM -std=c++1y"
alias em++1y.debug="em++ $CXX_FLAGS_DEBUG -std=c++1y"
alias em++14="em++ $CXX_FLAGS -std=c++14"
alias em++14.release="em++ $CXX_FLAGS_RELEASE_EM -std=c++14"
alias em++14.debug="em++ $CXX_FLAGS_DEBUG -std=c++14"
