sudo apt install -y python-pyqt5 python-pyqt5.qtquick python-dbus.mainloop.pyqt5 python-pyqt5.qtopengl python-pyqt5.qsci python-pyqt5.qtmultimedia\
 qml-module-qtquick-controls gstreamer1.0-plugins-bad libqt5multimedia5-plugins pyqt5-dev-tools python-dev python-wheel python-setuptools\
 python-pip git python-pyqtgraph python-pyqt5.qtwebkit qttools5.dev qttools5-dev-tools wget
cd ~/Downloads
wget -c "https://github.com/kcjengr/probe_basic/releases/download/v0.3.4/ProbeBasic-Installer-0.3.4.run"
chmod 0755 ProbeBasic-Installer-0.3.4.run
 ./ProbeBasic-Installer-0.3.4.run
cd ~/
git clone https://github.com/kcjengr/qtpyvcp qtpyvcp
cd qtpyvcp
pip install --editable .
cd ~/qtpyvcp/pyqt5designer/Qt5.7.1-64bit/
sudo ./install.sh
cp ~/qtpyvcp/scripts/.xsessionrc ~/
source ~/.xsessionrc
cd ~/
git clone https://github.com/kcjengr/probe_basic.git
cd probe_basic
qcompile .
pip install -e .
cd ~/
cp -r ~/probe_basic/probe_basic/fonts/ ~/.local/share/
if [ ! -d ~/linuxcnc/configs ]; then
    mkdir -p ~/linuxcnc/configs
fi
cp -r ~/probe_basic/config/probe_basic/ ~/linuxcnc/configs/
pip install git+https://github.com/kcjengr/qtpyvcp.conversational-gcode.git
editvcp probe_basic
