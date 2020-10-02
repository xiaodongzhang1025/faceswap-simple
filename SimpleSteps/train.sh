#/bin/sh
if [ "$1" == "" ] || [ "$2" == "" ]; then
  echo "Usage: $0 data_dir_A data_dir_B"
  exit -1
fi

echo train data A="$1" B="$2" m="$1_$2"
/D/Python38/python ../faceswap.py train -A "$1" -B "$2" -m "$1_$2"
