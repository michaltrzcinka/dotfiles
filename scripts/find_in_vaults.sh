echo Looking for $1
find -name vault.yml | xargs -I % bash -c 'echo "FILE %"; ansible-vault view %' | grep "FILE\|$1" | grep $1 -B 1
