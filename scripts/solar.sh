#export CUDA_VISIBLE_DEVICES=1
if [ ! -d "./logs" ]; then
    mkdir ./logs
fi

if [ ! -d "./logs/LongForecasting" ]; then
    mkdir ./logs/LongForecasting
fi
seq_len=96
model_name=Latentformer_TST

root_path_name=./dataset/
data_path_name=solar_AL.txt
model_id_name=Solar
data_name=Solar

random_seed=2021

for pred_len in 96
do
    python -u run_longExp.py \
      --random_seed $random_seed \
      --is_training 1 \
      --root_path $root_path_name \
      --data_path $data_path_name \
      --model_id $model_id_name_$seq_len'_'$pred_len \
      --model $model_name \
      --data $data_name \
      --features M \
      --seq_len $seq_len \
      --pred_len $pred_len \
      --enc_in 137 \
      --e_layers 1 \
      --n_heads 1 \
      --d_model 8 \
      --d_ff 54 \
      --dropout 0.2\
      --fc_dropout 0.2\
      --head_dropout 0\
      --patch_len 16\
      --stride 8\
      --des 'Exp' \
      --train_epochs 300\
      --patience 8\
      --lradj 'TST'\
      --pct_start 0.2\
      --num_layers 3\
      --hidden_size 30 19\
      --dishts 1\
      --affine 1\
      --solar 1\
      --itr 1 --batch_size 50 --learning_rate 0.00065 >logs/LongForecasting/$model_name'_'$model_id_name'_'$seq_len'_'$pred_len.log
done


for pred_len in 192
do
    python -u run_longExp.py \
      --random_seed $random_seed \
      --is_training 1 \
      --root_path $root_path_name \
      --data_path $data_path_name \
      --model_id $model_id_name_$seq_len'_'$pred_len \
      --model $model_name \
      --data $data_name \
      --features M \
      --seq_len $seq_len \
      --pred_len $pred_len \
      --enc_in 137 \
      --e_layers 1 \
      --n_heads 1 \
      --d_model 5 \
      --d_ff 26 \
      --dropout 0.2\
      --fc_dropout 0.2\
      --head_dropout 0\
      --patch_len 8\
      --stride 16\
      --des 'Exp' \
      --train_epochs 300\
      --patience 8\
      --lradj 'TST'\
      --pct_start 0.2\
      --num_layers 3\
      --hidden_size 25 24\
      --dishts 1\
      --affine 1\
      --solar 1\
      --itr 1 --batch_size 93 --learning_rate 0.00008 >logs/LongForecasting/$model_name'_'$model_id_name'_'$seq_len'_'$pred_len.log
done


for pred_len in 336
do
    python -u run_longExp.py \
      --random_seed $random_seed \
      --is_training 1 \
      --root_path $root_path_name \
      --data_path $data_path_name \
      --model_id $model_id_name_$seq_len'_'$pred_len \
      --model $model_name \
      --data $data_name \
      --features M \
      --seq_len $seq_len \
      --pred_len $pred_len \
      --enc_in 137 \
      --e_layers 1 \
      --n_heads 1 \
      --d_model 5 \
      --d_ff 56 \
      --dropout 0.2\
      --fc_dropout 0.2\
      --head_dropout 0\
      --patch_len 8\
      --stride 16\
      --des 'Exp' \
      --train_epochs 300\
      --lradj 'TST'\
      --pct_start 0.2\
      --hidden_size 13 12\
      --affine 1\
      --dishts 0\
      --solar 1\
      --itr 1 --batch_size 88 --learning_rate 0.00049 >logs/LongForecasting/$model_name'_'$model_id_name'_'$seq_len'_'$pred_len.log 
done


for pred_len in 720
do
    python -u run_longExp.py \
      --random_seed $random_seed \
      --is_training 1 \
      --root_path $root_path_name \
      --data_path $data_path_name \
      --model_id $model_id_name_$seq_len'_'$pred_len \
      --model $model_name \
      --data $data_name \
      --features M \
      --seq_len $seq_len \
      --pred_len $pred_len \
      --enc_in 137 \
      --e_layers 1 \
      --n_heads 1 \
      --d_model 3 \
      --d_ff 22 \
      --dropout 0.2\
      --fc_dropout 0.2\
      --head_dropout 0\
      --patch_len 16\
      --stride 8\
      --des 'Exp' \
      --train_epochs 300\
      --patience 8\
      --lradj 'TST'\
      --pct_start 0.2\
      --num_layers 3\
      --hidden_size 10 11\
      --dishts 1\
      --affine 0\
      --solar 1\
      --itr 1 --batch_size 35 --learning_rate 0.00007 >logs/LongForecasting/$model_name'_'$model_id_name'_'$seq_len'_'$pred_len.log
done