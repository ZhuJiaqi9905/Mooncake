#!/bin/bash 
export MC_GID_INDEX=0
export PATH=/usr/local/cuda/bin:$PATH
export LD_LIBRARY_PATH=/usr/local/cuda/lib64:/usr/local/lib:$LD_LIBRARY_PATH
export LIBRARY_PATH=$LIBRARY_PATH:/usr/local/cuda/lib64
export CUDA_PATH=/usr/local/cuda
./build/mooncake-transfer-engine/example/transfer_engine_bench \
    --mode=target \
    --metadata_server=10.20.23.91:2379 \
    --local_server_name=172.21.0.91:12345 \
    --device_name=mlx5_0 \
    -use_vram false \
    -metadata_type redis \