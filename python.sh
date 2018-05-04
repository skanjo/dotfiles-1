# set up python
# see https://medium.com/@henriquebastos/the-definitive-guide-to-setup-my-python-workspace-628d68552e14

# XXX do something different on WSL!

brew install pyenv
brew install pyenv-virtualenv
brew intsall pyenv-virtualenvwrapper

pyenv install 3.6.1
pyenv install 2.7.13

# XXX does this work? or does it need to be run manuall?
 pyenv activate jupyter3
 pip install jupyter
 python -m ipykernel install --user
 pyenv deactivate

 pyenv activate ipython2
 pip install ipykernel
 python -m ipykernel install --user
 pyenv deactivate
 
 pyenv global 3.6.1 2.7.13 jupyter3 ipython2