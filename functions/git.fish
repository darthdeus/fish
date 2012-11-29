function s
  git status -sb
end

function d
  git diff
end

function gf
  git fetch
end

function gst
  git stash
end

function grb
  git rebase
end

function gco
  git checkout
end

function gb
  git branch
end

function gc
  git commit
end

function ga
  git add
end

function gau
  git add -u
end

function glog
  git log --pretty="format:%C(yellow)%h%Cblue%d%Creset %s %C(white) %an, %ar%Creset"
end

function gl
  # glog --graph
  git log --pretty="format:%C(yellow)%h%Cblue%d%Creset %s %C(white) %an, %ar%Creset" --graph
end

function gla
  # gl --all
  git log --pretty="format:%C(yellow)%h%Cblue%d%Creset %s %C(white) %an, %ar%Creset" --graph --all
end
