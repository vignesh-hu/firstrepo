#!/bin/bash
echo "Giving permission for Building_Patch_Files.sh"
chmod 777 Building_Patch_Files.sh
echo "Executiing Building_Patch_Files.sh"
./Building_Patch_Files.sh
echo "checking is the patches are builded"
find opt/ -type f -mmin -10  | awk '{print $1}'
tar -cvf opt.tar.gz opt