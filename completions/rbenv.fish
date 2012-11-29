function __fish_rbenv
  rbenv help | sed -n '/^ /p;' | sed 's/^[[:blank:]]*//;' | tr -s ' ' | cut -d ' ' -f 1 | cat
end


complete -x -c rbenv -a '(__fish_rbenv)'
