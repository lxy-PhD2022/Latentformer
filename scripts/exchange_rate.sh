if [ ! -d "./logs" ]; then
    mkdir ./logs
fi

if [ ! -d "./logs/LongForecasting" ]; then
    mkdir ./logs/LongForecasting
fi
seq_len=96
model_name=Latentformer_TST

root_path_name=./dataset/
data_path_name=exchange_rate.csv
model_id_name=Exchange_rate
data_name=custom

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
      --enc_in 8 \
      --e_layers 1 \
      --n_heads 1 \
      --d_model 12 \
      --d_ff 24 \
      --dropout 0.3\
      --fc_dropout 0.3\
      --head_dropout 0\
      --patch_len 16\
      --stride 8\
      --des 'Exp' \
      --train_epochs 300\
      --patience 8\
      --hidden_size 48 8\
      --num_layers 3\
      --dishts 0\
      --affine 1\
      --itr 1 --batch_size 16 --learning_rate 0.00031 >logs/LongForecasting/$model_name'_'$model_id_name'_'$seq_len'_'$pred_len.log
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
      --enc_in 8 \
      --e_layers 1 \
      --n_heads 1 \
      --d_model 14 \
      --d_ff 4 \
      --dropout 0.3\
      --fc_dropout 0.3\
      --head_dropout 0\
      --patch_len 16\
      --stride 8\
      --des 'Exp' \
      --train_epochs 300\
      --patience 8\
      --hidden_size 56 64\
      --num_layers 3\
      --dishts 0\
      --affine 0\
      --itr 1 --batch_size 19 --learning_rate 0.00018 >logs/LongForecasting/$model_name'_'$model_id_name'_'$seq_len'_'$pred_len.log
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
      --enc_in 8 \
      --e_layers 1 \
      --n_heads 1 \
      --d_model 8 \
      --d_ff 2 \
      --dropout 0.3\
      --fc_dropout 0.3\
      --head_dropout 0\
      --patch_len 16\
      --stride 8\
      --des 'Exp' \
      --train_epochs 300\
      --patience 8\
      --hidden_size 39 61\
      --num_layers 3\
      --dishts 0\
      --affine 0\
      --itr 1 --batch_size 34 --learning_rate 0.0001 >logs/LongForecasting/$model_name'_'$model_id_name'_'$seq_len'_'$pred_len.log
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
      --enc_in 8 \
      --e_layers 1 \
      --n_heads 1 \
      --d_model 2 \
      --d_ff 24 \
      --dropout 0.3\
      --fc_dropout 0.3\
      --head_dropout 0\
      --patch_len 16\
      --stride 8\
      --des 'Exp' \
      --train_epochs 300\
      --patience 8\
      --hidden_size 2 12\
      --num_layers 3\
      --dishts 0\
      --affine 0\
      --itr 1 --batch_size 44 --learning_rate 0.0007 >logs/LongForecasting/$model_name'_'$model_id_name'_'$seq_len'_'$pred_len.log
done