
Build via ghcjs 8.8

```
nix-build hello-world/default.nix -A projectCross.ghcjs.hsPkgs.hello-world.components.exes.hello-world
```
Add the binary cache from here: https://input-output-hk.github.io/haskell.nix/tutorials/getting-started/#setting-up-the-binary-cache
