export TINYBERT_DIR=/home/zhaoqun3/data/tinybert/afqmc/final
export TASK_DIR=/home/zhaoqun3/data/afqmc
export TASK_NAME=MRPC
export OUTPUT_DIR=/tmp/afqmc/tinybert_finetune_eval/

CUDA_VISIBLE_DEVICES=3 python task_distill.py \
  --do_eval \
  --student_model ${TINYBERT_DIR}/$TASK_NAME \
  --data_dir ${TASK_DIR} \
  --task_name ${TASK_NAME} \
  --output_dir ${OUTPUT_DIR}/$TASK_NAME \
  --eval_batch_size 32 \
  --max_seq_length 128

