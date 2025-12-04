# Generate Python Project

<img align="right" src="https://raw.githubusercontent.com/vroncevic/gen_py_pro/dev/docs/gen_py_pro_logo.png" width="25%">

**gen_py_pro** is shell tool for generating Python project.

Developed in **[bash](https://en.wikipedia.org/wiki/Bash_(Unix_shell))** code: **100%**.

[![gen_py_pro_shell_checker](https://github.com/vroncevic/gen_py_pro/actions/workflows/gen_py_pro_shell_checker.yml/badge.svg)](https://github.com/vroncevic/gen_py_pro/actions/workflows/gen_py_pro_shell_checker.yml)

The README is used to introduce the modules and provide instructions on
how to install the modules, any machine dependencies it may have and any
other information that should be provided before the modules are installed.

[![GitHub issues open](https://img.shields.io/github/issues/vroncevic/gen_py_pro.svg)](https://github.com/vroncevic/gen_py_pro/issues) [![GitHub contributors](https://img.shields.io/github/contributors/vroncevic/gen_py_pro.svg)](https://github.com/vroncevic/gen_py_pro/graphs/contributors)

<!-- START doctoc generated TOC please keep comment here to allow auto update -->
<!-- DON'T EDIT THIS SECTION, INSTEAD RE-RUN doctoc TO UPDATE -->
**Table of Contents**

- [Installation](#installation)
- [Usage](#usage)
- [Dependencies](#dependencies)
- [Shell tool structure](#shell-tool-structure)
- [Docs](#docs)
- [Copyright and licence](#copyright-and-licence)

<!-- END doctoc generated TOC please keep comment here to allow auto update -->

### Installation

![Debian Linux OS](https://raw.githubusercontent.com/vroncevic/gen_py_pro/dev/docs/debtux.png)

Navigate to release **[page](https://github.com/vroncevic/gen_py_pro/releases)** download and extract release archive.

To install **gen_py_pro** type the following

```bash
tar xvzf gen_py_pro-3.0.tar.gz
cd gen_py_pro-3.0
cp -R ~/sh_tool/bin/   /root/scripts/gen_py_pro/ver.3.0/
cp -R ~/sh_tool/conf/  /root/scripts/gen_py_pro/ver.3.0/
cp -R ~/sh_tool/log/   /root/scripts/gen_py_pro/ver.3.0/
```

Self generated setup script and execution

```bash
./gen_py_pro_setup.sh

[setup] installing App/Tool/Script gen_py_pro
	Thu Dec  4 07:46:28 PM CET 2025
[setup] copy App/Tool/Script structure
[setup] remove github editor configuration files
[setup] set App/Tool/Script permission
[setup] create symbolic link of App/Tool/Script
[setup] done

/root/scripts/gen_py_pro/ver.3.0/
├── bin/
│   └── gen_py_pro.sh
├── conf/
│   ├── gen_py_pro.cfg
│   ├── gen_py_pro.logo
│   ├── gen_py_pro_util.cfg
│   ├── project_set.cfg
│   └── template/
│       ├── authors.template
│       ├── autogen.template
│       ├── changelog.template
│       ├── configure_ac.template
│       ├── copying.template
│       ├── makefile_am_root.template
│       ├── makefile_am_src.template
│       ├── news.template
│       ├── py_editorconfig.template
│       ├── py.template
│       └── readme.template
└── log/
    └── gen_py_pro.log

4 directories, 19 files
lrwxrwxrwx 1 root root 50 Dec  4 07:46 /root/bin/gen_py_pro -> /root/scripts/gen_py_pro/ver.3.0/bin/gen_py_pro.sh
```

Or You can use docker to create image/container.

### Usage

```bash
# Create symlink for shell tool
ln -s /root/scripts/gen_py_pro/ver.3.0/bin/gen_py_pro.sh /root/bin/gen_py_pro

# Setting PATH
export PATH=${PATH}:/root/bin/

# Generating Python project
gen_py_pro RCP

gen_py_pro ver.3.0
Thu Dec  4 07:46:48 PM CET 2025

[check_root] Check permission for current session? [ok]
[check_root] Done

                                                                                  
                                                                                  
    █████   █████  ███████        ██████   ██   ██       ██████  ██████  ██████   
   ██░░░██ ██░░░██░░██░░░██      ░██░░░██ ░░██ ██       ░██░░░██░░██░░█ ██░░░░██  
  ░██  ░██░███████ ░██  ░██      ░██  ░██  ░░███        ░██  ░██ ░██ ░ ░██   ░██  
  ░░██████░██░░░░  ░██  ░██      ░██████    ░██         ░██████  ░██   ░██   ░██  
   ░░░░░██░░██████ ███  ░██ █████░██░░░     ██     █████░██░░░  ░███   ░░██████   
    █████  ░░░░░░ ░░░   ░░ ░░░░░ ░██       ██     ░░░░░ ░██     ░░░     ░░░░░░    
   ░░░░░                         ░░       ░░            ░░                        
                                                                                   
	                                                  
		Info   github.io/gen_py_pro ver.3.0 
		Issue  github.io/issue
		Author vroncevic.github.io

[gen_py_pro] Loading basic and util configuration!
100% [================================================]

[load_conf] Loading App/Tool/Script configuration!
[check_cfg] Checking configuration file [/root/scripts/gen_py_pro/ver.3.0/conf/gen_py_pro.cfg] [ok]
[check_cfg] Done

[load_conf] Done

[load_util_conf] Load module configuration!
[check_cfg] Checking configuration file [/root/scripts/gen_py_pro/ver.3.0/conf/gen_py_pro_util.cfg] [ok]
[check_cfg] Done

[load_util_conf] Done

[gen_py_pro] Generating project structure!
[gen_py_pro] Generating directory [RCP/]
[gen_py_pro] Generating directory [RCP/src/]
[load_util_conf] Load module configuration!
[check_cfg] Checking configuration file [/root/scripts/gen_py_pro/ver.3.0/conf/project_set.cfg] [ok]
[check_cfg] Done

[load_util_conf] Done

[gen_py_pro] Generating file [RCP/autogen.sh]
[gen_py_pro] Generating file [RCP/configure.ac]
[gen_py_pro] Generating file [RCP/Makefile.am]
[gen_py_pro] Generating file [RCP/src/Makefile.am]
[gen_py_pro] Generating file [RCP/src/RCP.py]
[gen_py_pro] Generating file [RCP/src/.editorconfig]
[gen_py_pro] Generating file [RCP/ChangeLog]
[gen_py_pro] Generating file [RCP/COPYING]
[gen_py_pro] Generating file [RCP/AUTHORS]
[gen_py_pro] Generating file [RCP/NEWS]
[gen_py_pro] Generating file [RCP/README]
[gen_py_pro] Set owner!
[gen_py_pro] Set permission!
[logging] Checking directory [/root/scripts/gen_py_pro/ver.3.0/log/]? [ok]
[logging] Write info log!
[logging] Done

[gen_py_pro] Done
[check_tool] Checking tool [/usr/bin/tree]? [ok]
[check_tool] Done

RCP/
├── AUTHORS
├── autogen.sh
├── ChangeLog
├── configure.ac
├── COPYING
├── Makefile.am
├── NEWS
├── README
└── src
    ├── Makefile.am
    └── RCP.py

1 directory, 10 files
```

### Dependencies

**gen_py_pro** requires next modules and libraries
* sh_util [https://github.com/vroncevic/sh_util](https://github.com/vroncevic/sh_util)

### Shell tool structure

**gen_py_pro** is based on MOP.

Shell tool structure

```bash
sh_tool/
├── bin/
│   └── gen_py_pro.sh
├── conf/
│   ├── gen_py_pro.cfg
│   ├── gen_py_pro.logo
│   ├── gen_py_pro_util.cfg
│   ├── project_set.cfg
│   └── template/
│       ├── authors.template
│       ├── autogen.template
│       ├── changelog.template
│       ├── configure_ac.template
│       ├── copying.template
│       ├── makefile_am_root.template
│       ├── makefile_am_src.template
│       ├── news.template
│       ├── py_editorconfig.template
│       ├── py.template
│       └── readme.template
└── log/
    └── gen_py_pro.log
```

### Docs

[![Documentation Status](https://readthedocs.org/projects/gen_py_pro/badge/?version=latest)](https://gen-py-pro.readthedocs.io/projects/gen_py_pro/en/latest/?badge=latest)

More documentation and info at
* [https://gen_py_pro.readthedocs.io/en/latest/](https://gen-py-pro.readthedocs.io/en/latest/)
* [https://www.gnu.org/software/bash/manual/](https://www.gnu.org/software/bash/manual/)

### Copyright and licence

[![License: GPL v3](https://img.shields.io/badge/License-GPLv3-blue.svg)](https://www.gnu.org/licenses/gpl-3.0) [![License](https://img.shields.io/badge/License-Apache%202.0-blue.svg)](https://opensource.org/licenses/Apache-2.0)

Copyright (C) 2017 - 2026 by [vroncevic.github.io/gen_py_pro](https://vroncevic.github.io/gen_py_pro)

**gen_py_pro** is free software; you can redistribute it and/or modify
it under the same terms as Bash itself, either Bash version 4.2.47 or,
at your option, any later version of Bash 4 you may have available.

Lets help and support FSF.

[![Free Software Foundation](https://raw.githubusercontent.com/vroncevic/gen_py_pro/dev/docs/fsf-logo_1.png)](https://my.fsf.org/)

[![Donate](https://www.paypalobjects.com/en_US/i/btn/btn_donateCC_LG.gif)](https://my.fsf.org/donate/)
