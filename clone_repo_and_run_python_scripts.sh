git clone https://github.com/ajevnisek/segmentation-for-mask-prediction.git
cd /segmentation-for-mask-prediction

DATASET='HCOCO'
MODEL='Deeplabv3-resnet101'

python3 train.py --gpus 0 --cfg config/${DATASET}-${MODEL}.yaml
