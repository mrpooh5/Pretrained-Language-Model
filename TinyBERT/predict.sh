export TASK_NAME=tnews
export TINYBERT_DIR=/home/zhaoqun3/data/tinybert/$TASK_NAME/final
export TASK_DIR=/home/zhaoqun3/data/$TASK_NAME
export OUTPUT_DIR=/home/zhaoqun3/data/tinybert_finetune_eval/$TASK_NAME/

CUDA_VISIBLE_DEVICES=3 python task_distill.py \
  --do_predict \
  --student_model ${TINYBERT_DIR}/$TASK_NAME \
  --data_dir $TASK_DIR \
  --task_name $TASK_NAME \
  --output_dir $OUTPUT_DIR \
  --eval_batch_size 32 \
  --max_seq_length 128