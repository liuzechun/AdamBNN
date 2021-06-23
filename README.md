# AdamBNN

This is the pytorch implementation of our paper ["How Do Adam and Training Strategies Help BNNs Optimization?"](https://arxiv.org/abs/2106.11309), published in ICML 2021. 

<div align=center>
<img width=60% src="https://github.com/liuzechun0216/images/blob/master/AdamBNN_github.jpg"/>
</div>

In this work, we explore the intrisic reasons why Adam is superior to other optimizers like SGD for BNN optimization and provide analytical explanations that support specific training strategies. By visualizing the optimization trajectory, we show that the optimization lies in extremely rugged loss landscape and the second-order momentum in Adam is crucial to revitalize the weights that are dead due to the activation saturation in BNNs. Based on analysis, we derive a specific training scheme and achieve 70.5% top-1 accuracy on the ImageNet dataset using the same achitecture as [ReActNet](https://github.com/liuzechun/ReActNet) while achieving 1.1% higher accuracy. 

## Citation

If you find our code useful for your research, please consider citing:

    @conference{liu2021how,
    title = {How do adam and training strategies help bnns optimization?},
    author = {Liu, Zechun and Shen, Zhiqiang and Li, Shichao and Helwegen, Koen and Huang, Dong and Cheng, Kwang-Ting},
    booktitle = {International Conference on Machine Learning},
    year = {2021},
    organization={PMLR}
    }

## Run

### 1. Requirements:
* python3, pytorch 1.7.1, torchvision 0.8.2
    
### 2. Data:
* Download ImageNet dataset

### 3. Steps to run:
(1) Step1:  binarizing activations
* Change directory to `./step1/` 
* run `bash run.sh`

(2) Step2:  binarizing weights + activations
* Change directory to `./step2/`
* run `bash run.sh`
       

## Models

| Methods | Backbone | Top1-Acc | FLOPs | Trained Model |
| --- | --- | --- | --- | --- | 
| ReActNet | ReActNet-A | 69.4% | 0.87 x 10^8 | [Model-ReAct](https://hkustconnect-my.sharepoint.com/:u:/g/personal/zliubq_connect_ust_hk/EZAJ5OPNyKJColmmJPkD-ysBP2uozsXMzbbA9giOuS21TA?e=HnKOCs) | 
| AdamBNN | ReActNet-A | 70.5% | 0.87 x 10^8 | [Model-ReAct-AdamBNN-Training](https://hkustconnect-my.sharepoint.com/:u:/g/personal/zliubq_connect_ust_hk/EXEsfAt42gNLqfzt09BMoTwBbYT6sxH5VkZ_9DmBWhJxXg?e=fd4f5v) |

## Contact

Zechun Liu, HKUST and CMU (zliubq at connect.ust.hk / zechunl at andrew.cmu.edu)

Zhiqiang Shen, CMU (zhiqians at andrew.cmu.edu) 
