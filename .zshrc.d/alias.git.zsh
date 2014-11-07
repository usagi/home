#alias git="nocorrect git"
git() { GIT_PREFIX='$(git rev-parse --show-prefix)' env git $@; }
