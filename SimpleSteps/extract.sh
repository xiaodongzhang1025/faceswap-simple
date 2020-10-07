#/bin/sh
if [ "$1" == "" ]; then
  echo "Usage: $0 photo_dir"
  exit -1
fi
echo extract photos from "$1" to "$1_extract"
/D/Python38/python ../faceswap.py extract -i "$1" -o "$1_extract"
cp "$1"/*.fsa "$1_extract"/
