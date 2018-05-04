import pathlib

c.NotebookApp.notebook_dir = str(pathlib.Path('~/notebooks').expanduser())
c.NotebookApp.open_browser = False
c.NotebookApp.port = 8888

