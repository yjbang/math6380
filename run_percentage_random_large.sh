CUDA_VISIBLE_DEVICES=1 /home/samuel/anaconda2/envs/env_py3.7/bin/python run_percentage_random.py --model_type roberta-large --percentage 0.02 > run_rand_large_0.02_wm.log 

CUDA_VISIBLE_DEVICES=1 /home/samuel/anaconda2/envs/env_py3.7/bin/python run_percentage_random.py --model_type roberta-large --percentage 0.90 > run_rand_large_0.90_wm.log &
CUDA_VISIBLE_DEVICES=2 /home/samuel/anaconda2/envs/env_py3.7/bin/python run_percentage_random.py --model_type roberta-large --percentage 0.95 > run_rand_large_0.95_wm.log &
CUDA_VISIBLE_DEVICES=4 /home/samuel/anaconda2/envs/env_py3.7/bin/python run_percentage_random.py --model_type roberta-large --percentage 0.98 > run_rand_large_0.98_wm.log &
CUDA_VISIBLE_DEVICES=5 /home/samuel/anaconda2/envs/env_py3.7/bin/python run_percentage_random.py --model_type roberta-large --percentage 0.99 > run_rand_large_0.99_wm.log &
CUDA_VISIBLE_DEVICES=6 /home/samuel/anaconda2/envs/env_py3.7/bin/python run_percentage_random.py --model_type roberta-large --percentage 0.01 > run_rand_large_0.01_wm.log


CUDA_VISIBLE_DEVICES=6 /home/samuel/anaconda2/envs/env_py3.7/bin/python run_percentage_random.py --model_type roberta-large --percentage 0.75 > run_rand_large_0.75_wm.log &
CUDA_VISIBLE_DEVICES=5 /home/samuel/anaconda2/envs/env_py3.7/bin/python run_percentage_random.py --model_type roberta-large --percentage 0.50 > run_rand_large_0.50_wm.log &
CUDA_VISIBLE_DEVICES=4 /home/samuel/anaconda2/envs/env_py3.7/bin/python run_percentage_random.py --model_type roberta-large --percentage 0.25 > run_rand_large_0.25_wm.log &
CUDA_VISIBLE_DEVICES=2 /home/samuel/anaconda2/envs/env_py3.7/bin/python run_percentage_random.py --model_type roberta-large --percentage 0.10 > run_rand_large_0.10_wm.log &
CUDA_VISIBLE_DEVICES=1 /home/samuel/anaconda2/envs/env_py3.7/bin/python run_percentage_random.py --model_type roberta-large --percentage 0.05 > run_rand_large_0.05_wm.log