# Generate Python Project

**gen_py_pro** is shell tool for generating Python project.

Developed in **[bash](https://en.wikipedia.org/wiki/Bash_(Unix_shell))** code: **100%**.

[![gen_py_pro shell checker](https://github.com/vroncevic/gen_py_pro/workflows/gen_py_pro%20shell%20checker/badge.svg)](https://github.com/vroncevic/gen_py_pro/actions?query=workflow%3A%22gen_py_pro+shell+checker%22)

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

Navigate to release [page](https://github.com/vroncevic/gen_py_pro/releases) download and extract release archive.

To install **gen_py_pro** type the following:

```
tar xvzf gen_py_pro-x.y.z.tar.gz
cd gen_py_pro-x.y.z
cp -R ~/sh_tool/bin/   /root/scripts/gen_py_pro/ver.1.0/
cp -R ~/sh_tool/conf/  /root/scripts/gen_py_pro/ver.1.0/
cp -R ~/sh_tool/log/   /root/scripts/gen_py_pro/ver.1.0/
```

![alt tag](https://raw.githubusercontent.com/vroncevic/gen_py_pro/dev/docs/setup_tree.png)

Or You can use docker to create image/container.

[![gen_py_pro docker checker](https://github.com/vroncevic/gen_py_pro/workflows/gen_py_pro%20docker%20checker/badge.svg)](https://github.com/vroncevic/gen_py_pro/actions?query=workflow%3A%22gen_py_pro+docker+checker%22)

### Usage

```
# Create symlink for shell tool
ln -s /root/scripts/gen_py_pro/ver.1.0/bin/gen_py_pro.sh /root/bin/gen_py_pro

# Setting PATH
export PATH=${PATH}:/root/bin/

# Generating Python project
gen_py_pro SimplePyTool
```

### Dependencies

**gen_py_pro** requires next modules and libraries:
* sh_util [https://github.com/vroncevic/sh_util](https://github.com/vroncevic/sh_util)

### Shell tool structure

**gen_py_pro** is based on MOP.

Code structure:
```
.
├── bin/
│   └── gen_py_pro.sh
├── conf/
│   ├── gen_py_pro.cfg
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

[![Documentation Status](https://readthedocs.org/projects/gen_py_pro/badge/?version=latest)](https://gen_py_pro.readthedocs.io/projects/gen_py_pro/en/latest/?badge=latest)

More documentation and info at:
* [https://gen_py_pro.readthedocs.io/en/latest/](https://gen_py_pro.readthedocs.io/en/latest/)
* [https://www.gnu.org/software/bash/manual/](https://www.gnu.org/software/bash/manual/)

### Copyright and licence

[![License: GPL v3](https://img.shields.io/badge/License-GPLv3-blue.svg)](https://www.gnu.org/licenses/gpl-3.0) [![License](https://img.shields.io/badge/License-Apache%202.0-blue.svg)](https://opensource.org/licenses/Apache-2.0)

Copyright (C) 2016 by [vroncevic.github.io/gen_py_pro](https://vroncevic.github.io/gen_py_pro)

**gen_py_pro** is free software; you can redistribute it and/or modify
it under the same terms as Bash itself, either Bash version 4.2.47 or,
at your option, any later version of Bash 4 you may have available.

