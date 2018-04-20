# -------------------------------------------------------------------
# Create the data mean from LMDB
# The file is adapted from BVLC Caffe, and requires Caffe tools
# Author: Sukrit Shankar 
# -------------------------------------------------------------------

# +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
# Please set the appropriate paths
EXAMPLE=/multilabel/data/lmdbs       			# Path where the input LMDB is stored
DATA=/multilabel/data       					# Path where the output mean file is stored
TOOLS=/caffe/build/tools    					# Caffe dependency to access the compute_image_mean utility 
# +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+

# ------------------------------
$TOOLS/compute_image_mean $EXAMPLE/img_train_lmdb \
  $DATA/mean.binaryproto

# ------------------------------
echo "Done."
