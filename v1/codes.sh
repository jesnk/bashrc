
alias sb='source ~/.bashrc'
alias wn='watch -d -n0.5 nvidia-smi'
alias c0='du -h --max-depth=1'
alias c0w='watch -n1 -d du -h --max-depth=1'
alias iota="ssh -i ~/iota/1.iota jskang@114.110.129.13"




# GPU DEVICE and HF cache path settings
'''
export CUDA_VISIBLE_DEVICES=2
export HF_DATASETS_CACHE="/data/jskang/.cache/huggingface/hub"
export TRANSFORMERS_CACHE="/data/jskang/.cache/huggingface/hub"
export HF_HOME="/data/jskang/.cache/huggingface/hub"
export PATH=$PATH:/home/jskang/.bin
'''


git config --global user.name jesnk
git config --global credential.helper store
