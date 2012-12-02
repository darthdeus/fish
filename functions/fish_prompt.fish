function fish_prompt --description 'Write out the prompt'
	set -l last_status $status

  # PWD
  set_color normal
  echo -n (echo $PWD | sed -e "s|^$HOME|~|" )

  echo

  if not test $last_status -eq 0
    set_color $fish_color_error
  else
    set_color $fish_color_cwd
  end

  echo -n '➤ '
  set_color normal
end
