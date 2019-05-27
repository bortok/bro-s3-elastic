#!/bin/bash
sudo su - lsinit
LS_PIPELINE_DIR=$HOME/bro-s3-elastic/bro-s3-pipeline

cd $LS_PIPELINE_DIR

rm -f $LS_PIPELINE_DIR/0097_input_bro_s3.conf
mustache $LS_PIPELINE_DIR/0097_input_bro_s3.yaml $LS_PIPELINE_DIR/0097_input_bro_s3.template > $LS_PIPELINE_DIR/0097_input_bro_s3.conf