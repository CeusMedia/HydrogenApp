# HydrogenApp

Application skeleton to start with for a Hydrogen project.

## Installation

Clone an empty application skeleton:

```composer create-project ceus-media/hydrogen-app -sdev -n```

Afterwards change into project folder and run setup for development:

```cd hydrogen-app && make set-install-mode-dev``` 

Now you are ready to install application modules: 

```make install```

During installation you will be prompted for some information:

1. OS filesystem user and group
2. URL of application
3. Database credentials
4. Default sender mail address

The information are necessary, since this skeleton application is providing database access and provides mailing.

