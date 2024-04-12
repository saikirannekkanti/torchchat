export MODEL_REPO=meta-llama/Llama-2-7b-chat-hf
rm -r checkpoints/$MODEL_REPO
python scripts/download.py --repo-id $MODEL_REPO
python scripts/convert_hf_checkpoint.py --checkpoint-dir checkpoints/$MODEL_REPO
python generate.py --compile --checkpoint-path checkpoints/$MODEL_REPO/model.pth --max-new-tokens 100
