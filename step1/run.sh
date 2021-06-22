clear
mkdir log
python3 train.py --data=/data/imagenet --batch_size=256 --learning_rate=1.25e-3 --epochs=256 --weight_decay=5e-6 | tee -a log/training.txt
