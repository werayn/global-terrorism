# Global Terrorism Project
---

## Description

Welcome !
This is a Data Science project focus in Global Terrorism, built with `Python3` and `pandas`.

## Getting started

### Prerequisites

#### IDE

You can choose the IDE you whant, but you need to have some packages installed with it like `Python` for the live linter.
Here an exemple of the needed packages with Visual Studio Code IDE:

- `Python`

#### Python3

Since it's a Python-Based project, you need to install some stuff on your computer:

- macOS:
  Follow the [install instructions for your MacOs distribution](https://python/mac) to install `python`.

---

- Windows:
  Note that you can't run iOS app on windows.
  Follow the [install instructions for your windows distribution](https://python/windows) to install `python`.

---

- Linux:
  Follow the [install instructions for your linux distribution](https://python/linux) to install `python`.
---

#### Docker

- macOS / Windows :
    Follow the [install instructions for you OS distribution](https://docs.docker.com/docker-for-windows/install/) to install `docker`

- Linux :
    Follow the [install instructions for you Linux distribution](https://docs.docker.com/install/linux/docker-ce/ubuntu/) to install `docker`

### Install the project

First you need to clone the repository:
Do not forget to upload your SSH Key into github and having the right access.

```bash
git clone git@github.com:werayn/draw-my-website
```

From within the root directory, first remove git tracking from the project

```bash
make clean
```

If you have not already done so, build the Docker image (you will only need to do this once).

```bash
make docker-build
```

If you would like to install additional packages in the container you can add them to `requirements.txt` and rebuild the image with the previous script.

### Run it

When everything is installed, if you want to run it in local, do the following:

```bash
make docker-run
```

This will open a bash shell within the Docker container. Within the container the 'project' directory o You can now access the full file structure of the project from within the container.

You can open an interactive environment by running :

```bash
make local-jupyter
```

then navigating to `https://localhost:8888/` in a browser.
You will see a login screen asking for a password or token.
Copy the token from your console.
Return to the bash console by entering `Ctrl-C`.

To exit container just run inside :

```bash
exit
```

### Test it

First test your environment like this

```bash
make test
```

when everything is installed and run well, if you want to run every unit tests, do the following:

```bash
make test
```

### Deployement

You need to install all the dependencies before trying to deploy it:

### Documentation

if you want to know everything about our project just run :

```bash
make gen-doc
```

and then open the `build/index.html` in your favorite browser to see our documentation.

## Project Organization
------------
    ├── README.md          <- The top-level README for developers using this project.
    ├── data
    │   ├── interm         <- Intermediate data that has been transformed
    │   ├── organized      <- Raw datasets that have been renamed or reorganized into a new folder structure but have not been changed at all      
    │   ├── processed      <- The final, canonical data sets for modeling
    │   └── raw            <- The original, immutable data dump
    │
    ├── docs               <- A default Sphinx project; see sphinx-doc.org for details
    │
    ├── guide              <- A set of markdown files with documented best practices, guidelines and rools for collaborative projects
    │
    ├── models             <- Trained and serialized models, model predictions, or model summaries
    │
    ├── notebooks          <- Jupyter notebooks. Naming convention is a number (for ordering),
    │                         the creator's initials, and a short `-` delimited description, e.g
    │                         `1.0-jqp-initial-data-exploration`
    │
    ├── references         <- Data dictionaries, manuals, and all other explanatory materials.
    │
    ├── reports            <- Generated analysis as HTML, PDF, LaTeX, etc.
    │   └── figures        <- Generated graphics and figures to be used in reporting
    │
    ├── requirements.txt   <- The requirements file for reproducing the analysis environment
    │
    └── src                <- Source code for use in this project.
        │
        ├── data           <- Scripts to download or generate data
        │   └── make_dataset.py
        │
        ├── features       <- Scripts to turn raw data into features for modeling
        │   └── build_features.py
        │
        ├── models         <- Scripts to train models and then use trained models to make
        │   │                 predictions
        │   ├── predict_model.py
        │   └── train_model.py
        │
        └── visualization  <- Scripts to create exploratory and results oriented visualizations
            └── visualize.py
--------

## Contributing

Please read [CONTRIBUTING.md](CONTRIBUTING.md) for details on our code of conduct, and the process for submitting pull requests to us.

## Authors

* **Junique Virgile** - *Initial contributor* - [Junique Virgile](https://github.com/werayn)

## License

- [Apache License 2.0](https://www.apache.org/licenses/LICENSE-2.0)
