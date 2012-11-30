function rake
  if test -f Gemfile
    bundle exec ruby -S rake $argv
  else
    ruby -S rake $argv
  end
end
