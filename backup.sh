#!/bin/bash

##############################
# Author: Nikunj Khakhkhar
# Date: 19th May 2023
#
# Version: v1
#
# This script will report the AWS resource usage
##############################

src_dir=$(pwd)
tgt_dir=$(pwd)"/backup"

curr_timestamp=$(date "+%Y-%m-%d-%H-%M-%S")
backup_file=$tgt_dir/$curr_timestamp.tgz

echo "${curr_timestamp}"
echo "${backup_file}"

tar czf $backup_file --absolute-names $src_dir

echo "backup complete"
