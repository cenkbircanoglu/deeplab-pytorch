#sh scripts/setup_caffemodels.sh

#python convert.py --dataset coco

#python convert.py --dataset voc12


python -m main train --config-path configs/voc12_resnet101.yaml

python -m main test --config-path configs/voc12_resnet101.yaml \
    --model-path data/resnet101/models/voc12/deeplabv2_resnet101_msc/train_aug/checkpoint_final.pth

python main.py crf --config-path configs/voc12_resnet101.yaml
