#!/usr/bin/env bash
mkdir -p png
rm -rf png/*
pdftoppm PCIeDMA.pdf png/PCIeDMA.pdf -png -r 600
pdftoppm PCIeDMA-Assembly.pdf png/PCIeDMA-Assembly.pdf -png -r 600
pngquant --ext .png -f --skip-if-larger --speed 1 --strip png/*.png
