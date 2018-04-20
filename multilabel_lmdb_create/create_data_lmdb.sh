#!/usr/bin/env sh
# -------------------------------------------------------------------
# Create lmdb for training and test data
# The file is adapted from BVLC Caffe, and requires Caffe tools
# Author: https://github.com/fengyunxiaozi 
# -------------------------------------------------------------------

echo "Create train lmdb.."

/caffe/build/tools/convert_imageset \
--resize_height=224 \
--resize_width=224 \
/multilabel/data/ \                       % path where the images are placed
/multilabel/data/train.txt \              % path where the train.txt is placed
/multilabel/data/lmdbs/img_train_lmdb     % outpath of the generated lmdb

echo "Create test lmdb.."

/caffe/build/tools/convert_imageset \
--resize_height=224 \
--resize_width=224 \
/multilabel/data/ \
/multilabel/data/test.txt \
/multilabel/data/lmdbs/img_test_lmdb


echo "All Done.."
