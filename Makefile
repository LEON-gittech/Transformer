notebook: The\ Annotated\ Transformer.py
	jupytext --to ipynb The\ Annotated\ Transformer.py

py: The\ Annotated\ Transformer.py
	jupytext --to py The\ Annotated\ Transformer.py

The\ Annotated\ Transformer.ipynb: The\ Annotated\ Transformer.py
	jupytext --to ipynb The\ Annotated\ Transformer.py

execute: The\ Annotated\ Transformer.py
	jupytext --execute --to ipynb The\ Annotated\ Transformer.py

html: The\ Annotated\ Transformer.ipynb
	jupytext --to ipynb The\ Annotated\ Transformer.py
	jupyter nbconvert --to html The\ Annotated\ Transformer.ipynb

install-jupytext-pip:
	pip install jupytext --upgrade

install-jupytext-conda:
	conda install jupytext -c conda-forge

flake: The\ Annotated\ Transformer.ipynb
	jupyter nbconvert The\ Annotated\ Transformer.ipynb --to python
	flake8 --show-source The\ Annotated\ Transformer.py

clean: 
	rm -f The\ Annotated\ Transformer.py The\ Annotated\ Transformer.ipynb
