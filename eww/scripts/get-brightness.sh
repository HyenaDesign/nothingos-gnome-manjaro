#!/bin/bash
brightnessctl -m | awk -F, '{print substr($4, 0, length($4)-1)}'
