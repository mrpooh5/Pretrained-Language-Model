export CORPUS_JSON=/home/zhaoqun3/data/raw/zh/tinybert/zh_wiki
export BERT_BASE=/home/zhaoqun3/data/bert-cp/pretrain/pytorch/bert-base-chinese-0
export STUDENT_CONFIG_DIR=/home/zhaoqun3/data/tinybert/general/general-chinese-6-12-768-161496-0
export GENERAL_TINYBERT_DIR=/home/zhaoqun3/data/tinybert/general/general-chinese-6-12-768-161496-0-c

nohup python -u general_distill.py \
  --pregenerated_data $CORPUS_JSON \
  --teacher_model $BERT_BASE \
  --student_model $STUDENT_CONFIG_DIR \
  --train_batch_size 128 \
  --num_train_epochs 4 \
  --do_eval \
  --continue_train \
  --output_dir $GENERAL_TINYBERT_DIR > general_c.log &
