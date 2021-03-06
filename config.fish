set -x PATH /usr/local/bin /usr/local/opt/rbenv/bin /usr/local/sbin $HOME/.rbenv/shims /usr/local/share/npm/bin/ /usr/local/share/python3/ $PATH
set -xg EDITOR vim

set -xg GOROOT /usr/local/opt/go
set -xg GOPATH $HOME/.go/

set -xg fish_pager_color_description 555 yellow

rbenv rehash >/dev/null ^&1

function g    ; git $argv                   ; end
function s    ; git status -sb              ; end
function d    ; git diff $argv              ; end
function gd   ; d $argv                     ; end
function gdc  ; d --cached                  ; end
function gf   ; git fetch $argv             ; end
function gst  ; git stash $argv             ; end
function grb  ; git rebase $argv            ; end
function gco  ; git checkout $argv          ; end
function gb   ; git branch $argv            ; end
function gc   ; git commit $argv            ; end
function ga   ; git add $argv               ; end
function gau  ; git add -u $argv            ; end
function gr   ; git reset $argv             ; end
function grh  ; git reset --hard $argv      ; end
function grv  ; git remote -v               ; end
function gp   ; git push $argv              ; end
function gup  ; git smart-pull              ; end
function gap  ; git add -p $argv            ; end
function gcam ; git commit --amend          ; end
function gm   ; git merge --no-ff $argv     ; end
function gmf  ; git merge --ff-only $argv   ; end
function gch  ; git cherry-pick $argv       ; end

complete -f -c gco -a "(git branch -a | tr -s ' ' | cut -d ' ' -f 2)"
complete -f -c gb  -a "(git branch | tr -s ' ' | cut -d ' ' -f 2)"
complete -f -c gp  -a "(git branch | tr -s ' ' | cut -d ' ' -f 2)"
complete -f -c gm  -a "(git branch | tr -s ' ' | cut -d ' ' -f 2)"
complete -f -c gmf -a "(git branch | tr -s ' ' | cut -d ' ' -f 2)"

function p; powder $argv; end

# log
function gl   ; glog --graph $argv ; end
function glog
  git log --pretty="format:%C(yellow)%h%Cblue%d%Creset %s %C(white) %an, %ar%Creset" $argv
end
function gla  ; gl --all $argv     ; end


function kc; kviberg-config $argv; end

function b
  bundle $argv
end

function be
  b exec $argv
end
