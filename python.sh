# set up python

brew install python --with-brewed-openssl
brew install python3 --with-brewed-openssl

pip install --upgrade pip setuptools
pip3 install --upgrade pip setuptools

pip install virtualenv virtualenvwrapper

curl https://raw.githubusercontent.com/mitsuhiko/pipsi/master/get-pipsi.py | python
pipsi install lice
pipsi install pygments