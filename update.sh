#!/bin/bash
git checkout main
git fetch upstream
git merge upstream/main
git push
git checkout mich
git merge origin/main
git push
