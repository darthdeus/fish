function s
  git status -sb
end

function d
  git diff $argv
end

function gd
  d $argv
end

function gdc
  d --cached
end

function gf
  git fetch $argv
end

function gst
  git stash $argv
end

function grb
  git rebase $argv
end

function gco
  git checkout $argv
end

function gb
  git branch $argv
end

function gc
  git commit $argv
end

function ga
  git add $argv
end

function gau
  git add -u
end

function glog
  git log --pretty="format:%C(yellow)%h%Cblue%d%Creset %s %C(white) %an, %ar%Creset" $argv
end

function gl
  glog --graph $argv
end

function gr
  git reset
end

function grh
  git reset --hard
end

function grv
  git remote -v
end

function gla
  gl --all $argv
end

function gp
  git push $argv
end

function gup
  git smart-pull
end

function gap
  git add -p
end

function gcam
  git commit --amend
end
