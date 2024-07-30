apt install bc bison build-essential ccache curl flex g++-multilib gcc-multilib git git-lfs gnupg gperf imagemagick lib32readline-dev lib32z1-dev libelf-dev liblz4-tool libsdl1.2-dev libssl-dev libxml2 libxml2-utils lzop pngcrush rsync schedtool squashfs-tools xsltproc zip zlib1g-dev
wget http://archive.ubuntu.com/ubuntu/pool/universe/n/ncurses/libtinfo5_6.4-2_amd64.deb && sudo dpkg -i libtinfo5_6.4-2_amd64.deb && rm -f libtinfo5_6.4-2_amd64.deb
wget http://archive.ubuntu.com/ubuntu/pool/universe/n/ncurses/libncurses5_6.4-2_amd64.deb && sudo dpkg -i libncurses5_6.4-2_amd64.deb && rm -f libncurses5_6.4-2_amd64.deb
sudo apt-get install openjdk-11-jdk
mkdir -p ~/bin
mkdir -p ~/android/lineage
curl https://storage.googleapis.com/git-repo-downloads/repo > ~/bin/repo
chmod a+x ~/bin/repo
echo " # set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi" > ~/.profile
source ~/.profile
git config --global user.email "hay31228@gmail.com"
git config --global user.name "hay-guys"
git lfs install
git config --global trailer.changeid.key "Change-Id"
export USE_CCACHE=1
export CCACHE_EXEC=/usr/bin/ccache
ccache -M 50G
ccache -o compression=true
export ANDROID_JACK_VM_ARGS="-Dfile.encoding=UTF-8 -XX:+TieredCompilation -Xmx4G"
cd ~/android/lineage
repo init -u https://github.com/LineageOS/android.git -b lineage-21.0 --git-lfs
repo sync -j$(nproc --all)
cd ~/android/lineage
source build/envsetup.sh
breakfast lt02ltespr
source build/envsetup.sh
breakfast lt02ltespr
cd ~/android/lineage/device/samsung/lt02ltespr
./extract-files.sh
croot
brunch lt02ltespr
cd $OUT


