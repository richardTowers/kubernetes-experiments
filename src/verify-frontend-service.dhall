-- vim:syntax=haskell
./lib/service.dhall {
  name = "verify-frontend",
  targetPort = 50300,
  loadBalancerIP = [ "35.205.185.42" ]: Optional Text
}
