-- vim: syntax=haskell
λ(args: {
  name: Text,
  targetPort: Integer,
  loadBalancerIP: Optional Text
}) →
{
  apiVersion = "v1",
  kind       = "Service",
  metadata   = {
    name = "${args.name}-service"
  },
  spec = {
    type = "LoadBalancer",
    loadBalancerIP = args.loadBalancerIP,
    ports = [ { port = 80, targetPort = args.targetPort } ],
    selector = { app = args.name }
  }
}
