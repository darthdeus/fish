function fish_prompt --description 'Write out the prompt'
	set -l last_status $status

  # PWD
  set_color $fish_color_cwd
  echo -n (echo $PWD | sed -e "s|^$HOME|~|" )
  set_color normal

  __terlar_git_prompt
  echo

  if not test $last_status -eq 0
    set_color $fish_color_error
  end

  echo -n '➤ '
  set_color normal
end
