#!/bin/bash
set -e
cd /Users/aarontun/projects
rm -rf temp_repo
git clone https://github.com/aaron24-web/Act_flutter_aaron.git temp_repo
mkdir temp_repo/sahcaba
rsync -av --exclude='.git' --exclude='build' --exclude='.idea' --exclude='.dart_tool' --exclude='windows' /Users/aarontun/projects/sahcaba/ temp_repo/sahcaba/
cd temp_repo
git add .
git commit -m "Add sahcaba project"
git push
rm -rf /Users/aarontun/projects/temp_repo