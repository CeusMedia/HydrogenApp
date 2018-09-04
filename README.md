# HydrogenApp

Application skeleton to start with for a Hydrogen project.

## Installation

Clone an empty application skeleton:

```composer create-project ceus-media/hydrogen-app -n```

Afterwards change into project folder and run setup for development:

```cd hydrogen-app && make set-install-mode-dev``` 

Now you are ready to install application modules: 

```make install```

Hint: During module installation you will be prompted to enter an email address.
This address will be the systemwide default sender address for module Resource_Mail,
which will be installed automatically within this basic application.

