#!/usr/bin/env python
# -*- coding: utf-8 -*-
from distutils.core import setup
from setuptools import setup


VERSION = '0.1.0'


setup(
    name='test',
    version=VERSION,
    author=', '.join([
        'Mahmoud Abdelkader',
    ]),
    packages=['.'],
    include_package_data=True,
    zip_safe=False,
    install_requires=[
        'attrs>=18.0,<19',
        'flask',
    ],
    license='MIT'
)
