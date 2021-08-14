#!/usr/bin/env nix-shell
#!nix-shell --pure -i runghc -p "haskellPackages.ghcWithPackages (pkgs: with pkgs; [ ])"

-- mkpart p1 1MiB 50001MiB
main = do
  let size = 50000
      parts = map (\i -> (i, (i - 1) * size, i * size)) [1 .. 120]
  mapM pone parts

pone (i, s, e) =
  putStrLn $ "mkpart p" <> (show i) <> " " <> show (s + 1) <> "MiB " <> show (e + 1) <> "MiB"
  
