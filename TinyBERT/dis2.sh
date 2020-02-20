export TASK_NAME=tnews
export FT_BERT_BASE_DIR=/home/zhaoqun3/tmp/$TASK_NAME/bert-base
export TASK_DIR=/home/zhaoqun3/data/$TASK_NAME
export SPECIFIC_TINYBERT_DIR=/home/zhaoqun3/data/tinybert/$TASK_NAME/dis1
export TINYBERT_DIR=/home/zhaoqun3/data/tinybert/$TASK_NAME/final

python task_distill.py --pred_distill  \
  --teacher_model ${FT_BERT_BASE_DIR} \
  --student_model ${SPECIFIC_TINYBERT_DIR} \
  --data_dir ${TASK_DIR} \
  --task_name ${TASK_NAME} \
  --output_dir ${TINYBERT_DIR}/$TASK_NAME \
  --learning_rate 3e-5  \
  --num_train_epochs  3  \
  --eval_step 50 \
  --max_seq_length 128 \
  --train_batch_size 32 \
  --eval_batch_size 128 

