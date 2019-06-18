echo 'strat train_search'
python train_search.py \
       --batch_size 32 \
       --tmp_data_dir /path/to/your/data \
       --save log_path \
       --add_layers 6 \
       --add_layers 12 \
       --dropout_rate 0.1 \
       --dropout_rate 0.4 \
       --dropout_rate 0.7 \
       --note note_of_this_run
   
echo 'strat train_cifar'   
python train_cifar.py \
       --init_channels 16 \
       --layers 5 \
       --epochs 1 \
       --tmp_data_dir /path/to/your/data \
       --auxiliary \
       --cutout \
       --save log_path \
       --note note_of_this_run \
       --arch SEARCH
       
echo 'start test'
python test.py \
       --init_channels 16 \
       --layers 5 \
       --auxiliary \
       --model_path log_patheval/weights.pt \
       --data /path/to/your/data \
       --arch SEARCH
       
echo 'finish start sleep'
sleep 3d
