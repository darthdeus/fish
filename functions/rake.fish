function __bundle_aware_rake
  if test -f Rakefile
    command bundle exec rake $argv
  else
    command rake $argv
  end
end

function rake
  if test -S .zeus.sock
    command zeus rake $argv
  else
    __bundle_aware_rake $argv
  end
end
