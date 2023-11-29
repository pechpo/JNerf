#!/bin/bash

colmap feature_extractor --database_path ./database.db --image_path ./images

colmap exhaustive_matcher --database_path ./database.db

mkdir ./sparse

colmap mapper \
    --database_path ./database.db \
    --image_path ./images \
    --output_path ./sparse

mkdir ./colmap_text

colmap model_converter \
    --input_path ./sparse/0 \
    --output_path ./colmap_text \
    --output_type TXT

python colmap2nerf.py