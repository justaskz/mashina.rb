### INSTALL



### COMMANDS
```bash
# init
mashina init
---
print user shell files
modify PATH by adding mashina bin

# show state
mashina state

# install
mashina install <PACKAGE_NAME>
---
get mashine Context
find package in Registry
return if package does not exists
download
extract
place version subfolder in opt
create symlink in bin folder

# uninstall
mashina uninstall <PACKAGE_NAME>

# show info
mashina info <PACKAGE_NAME>

# EXPERIMENTAL
mashina registry list
mashina registry refresh
mashina outdated
```

```bash
OWNER="starship"
REPO="starship"
API_URL="https://api.github.com/repos/$OWNER/$REPO/releases"
curl -s $API_URL | jq '.[].tag_name'
```
