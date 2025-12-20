# Git submodule essential commands (copy-only reference)

clone parent repo with submodules

```
git clone --recurse-submodules https://github.com/ORG/platform.git
```

initialize submodules after a normal clone

```
git submodule update --init --recursive
```

check which commit each submodule is pinned to

```
git submodule status
```

pull platform repo and update submodules to recorded commits

```
git pull --recurse-submodules
```

update submodule code from its remote

```
git checkout main
git pull origin main
```

record updated submodule pointer in platform

```
git add services/backend-api
git commit -m `update backend-api submodule`
git push
```

update all submodules to their remote-tracking branches

```
git submodule update --remote
```

commit all updated submodule pointers

```
git add .
git commit -m `update all submodules`
git push
```

pin a submodule to a specific tag or commit

```
cd services/backend-api
git checkout v1.5.0
cd ../..
git add services/backend-api
git commit -m `pin backend-api to v1.5.0`
```

add a new submodule

```
git submodule add https://github.com/ORG/new-service.git services/new-service
git commit -m `add new-service submodule`
```

remove a submodule completely

```
git submodule deinit services/backend-api
git rm services/backend-api
rm -rf .git/modules/services/backend-api
git commit -m `remove backend-api submodule`
```

executes git status inside each submodule

```
git submodule foreach git status
```

pulls latest changes inside each submodule repo

```
git submodule foreach git pull
```

reset submodules to platform-defined commits

```
git submodule update --recursive
```

force reinitialize broken submodules

```
git submodule update --init --recursive --force
```
