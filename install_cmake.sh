# /bin/bash
curl -L https://github.com/Kitware/CMake/releases/download/v3.30.5/cmake-3.30.5-macos10.10-universal.tar.gz --output ~/goinfre/temp.tar.gz
tar -xvzf ~/goinfre/temp.tar.gz --strip 1 -C ~/goinfre/
rm -f ~/goinfre/temp.tar.gz