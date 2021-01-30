#!/usr/bin/env bash

cmake -DCMAKE_BUILD_TYPE=Release -Bbuildbin -H.
cmake --build buildbin -- -j 4
