# Alastria Geth
# Copyright (C) 2018 Rodrigo Martínez <dev@brunneis.com>
#
# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
# You should have received a copy of the GNU General Public License
# along with this program.  If not, see <http://www.gnu.org/licenses/>.

FROM brunneis/alastria
MAINTAINER "Rodrigo Martínez" <dev@brunneis.com>

################################################
# ALASTRIA GETH
################################################

VOLUME ["/tmp/geth"]
COPY ["entrypoint.sh", "/usr/bin/"]
ENTRYPOINT ["entrypoint.sh", "geth", "--maxpeers", "0", "--datadir", "/tmp/geth"]
CMD ["console"]
