export HOME='/home/work/.jinupahk/jskang'

alias sb='source ~/.bashrc'
alias c0='du -h --max-depth=1'
alias c1="watch -d -n1 'ls -d 0318*/ 2>/dev/null | wc -l'"
alias dale_sftp="sftp -P8890 jskang@147.46.215.151"
alias omi='conda activate jskang_openvla;cd ${HOME}/research/openvla-moe'
alias wn='watch -d -n0.5 nvidia-smi'
alias cddv='function _cddv() { export CUDA_VISIBLE_DEVICES="$1"; echo "CUDA_VISIBLE_DEVICES set to $1"; }; _cddv'
alias 454_ssh='ssh -p 22 jskang@147.47.190.148'
alias 454_sftp='sftp -P22 jskang@147.47.190.148'
alias openvla2='conda activate jskang_openvla2;cd ~/research/openvla-oft'
export DATA_HOME='~/DATA_HOME'
export HF_HOME='~/HF_HOME'

#alias uni='cd ~/ur_bimanual_jskang && conda activate ur_bimanual && bash scripts/launch_nodes.sh'
#alias rnode=" bash -i -c 'conda activate ur_bimanual && cd ~/ur_bimanual_jskang && python ~/ur_bimanual_jskang/experiments/launch_nodes.py'"
#alias rsnode="conda activate ur_bimanual && cd ~/ur_bimanual_jskang && source scripts/launch_rs.sh"
#alias rsnode2="conda activate ur_bimanual && cd ~/ur_bimanual_jskang && source scripts/launch_rs_ty.sh"
#alias rlds='conda activate rlds && cd ~/rlds_gello_builder'
alias start_dum="conda deactivate;python /home/work/.jinupahk/jinupahk.py"


# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/work/.jinupahk/miniconda3/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/work/.jinupahk/miniconda3/etc/profile.d/conda.sh" ]; then
        . "/home/work/.jinupahk/miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="/home/work/.jinupahk/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<
conda activate jskang

