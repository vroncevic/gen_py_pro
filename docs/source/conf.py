# -*- coding: utf-8 -*-

project = u'gen_py_pro'
copyright = u'2017, Vladimir Rocevic <elektron.ronca@gmail.com>'
author = u'Vladimir Rocevic <elektron.ronca@gmail.com>'
version = u'2.0'
release = u'https://github.com/vroncevic/gen_py_pro/releases'
extensions = []
templates_path = ['_templates']
source_suffix = '.rst'
master_doc = 'index'
language = None
exclude_patterns = []
pygments_style = None
html_theme = 'sphinx_rtd_theme'
html_static_path = ['_static']
htmlhelp_basename = 'gen_py_prodoc'
latex_elements = {}
latex_documents = [(
    master_doc, 'gen_py_pro.tex', u'gen\\_py\\_pro Documentation',
    u'Vladimir Rocevic \\textless{}elektron.ronca@gmail.com\\textgreater{}',
    'manual'
)]
man_pages = [(
    master_doc, 'gen_py_pro', u'gen_py_pro Documentation',
     [author], 1
)]
texinfo_documents = [(
    master_doc, 'gen_py_pro', u'gen_py_pro Documentation',
     author, 'gen_py_pro', 'One line description of project.',
     'Miscellaneous'
)]
epub_title = project
epub_exclude_files = ['search.html']
