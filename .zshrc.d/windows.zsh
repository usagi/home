if [ `uname -o` = 'Msys' ]; then
  export PATH=$PATH:/opt/graphviz/bin
  export PAHT=$PATH:/c/opt/php
  export PATH=$PATH:/c/ProgramData/Chocolatey/bin
  export PATH=$PATH:/c/Program\ Files\ \(x86\)/Meld
  alias ack=ack.cmd
  alias off-screen="cmd /c 'scrnsave.scr /s'"
fi
