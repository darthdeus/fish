function __bundle_aware_rspec
  if test -f Gemfile
    bundle exec rspec $argv
  else
    ruby -S rspec $argv
  end
end

function rspec
  if test -S .zeus.sock
    zeus test $argv
  else
    __bundle_aware_rspec $argv
  end
end
