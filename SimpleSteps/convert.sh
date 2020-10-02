#/bin/sh
if [ "$1" == "" ] || [ "$2" == "" ]; then
  echo "Usage: $0 convert_dir module_dir"
  exit -1
fi

echo convert_dir="$1" module_dir="$2"
echo output_dir="$1_output"

/D/Python38/python ../faceswap.py convert -i "$1" -o "$1_output" -m "$2"
