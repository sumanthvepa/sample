#!/bin/bash
# -*- coding: utf-8 -*-
# -------------------------------------------------------------------
# run.sh: Sample run script. Runs an unconfigured nginx instance
#
# Copyright (C) 2024-25 Sumanth Vepa.
#
# This program is free software: you can redistribute it and/or
# modify it under the terms of the GNU General Public License a
# published by the Free Software Foundation, either version 3 of the
# License, or (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program.  If not, see
# <https://www.gnu.org/licenses/>.
# -------------------------------------------------------------------


# Use this to run the container to serve the sample website
#docker container run \
#  --name='sample' \
#  --publish 9000:80 \
#  --volume ./sample-website:/usr/share/nginx/html \
#  --detach \
#  nginx-test

# The command below runs an an unconfigured nginx instance
# You will get the default nginx page. This can be used to test
# if the container and the nginx setup within it is working correctly
# before attempting the volume mount shown in the example above
docker container run \
  --name='sample' \
  --publish 9000:80 \
  --detach \
  sample-nginx:latest

