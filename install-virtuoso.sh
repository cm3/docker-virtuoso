git clone https://github.com/openlink/virtuoso-opensource.git
cd virtuoso-opensource
git branch stable/7 origin/stable/7
git checkout stable/7
./autogen.sh
./configure --with-readline
make
make install
mkdir -p /usr/local/virtuoso-opensource/lib/virtuoso/hosting
chown -R virtuoso/virtuoso /usr/local/virtuoso-opensource/
