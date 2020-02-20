export TASK_NAME=tnews
export FT_BERT_BASE_DIR=/home/zhaoqun3/tmp/$TASK_NAME/bert-base
export GENERAL_TINYBERT_DIR=/home/zhaoqun3/data/tinybert/general/general-chinese-6-12-768-164495-0
export TASK_DIR=/home/zhaoqun3/data/$TASK_NAME
export TMP_TINYBERT_DIR=/home/zhaoqun3/data/tinybert/$TASK_NAME/dis1

nohup python -u task_distill.py \
  --teacher_model $FT_BERT_BASE_DIR \
  --student_model ${GENERAL_TINYBERT_DIR} \
  --data_dir ${TASK_DIR} \
  --task_name ${TASK_NAME} \
  --output_dir ${TMP_TINYBERT_DIR} \
  --max_seq_length 128 \
  --train_batch_size 32 \
  --num_train_epochs 6  > dis1.log &
