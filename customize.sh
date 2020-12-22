#!/bin/bash -x
GITHUB_NAME=TerryHowe
YOUR_DATA_BUCKET=prow-data-devstack-prowbucket7c73355c-13nyfaqz43zv2
YOUR_PRESUBMIT_BUCKET=prow-data-presubmits-devstack-prowbucket7c73355c-181dr7bowcxj3

ORIGINAL_DATA_BUCKET=prowdataclusterstack-316434458-prowbucket7c73355c-1n9f9v93wpjcm
ORIGINAL_PRESUBMIT_BUCKET=prowpresubmitsdataclusterstack-prowbucket7c73355c-vfwwxd2eb4gp
#
sed -i '' -e "s,aws/eks-distro,${GITHUB_NAME}/eks-distro," $(grep -rl aws/eks-distro * | grep -v customize.sh) LICENSE
sed -i '' -e "s,${ORIGINAL_DATA_BUCKET},${YOUR_DATA_BUCKET}," $(grep -rl ${ORIGINAL_DATA_BUCKET} * | grep -v customize.sh) LICENSE
sed -i '' -e "s,${ORIGINAL_PRESUBMIT_BUCKET},${YOUR_PRESUBMIT_BUCKET}," $(grep -rl ${ORIGINAL_PRESUBMIT_BUCKET} * | grep -v customize.sh) LICENSE
