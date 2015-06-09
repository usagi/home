alias cmake.make='cmake -G "Unix Makefiles"'
alias cmake.make.debug='cmake.make -DCMAKE_BUILD_TYPE=debug'
alias cmake.make.release='cmake.make -DCMAKE_BUILD_TYPE=release'

alias cmake.ninja='cmake -G Ninja'
alias cmake.ninja.debug='cmake.ninja -DCMAKE_BUILD_TYPE=debug'
alias cmake.ninja.release='cmake.ninja -DCMAKE_BUILD_TYPE=release'

alias cmake.ninja.g++="cmake.ninja -DCMAKE_CXX_COMPILER=g++ -DCMAKE_C_COMPILER=gcc"
alias cmake.ninja.g++.release="cmake.ninja.g++ -DCMAKE_BUILD_TYPE=release"
alias cmake.ninja.g++.debug="cmake.ninja.g++ -DCMAKE_BUILD_TYPE=debug"
alias cmake.ninja.g++.relwithdebinfo="cmake.ninja.g++ -DCMAKE_BUILD_TYPE=relwithdebinfo"

alias cmake.ninja.clang++="cmake.ninja -DCMAKE_CXX_COMPILER=clang++ -DCMAKE_C_COMPILER=clang"
alias cmake.ninja.clang++.release="cmake.ninja.clang++ -DCMAKE_BUILD_TYPE=release"
alias cmake.ninja.clang++.debug="cmake.ninja.clang++ -DCMAKE_BUILD_TYPE=debug"
alias cmake.ninja.clang++.relwithdebinfo="cmake.ninja.clang++ -DCMAKE_BUILD_TYPE=relwithdebinfo"

alias cmake.codeblocks.make='cmake -G "CodeBlocks - Unix Makefiles"'
alias cmake.codeblocks.make.debug='cmake.codeblocks.make -DCMAKE_BUILD_TYPE=debug'
alias cmake.codeblocks.make.release='cmake.codeblocks.make -DCMAKE_BUILD_TYPE=release'

alias cmake.codeblocks.ninja='cmake -G "CodeBlocks - Ninja"'
alias cmake.codeblocks.ninja.debug='cmake.codeblocks.ninja -DCMAKE_BUILD_TYPE=debug'
alias cmake.codeblocks.ninja.release='cmake.codeblocks.ninja -DCMAKE_BUILD_TYPE=release'

alias cmake.eclipse-cdt4.make='cmake -G "Eclipse CDT4 - Unix Makefiles"'
alias cmake.eclipse-cdt4.make.debug='cmake.eclipse-cdt4.make -DCMAKE_BUILD_TYPE=debug'
alias cmake.eclipse-cdt4.make.release='cmake.eclipse-cdt4.make -DCMAKE_BUILD_TYPE=release'

alias cmake.eclipse-cdt4.ninja='cmake -G "Eclipse CDT4 - Ninja"'
alias cmake.eclipse-cdt4.ninja.debug='cmake.eclipse-cdt4.ninja -DCMAKE_BUILD_TYPE=debug'
alias cmake.eclipse-cdt4.ninja.release='cmake.eclipse-cdt4.ninja -DCMAKE_BUILD_TYPE=release'

alias cmake.kdevelop3='cmake -G "KDevelop3"'
alias cmake.kdevelop3.debug='cmake.kdevelop3 -DCMAKE_BUILD_TYPE=debug'
alias cmake.kdevelop3.release='cmake.kdevelop3 -DCMAKE_BUILD_TYPE=release'

alias cmake.kdevelop3.make='cmake -G "KDevelop3 -Unix Makefiles"'
alias cmake.kdevelop3.make.debug='cmake.kdevelop3.make -DCMAKE_BUILD_TYPE=debug'
alias cmake.kdevelop3.make.release='cmake.kdevelop3.make -DCMAKE_BUILD_TYPE=release'

alias cmake.sublimetext2.ninja='cmake -G "Sublime Text 2 - Ninja"'
alias cmake.sublimetext2.ninja.debug='cmake.sublimetext2.ninja -DCMAKE_BUILD_TYPE=debug'
alias cmake.sublimetext2.ninja.release='cmake.sublimetext2.ninja -DCMAKE_BUILD_TYPE=release'

alias cmake.sublimetext2.make='cmake -G "Sublime Text 2 - Unix Makefiles"'
alias cmake.sublimetext2.make.debug='cmake.sublimetext2.make -DCMAKE_BUILD_TYPE=debug'
alias cmake.sublimetext2.make.release='cmake.sublimetext2.make -DCMAKE_BUILD_TYPE=release'
