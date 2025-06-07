# -*- coding: utf-8 -*-
# -------------------------------------------------------------------
# nginx/Dockerfile: Docker file to create an nginx server
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

# This Dockerfile creates an nginx installation running on
# almalinux:9-minimal
FROM almalinux:9-minimal AS unoptimized
WORKDIR /
RUN microdnf -y install nginx


FROM scratch
COPY --from=unoptimized / /
LABEL org.opencontainers.image.authors="Sumanth Vepa<svepa@milestone42.com>"
LABEL org.opencontainers.image.description="Nginx server on almalinux:9-minimal"
LABEL org.opencontainers.image.url="docker://svepa@darkness2.milestone42.com:nginx"
LABEL org.opencontainers.image.source="git://svepa@crystal:Documents/Repositories/sample.git/nginx/"
STOPSIGNAL SIGQUIT
EXPOSE 80/tcp

CMD ["nginx", "-g", "daemon off;"]
