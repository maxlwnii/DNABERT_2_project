export TOKENIZERS_PARALLELISM=false
export DATA_PATH=./data
export MAX_LENGTH=20
export LR=3e-5

python train.py \
    --model_name_or_path zhihan1996/DNABERT-2-117M \
    --data_path ${DATA_PATH} \
    --kmer -1 \
    --run_name DNABERT2_${DATA_PATH} \
    --model_max_length ${MAX_LENGTH} \
    --per_device_train_batch_size 8 \
    --per_device_eval_batch_size 16 \
    --gradient_accumulation_steps 1 \
    --learning_rate ${LR} \
    --num_train_epochs 5 \
    --fp16 \
    --save_steps 200 \
    --output_dir output/dnabert2 \
    --evaluation_strategy steps \
    --logging_dir ./logs_experiment_1