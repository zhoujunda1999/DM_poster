export DATA_DIR=/mnt/diada/data_dir
export BERT_BASE_DIR=/mnt/diada/chinese_roberta_wwm_large_ext_L-24_H-1024_A-16

python run_classifier.py \
  --task_name=mytask \
  --do_train=true \
  --do_eval=true \
  --data_dir=$DATA_DIR/ \
  --vocab_file=$BERT_BASE_DIR/vocab.txt \
  --bert_config_file=$BERT_BASE_DIR/bert_config.json \
  --init_checkpoint=$BERT_BASE_DIR/bert_model.ckpt \
  --max_seq_length=64 \
  --train_batch_size=12 \
  --learning_rate=2e-5 \
  --num_train_epochs=4.0 \
  --output_dir=/mnt/diada/mytask_output