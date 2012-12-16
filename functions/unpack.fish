function unpack --description 'Unpack arbitrary archive files'
  for file in $argv
    switch $file
      case '*.tar'
        tar xvf $file
      case '*.tar.gz' '*.tgz'
        tar xvzf $file
      case '*.tar.bz' '*.tar.bz2' '*.tbz' '*.tbz2'
        tar xvjf $file
      case '*.rar'
        unrar e $file
      case '*.zip'
        unzip $file
      case '*'
        echo File $file is of unknown type
    end
  end
end
