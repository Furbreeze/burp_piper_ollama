# PIPER AI

Simple setup for baking LLMs into piper. Put your prompts in the prompts folder and presto! Use them in piper. Example prompt and config entry for piper provided.

## Example script usage

```bash
echo "some text" | ask --prompt technologies

# OR

ask --prompt web/technologies "$(cat some_file.txt)"
```

## How to use

1. Ensure docker is running 
2. Start ollama `docker start ollama`
3. Edit the piper_config.yaml to point to the ask script
4. Prompts go in the `prompts` folder

## Requirements

1. Install docker
2. Install [piper extension](https://portswigger.net/bappstore/e4e0f6c4f0274754917dcb5f4937bb9e) in Burp Suite

## Installation

1. clone repo
2. cd ollama
3. sh setup.sh
4. import piper config example, or add manually through UI

## Optional but nice

This setup runs ollama without GPU access. There are instructions for doing so [here](https://hub.docker.com/r/ollama/ollama) and it is definitely worth it, things run much faster.

Summarizing those steps:

```
sudo apt-get install -y nvidia-container-toolkit
sudo nvidia-ctk runtime configure --runtime=docker
sudo systemctl restart docker

./ollama/setup_with_gpu.sh
```