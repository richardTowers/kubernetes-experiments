-- vim: syntax=haskell
./lib/deployment.dhall {
  name = "verify-stub-api",
  imageRegistryPrefix = ./lib/imageRegistryPrefix.dhall,
  containerPort = 8080,
  env = []: List { name: Text, value: Text }
}

