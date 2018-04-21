# caffe-utils
This repo lists some scripts that are useful for caffe framework.The scripts in `multilabel_lmdb_create` directory is adapted from [sukritshankar](https://github.com/sukritshankar/Caffe-LMDBCreation-MultiLabel), which can be used to create lmdb for multilabel
task with caffe.
### multilabel_lmdb_create
The steps to use the scripts in this directory:
* **Provide data and corresponding label files:** Make a `train.txt` and a `test.txt` which list the images and corresponding labels (dummy labels,which will never be used) for training and test, respectively.Then make a `labels_train.mat` and a `labels_test.mat` 
which list the corresponding label vectors for training and test, respectively. Each label vector is like [0 1 1 0...] with "0" means having this class in this image and "1" otherwise. Remember to shuffle training and test data when providing train.txt and test.txt 
since they will not be shuffled during creating lmdbs. **Be sure the label vectors correspond to the images!!**
* **Create data lmdbs and mean file:** Use `create_data_lmdb.sh` to create lmdbs for training and test data, and `create_mean.sh` to compute mean value.
* **Create label lmdbs:** Use `create_label_lmdb.py` to create lmdbs for training and test labels. Run this script with python 2.7.
* **Generate the prototxt:** The prototxt file is used for training, refer to the example `train_test_multilabel.prototxt` for details.

