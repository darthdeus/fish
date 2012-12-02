function g
  command git $argv
end

function s
  g status -sb
end

function d
  g diff $argv
end

function gd
  d $argv
end

function gdc
  d --cached
end

function gf
  g fetch $argv
end

function gst
  g stash $argv
end

function grb
  g rebase $argv
end

function gco
  g checkout $argv
end

function gb
  g branch $argv
end

function gc
  g commit $argv
end

function ga
  g add $argv
end

function gau
  g add -u
end

function glog
  g log --pretty="format:%C(yellow)%h%Cblue%d%Creset %s %C(white) %an, %ar%Creset" $argv
end

function gl
  glog --graph $argv
end

function gr
  g reset
end

function grh
  g reset --hard
end

function grv
  g remote -v
end

function gla
  gl --all $argv
end

function gp
  g push $argv
end

function gup
  g smart-pull
end

function gap
  g add -p
end

function gcam
  g commit --amend
end
