alias w3m.google="w3m http://www.google.co.jp"

w3m.alc(){ if [ $# != 0 ]; then w3m "http://eow.alc.co.jp/$*/UTF-8/?ref=sa"; fi; }

w3m.package.debian(){ if [ $# != 0 ]; then w3m "http://packages.debian.org/search?keywords=$*"; fi; }
w3m.package.ubuntu(){ if [ $# != 0 ]; then w3m "http://packages.ubuntu.com/search?keywords=$*"; fi; }
w3m.package.arch(){ if [ $# != 0 ]; then w3m "https://www.archlinux.org/packages/?q=$*"; fi; }
w3m.package.opensuse(){ if [ $# != 0 ]; then w3m "http://software.opensuse.org/search?q=$*"; fi; }
w3m.package.fedora(){ if [ $# != 0 ]; then w3m "https://admin.fedoraproject.org/pkgdb/acls/list/*$**"; fi; }

w3m.package.macports(){ if [ $# != 0 ]; then w3m "https://www.macports.org/ports.php?by=name&substr=$*"; fi; }
w3m.package.fink(){ if [ $# != 0 ]; then w3m "http://pdb.finkproject.org/pdb/browse.php?summary=$*"; fi; }
w3m.package.homebrew(){ if [ $# != 0 ]; then w3m "http://braumeister.org/search/$*"; fi; }
