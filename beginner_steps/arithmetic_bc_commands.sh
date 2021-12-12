#!/bin/bash

# Work with decimal numbers include floating points
echo "8.5 / 2.3 = $( echo '8.5 / 2.3' | bc )"
echo -e "with scale=2\n8.5 / 2.3 = $( echo 'scale=2;8.5 / 2.3' | bc )"
echo -e "with scale=30\n8.5 / 2.3 = $( echo 'scale=30;8.5 / 2.3' | bc )"
echo -e "with scale=50\n8.5 / 2.3 = $( echo 'scale=50;8.5 / 2.3' | bc )"
