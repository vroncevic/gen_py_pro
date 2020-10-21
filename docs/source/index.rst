gen_py_pro
-----------

**gen_py_pro** is shell tool for generating Python project.

Developed in `bash <https://en.wikipedia.org/wiki/Bash_(Unix_shell)>`_ code: **100%**.

|GitHub shell checker|

.. |GitHub shell checker| image:: https://github.com/vroncevic/gen_py_pro/workflows/gen_py_pro%20shell%20checker/badge.svg
   :target: https://github.com/vroncevic/gen_py_pro/actions?query=workflow%3A%22gen_py_pro+shell+checker%22

The README is used to introduce the tool and provide instructions on
how to install the tool, any machine dependencies it may have and any
other information that should be provided before the tool is installed.

|GitHub issues| |Documentation Status| |GitHub contributors|

.. |GitHub issues| image:: https://img.shields.io/github/issues/vroncevic/gen_py_pro.svg
   :target: https://github.com/vroncevic/gen_py_pro/issues

.. |GitHub contributors| image:: https://img.shields.io/github/contributors/vroncevic/gen_py_pro.svg
   :target: https://github.com/vroncevic/gen_py_pro/graphs/contributors

.. |Documentation Status| image:: https://readthedocs.org/projects/gen_py_pro/badge/?version=latest
   :target: https://gen_py_pro.readthedocs.io/projects/gen_py_pro/en/latest/?badge=latest

.. toctree::
    :hidden:

    self

Installation
-------------

Navigate to release `page`_ download and extract release archive.

.. _page: https://github.com/vroncevic/gen_py_pro/releases

To install **gen_py_pro** type the following:

.. code-block:: bash

   tar xvzf gen_py_pro-x.y.z.tar.gz
   cd gen_py_pro-x.y.z
   cp -R ~/sh_tool/bin/   /root/scripts/gen_py_pro/ver.1.0/
   cp -R ~/sh_tool/conf/  /root/scripts/gen_py_pro/ver.1.0/
   cp -R ~/sh_tool/log/   /root/scripts/gen_py_pro/ver.1.0/

Or You can use Docker to create image/container.

|GitHub docker checker|

.. |GitHub docker checker| image:: https://github.com/vroncevic/gen_py_pro/workflows/gen_py_pro%20docker%20checker/badge.svg
   :target: https://github.com/vroncevic/gen_py_pro/actions?query=workflow%3A%22gen_py_pro+docker+checker%22

Dependencies
-------------

**gen_py_pro** requires next modules and libraries:

* sh_util `https://github.com/vroncevic/sh_util <https://github.com/vroncevic/sh_util>`_

Shell tool structure
---------------------

**gen_py_pro** is based on MOP.

Code structure:

.. code-block:: bash

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

Copyright and licence
----------------------

|License: GPL v3| |License: Apache 2.0|

.. |License: GPL v3| image:: https://img.shields.io/badge/License-GPLv3-blue.svg
   :target: https://www.gnu.org/licenses/gpl-3.0

.. |License: Apache 2.0| image:: https://img.shields.io/badge/License-Apache%202.0-blue.svg
   :target: https://opensource.org/licenses/Apache-2.0

Copyright (C) 2016 by `vroncevic.github.io/gen_py_pro <https://vroncevic.github.io/gen_py_pro>`_

**gen_py_pro** is free software; you can redistribute it and/or modify it
under the same terms as Bash itself, either Bash version 4.2.47 or,
at your option, any later version of Bash 4 you may have available.

Lets help and support FSF.

|Free Software Foundation|

.. |Free Software Foundation| image:: https://raw.githubusercontent.com/vroncevic/gen_py_pro/dev/docs/fsf-logo_1.png
   :target: https://my.fsf.org/

|Donate|

.. |Donate| image:: https://www.paypalobjects.com/en_US/i/btn/btn_donateCC_LG.gif
   :target: https://my.fsf.org/donate/

Indices and tables
------------------

* :ref:`genindex`
* :ref:`modindex`
* :ref:`search`
