#! /bin/bash

# create ollama directory if it doesn't exist
mkdir -p $(dirname $0)/ollama

# download and build ollama
docker run -d --gpus=all -v $(dirname $0)/ollama:/root/.ollama -p 11434:11434 --name ollama ollama/ollama

# pull gemma3 model
docker exec -it ollama ollama pull gemma3:latest