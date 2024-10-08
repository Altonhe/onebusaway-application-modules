#
# Copyright (C) 2024 Open Transit Software Foundation <info@onebusaway.org>
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#         http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

FROM maven:3-eclipse-temurin-11

# Install additional development tools if needed
RUN apt-get update && apt-get install -y \
    git \
    vim \
    && rm -rf /var/lib/apt/lists/*

RUN mkdir -p /root/.m2/repository

WORKDIR /src

# Set the entrypoint to bash so the container doesn't exit immediately
ENTRYPOINT ["/bin/bash"]