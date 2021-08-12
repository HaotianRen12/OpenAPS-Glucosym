#!/usr/bin/env bash

python_version=python2.7
venv_name=venv

echo "Is 'venv' the folder name of the virtual environment?(Y/n)"
read answer
if [[ "${answer}" == n ]] ; then
  echo "Please enter the folder name of the virtual environment:"
  read venv_name
  while [[ ! -d "./${venv_name}" ]] ; do
    echo "Folder does exist."
    echo "Please enter the folder name of the virtual environment:"
    read venv_name 
  done
fi

pip install setuptools==44.1.1
pip install numpy==1.16.6 watchdog==0.10.7 nodeenv==1.6.0 openaps==0.1.5 openaps-contrib==0.0.15 matplotlib==2.2.5

apt-get download python-dev=2.7.12-1~16.04 python-software-properties=0.96.20.10

dpkg -x ./python-dev* ./dev
dpkg -x ./python-software-properties* ./software-properties

mv ./dev ./${venv_name}/lib/${python_version}/site-packages
mv ./software-properties ./${venv_name}/lib/${python_version}/site-packages 

rm ./python-dev*
rm ./python-software-properties*

nodeenv -p --node=12.22.1
npm init -g
npm install -g json@11.0.0 oref0@0.7.0

cp -f ./basal-set-temp.js ./${venv_name}/lib/node_modules/oref0/lib/
cp -f ./determine-basal.js ./${venv_name}/lib/node_modules/oref0/lib/determine-basal/
cp -f ./oref0-determine-basal.js ./${venv_name}/lib/node_modules/oref0/bin/

cd ./openaps2.7
git init

echo "Auto-installation finished!"








