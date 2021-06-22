clear
mkdir models
cp ../1_step1/models/model_best.pth.tar ./models/checkpoint_ba.pth.tar
mkdir log
python3 train.py --data=/data/imagenet --batch_size=256 --learning_rate=1.25e-3 --epochs=256 --weight_decay=0 | tee -a log/training.txt
