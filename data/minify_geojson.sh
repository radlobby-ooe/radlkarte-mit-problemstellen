#!/bin/bash
# shorten attribute names, remove newlines, limit accuracy of gps coordinates
cat radlkarte-at-vienna.geojson | tr '\n' ' ' | sed -e 's/stress/s/g' -e 's/priority/p/g' | sed -r 's#(\.[0-9]{5})([0-9]*)#\1#g' > radlkarte-at-vienna.min.geojson
