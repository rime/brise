#! /bin/bash
#
# DEPRECATED; only needed by librime < 1.2
#
if [ -e essay.kct ]; then
  rm essay.kct
fi
kctreemgr create -apow 0 -tl -tc -bnum 30000 -psiz 32768 essay.kct
kctreemgr import essay.kct essay.txt
