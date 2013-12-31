zmodload -i zsh/mathfunc
calc(){ if [ $# != 0 ]; then echo "$(( $* ))"; fi; }

export PI="3.14159265358979323846264338327950288"

degrees(){ if [ $# != 0 ]; then calc "1. * $* * 180 / $PI"; fi; }
radians(){ if [ $# != 0 ]; then calc "1. * $* * $PI / 180"; fi; }

.bin(){ echo $(( [##2] $* )); }
.oct(){ echo $(( [##8] $* )); }
.dec(){ echo $(( [##10] $* )); }
.hex(){ echo $(( [##16] $* )); }

