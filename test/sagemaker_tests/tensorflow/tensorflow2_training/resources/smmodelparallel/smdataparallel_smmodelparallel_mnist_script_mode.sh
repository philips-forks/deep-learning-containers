#!/usr/bin/env bash
# Copyright 2020 Amazon.com, Inc. or its affiliates. All Rights Reserved.
# SPDX-License-Identifier: MIT-0

set -ex

mpirun --allow-run-as-root -np 2 python tf2_conv.py

smddpsinglenode python smdataparallel_mnist.py
