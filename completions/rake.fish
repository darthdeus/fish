function __rake_task_list_outdated
  not test -f .rake_tasks; and return 0

  set -l files (find Rakefile lib/tasks -newer .rake_tasks 2>/dev/null)
  not test -z "$files"; and return 0

  return 1
end

function __fish_rake
  not test -f Rakefile; and return

 if __rake_task_list_outdated
    rake --silent --tasks | sed 's/^rake.//; s/[[:blank:]]*# /'(printf '\t')'/' > .rake_tasks
 end

  cat .rake_tasks
end

complete -x -c rake -a '(__fish_rake)'
