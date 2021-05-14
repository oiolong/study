Shell script to run `git pull` inside a subdirectory which are git repositories.

i make an app to whach tv shows for free

and i found a git hub repository 

there are many live streming 

i wanna play these live streaming in my app

and i don't wanna maintain by myself

so ...

```shell

#!/bin/bash

cd /home/user888/simplepy

git status >/dev/null 2>&1
[ $(echo $?) -eq 0 ] && echo "Updating ${dir%*/}..." && git pull



```

[updateSimplePY.sh](data/linux/how_to_git_pull_inside_a_subdirectory/updateSimplePY.sh)

