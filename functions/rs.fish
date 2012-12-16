function rs
  if test -d spec
    rspec spec
  else
    echo "'spec' directory not found"
    return 1
  end
end
