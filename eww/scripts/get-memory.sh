#!/bin/bash
free | grep Mem | awk '{print int($3/$2 * 100)}'
