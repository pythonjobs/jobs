#! /bin/bash
# Copyright (C) 2018 Sebastian Pipping <sebastian@pipping.org>
# Licensed under the MIT license

set -e

cd /root/pythonjobs

# Sync potential changes done after building the image
( cd template && git pull origin master )
./template/build.py .

# Be helpful about non-standard port/URL
cat <<INFO_END

XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
X                                                   X
X   Starting to serve at  http://127.0.0.1:50080/   X
X                                          ^^^      X
XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
INFO_END

gatling_params=(
    -F  # no FTP
    -S  # no SMB
    -d  # enable directory listings
    -c template/hyde/deploy  # dir to serve and change into
)
exec gatling "${gatling_params[@]}"
