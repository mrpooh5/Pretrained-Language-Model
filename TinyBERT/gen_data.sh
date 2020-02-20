export CORPUS_RAW=/home/zhaoqun3/data/raw/zh/zh_wiki_sen_180m
export BERT_BASE_DIR=/home/zhaoqun3/data/bert-cp/pretrain/tf/chinese_L-12_H-768_A-12
export CORPUS_JSON_DIR=/home/zhaoqun3/data/raw/zh/tinybert/zh_wiki

nohup python -u pregenerate_training_data.py \
  --train_corpus $CORPUS_RAW \
  --bert_model $BERT_BASE_DIR \
  --reduce_memory \
  --do_lower_case \
  --epochs_to_generate 3 \
  --output_dir $CORPUS_JSON_DIR > zh_data.log &
