#!/usr/bin/env bash
# Copyright 2023 The Bazel Authors. All rights reserved.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.


if ! command -v addlicense @>&1 >/dev/null; then
    echo "ERROR: addlicense not installed."
    echo "Install using https://github.com/google/addlicense#install"
    exit 1
fi

addlicense -v -l apache -c 'The Bazel Authors. All rights reserved.' "$@"
