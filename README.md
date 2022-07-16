# HydrogenApp

Application skeleton to start with for a Hydrogen project.

## Installation

**TLDR:** ```./install.sh```

Clone an empty application skeleton:

```composer create-project ceus-media/hydrogen-app -sdev -n```

Afterwards change into project folder and run setup for development:

```cd hydrogen-app```

There you will find 2 hymn files, which can be used to install different base applications.
Using the <code>.hymn.normal.dev</code> will install a Hydrogen app with database and email support and the pages modules.
You will need to have a prepared and empty database for that.

If you only want to take a short look or try something without database or email support, you can use the <code>.hymn.mini.dev</code>.
We will use this one for now, by copying it to be the installation script for development:

```cp .hymn.mini.dev .hymn.dev```

No we announce development mode:

```make set-install-mode-dev``` 

 This will copy:
- <code>config/config.ini.dev</code> to <code>config/config.ini</code>
- <code>.hymn.dev</code> to <code>.hymn</code>

Now you are ready to install application modules.
There are several installation types with or without database import.
For now, we will only install the application files, since we set to go without any database:

```make install-files-only```

During installation you will be prompted for some information:

- OS filesystem user and group
- URL of application

Having all set up, the installer will use composer to manage dependencies and <code>hymn</code> to install the modules, defined in the <code>.hymn</code> files, aswell all related modules.
The final step is to set the file and folder permissions on all installed files.

Finally, you can access the application using your browser.
