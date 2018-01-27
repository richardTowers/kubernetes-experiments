-- vim: syntax=haskell
./lib/deployment.dhall {
  name = "verify-stub-api",
  imageRepositoryPrefix = "",
  containerPort = 8080,
  env = []: List { name: Text, value: Text }
}

