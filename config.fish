set -x PATH /usr/local/opt/rbenv/bin usr/local/bin /usr/local/sbin /usr/local/share/npm/bin/ $PATH
set -x PATH $HOME/.rbenv/shims $PATH

set -xg EDITOR vim

set -x GOROOT /usr/local/opt/go
set -x GOPATH $HOME/.go/

rbenv rehash >/dev/null ^&1

function g    ; git $argv             ; end
function s    ; git status -sb        ; end
function d    ; git diff $argv        ; end
function gd   ; d $argv               ; end
function gdc  ; d --cached            ; end
function gf   ; git fetch $argv       ; end
function gst  ; git stash $argv       ; end
function grb  ; git rebase $argv      ; end
function gco  ; git checkout $argv    ; end
function gb   ; git branch $argv      ; end
function gc   ; git commit $argv      ; end
function ga   ; git add $argv         ; end
function gau  ; git add -u            ; end
function gr   ; git reset             ; end
function grh  ; git reset --hard      ; end
function grv  ; git remote -v         ; end
function gp   ; git push $argv        ; end
function gup  ; git smart-pull        ; end
function gap  ; git add -p            ; end
function gcam ; git commit --amend    ; end
function gm   ; git merge --no-ff     ; end
function gmf  ; git merge --ff-only   ; end
function gch  ; git cherry-pick $argv ; end

# log
function gl   ; glog --graph $argv ; end
function glog
  git log --pretty="format:%C(yellow)%h%Cblue%d%Creset %s %C(white) %an, %ar%Creset" $argv
end
function gla  ; gl --all $argv     ; end


function b
  bundle $argv
end

function be
  b exec $argv
end
