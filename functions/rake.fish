function rake
  if test -f Rakefile
    bundle exec rake $argv
  else
    ruby -S rake $argv
  end
end
