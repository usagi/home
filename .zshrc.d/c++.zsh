# include path
export CPLUS_INCLUDE_PATH=$HOME/opt/include:$CPLUS_INCLUDE_PATH

# compile options
export CXX_FLAGS_RELEASE="-std=c++11 -O3 -march=native -Wall -pedantic-errors"
export CXX_FLAGS_DEBUG="-std=c++11 -O0 -g -Wall -pedantic-errors"

# c++ aliases
alias c++="c++ $CXX_FLAGS_RELEASE"
alias c++.debug="c++ $CXX_FLAGS_DEBUG"
alias c++0x="c++ $CXX_FLAGS_RELEASE --std=c++0x"
alias c++0x.debug="c++ $CXX_FLAGS_DEBUG --std=c++0x"
alias c++11="c++ $CXX_FLAGS_RELEASE -std=c++11"
alias c++11.debug="c++ $CXX_FLAGS_DEBUG -std=c++11"
alias c++14="c++ $CXX_FLAGS_RELEASE -std=c++14"
alias c++14.debug="c++ $CXX_FLAGS_DEBUG -std=c++14 "

# g++ aliases
alias g++="g++ $CXX_FLAGS_RELEASE"
alias g++.debug="g++ $CXX_FLAGS_RELEASE"
alias g++0x="g++ $CXX_FLAGS_RELEASE --std=c++0x"
alias g++0x.debug="g++ $CXX_FLAGS_DEBUG --std=c++0x"
alias g++11="g++ $CXX_FLAGS_RELEASE -std=c++11"
alias g++11.debug="g++ $CXX_FLAGS_DEBUG -std=c++11"

# clang++ aliases
alias clang++="clang++ $CXX_FLAGS_RELEASE"
alias clang++.debug="clang++ $CXX_FLAGS_DEBUG"
alias clang++11="clang++ $CXX_FLAGS_RELEASE --std=c++11"
alias clang++11.debug="clang++ $CXX_FLAGS_DEBUG --std=c++11"

# em++ aliases
alias em++="em++ $CXX_FLAGS_RELEASE"
alias em++.debug="em++ $CXX_FLAGS_DEBUG"
alias em++11="em++ $CXX_FLAGS_RELEASE --std=c++11"
alias em++11.debug="em++ $CXX_FLAGS_DEBUG --std=c++11"
