function __bundle_aware_rake
  if test -f Rakefile
    bundle exec rake $argv
  else
    ruby -S rake $argv
  end
end

function rake
  if test -S .zeus.sock
    zeus rake $argv
  else
    __bundle_aware_rake $argv
  end
end
