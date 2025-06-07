# -*- coding: utf-8 -*-
# -------------------------------------------------------------------
# Makefile: Makefile to create nginx docker image
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
.PHONY: all build run clean

all: build

build:
	docker build -t sample-nginx:latest .

run: 
	docker container run --name='sample-nginx' --publish 9000:80 --detach sample-nginix

clean:

	docker image rm sample-nginx:latest

