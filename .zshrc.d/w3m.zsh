alias w3m.google="w3m http://www.google.co.jp"

w3m.alc(){ if [ $# != 0 ]; then w3m "http://eow.alc.co.jp/$*/UTF-8/?ref=sa"; fi; }

w3m.deb(){ if [ $# != 0 ]; then w3m "http://packages.debian.org/search?keywords=$*"; fi; }

