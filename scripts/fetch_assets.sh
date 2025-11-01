#!/bin/bash
set -e

echo "🚀 Downloading assets from Google Drive..."
mkdir -p data/compatibility data/similarity models

# === COMPATIBILITY (feature 2) ===
gdown --id 10k4RLaQyk-jyBuY1mO5TvodxhVDZYNxJ -O data/compatibility/faiss_index_feature2.index
gdown --id 1wIprp97KZuuoEqy0-OvURlNJlBivJt8p -O data/compatibility/id_map_feature2.json
gdown --id 1HEQJm6fLLNVRzU-q8sCSm93eLxUMYft_ -O data/compatibility/vectors_feature2.npy

# === SIMILARITY (feature 1) ===
gdown --id 1cBEZ9bOI-Oy2ZYrMifr8qoQ-SPQ3Z9iT -O data/similarity/faiss_index.index
gdown --id 1w18ofY2DFNwuH67283nsuTSJjrDEHQTK -O data/similarity/id_map.json
gdown --id 1YegwxOcMAYt2U_u5XjX5lkoMcMXafVpo -O data/similarity/vectors.npy

# === META + MODEL ===
gdown --id 1QueQKqMLP-ERhAiOtLiCAnbFAizSCgnQ -O data/items_metadata_joined_fixed.json
gdown --id 1eU-dFEwpiBRGOWwAK0eMhayJC-c2jynG -O models/resnet50_proj512_best.pt

echo "✅ All assets downloaded successfully."
