function __current_branch
  echo -n (git symbolic-ref HEAD 2>/dev/null | sed "s|refs/heads/||")
end

function __current_branch
  echo -n (command git rev-parse --abbrev-ref HEAD ^/dev/null)
end

function __current_commit
  echo -n (git rev-parse --short HEAD 2>/dev/null)	
end

function __current_commit
  echo -n (command git rev-parse --short HEAD 2>/dev/null)
end

function fish_right_prompt --description "Write out right prompt"
  set_color blue

  __current_branch
  echo -n "@"

  set_color yellow
  __current_commit

  set_color normal
end
