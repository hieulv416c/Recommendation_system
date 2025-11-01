#!/bin/bash
set -e

echo "🚀 Downloading assets from Google Drive..."
mkdir -p data/compatibility data/similarity models

# === COMPATIBILITY (feature 2) ===
gdown --id <ID_FAISS_FEATURE2>   -O data/compatibility/faiss_index_feature2.index
gdown --id <ID_IDMAP_FEATURE2>   -O data/compatibility/id_map_feature2.json
gdown --id <ID_VECTORS_FEATURE2> -O data/compatibility/vectors_feature2.npy

# === SIMILARITY (feature 1) ===
gdown --id <ID_FAISS_INDEX>  -O data/similarity/faiss_index.index
gdown --id <ID_IDMAP>        -O data/similarity/id_map.json
gdown --id <ID_VECTORS>      -O data/similarity/vectors.npy

# === META + MODEL ===
gdown --id <ID_METADATA> -O data/items_metadata_joined_fixed.json
gdown --id <ID_MODEL>    -O models/resnet50_proj512_best.pt

echo "✅ All assets downloaded successfully."
