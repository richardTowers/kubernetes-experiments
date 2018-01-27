-- vim:syntax=haskell
{
  apiVersion = "v1",
  kind       = "Service",
  metadata   = {
    name = "verify-frontend-service"
  },
  spec = {
    type = "LoadBalancer",
    loadBalancerIP = "35.205.185.42",
    ports = [ { port = 80, targetPort = 50300 } ],
    selector = { app = "verify-frontend" }
  }
}
