function __bundle_aware_rspec
  if test -f Gemfile
    command bundle exec rspec $argv
  else
    command rspec $argv
  end
end

function rspec
  if test -S .zeus.sock
    command zeus test $argv
  else
    __bundle_aware_rspec $argv
  end
end
