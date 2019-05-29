#!/bin/sh

# questions
wget -c -t 0 http://images.cocodataset.org/zips/train2014.zip http://images.cocodataset.org/zips/val2014.zip http://images.cocodataset.org/zips/test2015.zip

# answers
wget -c -t 0 https://s3.amazonaws.com/cvmlp/vqa/mscoco/vqa/v2_Annotations_Train_mscoco.zip https://s3.amazonaws.com/cvmlp/vqa/mscoco/vqa/v2_Annotations_Val_mscoco.zip

# balanced pairs
wget -c -t 0 https://s3.amazonaws.com/cvmlp/vqa/mscoco/vqa/v2_Complementary_Pairs_Train_mscoco.zip https://s3.amazonaws.com/cvmlp/vqa/mscoco/vqa/v2_Complementary_Pairs_Val_mscoco.zip

# bottom up features (https://github.com/peteanderson80/bottom-up-attention)
wget -c -t 0 https://imagecaption.blob.core.windows.net/imagecaption/trainval.zip https://imagecaption.blob.core.windows.net/imagecaption/test2015.zip
## alternative bottom-up features: 36 fixed proposals per image instead of 10--100 adaptive proposals per image.
#wget https://imagecaption.blob.core.windows.net/imagecaption/trainval_36.zip https://imagecaption.blob.core.windows.net/imagecaption/test2015_36.zip

unzip "*.zip"
