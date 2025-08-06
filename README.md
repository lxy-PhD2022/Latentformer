Start :

Install pip env by requirements.txt

Obtain the Exchange_rate, ILI, ETT, Traffic, and Electricity benchmarks from Google Drive 'https://drive.google.com/drive/folders/1ZOYpTUa82_jCcxIdTmyr0LXQfvaM9vIy' provided in paper 'Autoformer'; obtain the Solar benchmark from 'https://drive.google.com/drive/folders/12ffxwxVAGM_MQiYpIk9aBLQrb2xQupT-' provided in paper 'DLinear'; create a directory named 'dataset' and put them into 'dataset'

Train and test Latentformer by 'bash scripts/xxx.sh'. You can directly check the main results reported in the paper by the logs in the directory named 'results in paper'. Additionally, for top k version, please replace the context of Latentformer_backbone.py with that of the Latentformer_backbone_topk.py

The results for Figure 2(a) are meansured on four NVIDIA 4090 GPUs. To reproduce them, please ensure you are using the same hardware and run 'bash scripts/fig2(a).sh'. This script offers a better balance between accuracy and complexity, whereas scripts/traffic.sh prioritizes accuracy.
