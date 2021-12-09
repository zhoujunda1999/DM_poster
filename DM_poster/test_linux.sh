export DATA_DIR=/mnt/diada/data_dir
export BERT_BASE_DIR=/mnt/diada/chinese_roberta_wwm_large_ext_L-24_H-1024_A-16

python run_classifier.py \
  --task_name=mytask \
  --do_predict=true \
  --data_dir=$DATA_DIR/ \
  --vocab_file=$BERT_BASE_DIR/vocab.txt \
  --bert_config_file=$BERT_BASE_DIR/bert_config.json \
  --init_checkpoint=$BERT_BASE_DIR/bert_model.ckpt \
  --max_seq_length=64 \
  --output_dir=/mnt/diada/mytask_output
