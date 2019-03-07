# You can set these variables from the command line.
SPHINXOPTS    =
SPHINXBUILD   = sphinx-build
DOCSOURCE     = docs
BUILDDIR      = build

SHELL = C:\Program Files\Git\bin\sh.exe

ECHO	= /bin/echo -e
DEFAULT	= "\033[00m"
GREEN	= "\033[0;32m"
TEAL	= "\033[1;36m"
RED	= "\033[1;31m"

# add the extension .SH to the environment variable PATHEXT if you use windows
# and be sure to have git bash

# First remove git tracking from the project
clean:
ifeq ($(OS),Windows_NT)
	@$(SHELL) scripts\clean.sh
	@$(ECHO) $(RED) "[DELETED] :" $(TEAL) "Clean git tracking !" $(DEFAULT)
else
	@scripts/clean.sh
	@$(ECHO) $(RED) "[DELETED] :" $(TEAL) "Clean git tracking !" $(DEFAULT)
endif

# Build the Docker image (you will only need to do this once).
docker-build:
ifeq ($(OS),Windows_NT)
	@$(SHELL) scripts\dockerbuild.sh
	@$(ECHO) $(RED) "[DELETED] :" $(TEAL) "Clean git tracking !" $(DEFAULT)
else
	@scripts/dockerbuild.sh
	@$(ECHO) $(RED) "[DELETED] :" $(TEAL) "Clean git tracking !" $(DEFAULT)
endif

# Run the Docker container
docker-run:
ifeq ($(OS),Windows_NT)
	@$(SHELL) scripts\container.sh
	@$(ECHO) $(GREEN) "[OK] :" $(TEAL) "Container is running !" $(DEFAULT)
else
	@scripts/container.sh
	@$(ECHO) $(GREEN) "[OK] :" $(TEAL) "Container is running !" $(DEFAULT)
endif

# open an interactive environment then navigating to https://localhost:8888/
local-jupyter:
ifeq ($(OS),Windows_NT)
	@$(SHELL) scripts\jupyterlab.sh
	@$(ECHO) $(GREEN) "[OK] :" $(TEAL) "Jupyter launch" $(DEFAULT)
else
	@scripts/jupyterlab.sh
	@$(ECHO) $(GREEN) "[OK] :" $(TEAL) "Jupyter launch" $(DEFAULT)
endif

# Test the environment
test-env:
	@python test_environment.py
	@$(ECHO) $(GREEN) "[OK] :" $(TEAL) "Nice env !" $(DEFAULT)

# Generate doc / Open in your browser the file build/index.html
gen-doc:
	@make html
	@$(ECHO) $(RED) "[OK] :" $(TEAL) "Doc generate !" $(DEFAULT)


# Put it first so that "make" without argument is like "make help".
help:
	@$(SPHINXBUILD) -M help "$(DOCSOURCE)" "$(BUILDDIR)" $(SPHINXOPTS) $(O)

# Catch-all target: route all unknown targets to Sphinx using the new
# "make mode" option.  $(O) is meant as a shortcut for $(SPHINXOPTS).
%: Makefile
	@$(SPHINXBUILD) -M $@ "$(DOCSOURCE)" "$(BUILDDIR)" $(SPHINXOPTS) $(O)

.PHONY: clean docker-build docker-run local-jupyter test-env gen-doc help Makefile
