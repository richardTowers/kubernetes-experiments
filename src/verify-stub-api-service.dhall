-- vim: syntax=haskell
./lib/service.dhall {
  name = "verify-stub-api",
  targetPort = 50199,
  loadBalancerIP = []: Optional Text
}

