#!/usr/bin/env python
# -*- coding: utf-8 -*-

import os

image_path = "/home/ankommen/Desktop/test/mission1/"


def rename(image_path):
    file_list=os.listdir(image_path)
    for file in file_list:
        os.rename(image_path+file, image_path+file.replace(":","")) 


rename(image_path)
