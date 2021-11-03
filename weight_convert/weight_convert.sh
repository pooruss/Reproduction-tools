# get paddle weight
# cd ../
#python -u tools/train.py -c configs/detectors/cascade_rcnn_r50_rfp_1x_coco.yml
# cd gfl_debug_tools/
# get torch weight
#wget https://download.openmmlab.com/mmdetection/v2.0/detectors/cascade_rcnn_r50_rfp_1x_coco/cascade_rcnn_r50_rfp_1x_coco-8cf51bfd.pth
# get the weight name in torch and paddle
# python3.7 match_weight_name.py ./icnet_resnet50_197_0.710_best_model.pth paddle_model.pdparams torch_paddle_match.txt
# python3.7 match_weight_name.py ./init_Dis_torch.pth init_Dis.pdparams torch_paddle_match.txt
# convert the torch weight to paddle
python3.7 convert.py ./init_Dis_torch.pth ./torch_state_dict.txt ./paddle_state_dict.txt ./Dis_from_torch.pdparams


