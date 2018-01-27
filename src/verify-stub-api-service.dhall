-- vim: syntax=haskell
{
  apiVersion = "v1",
  kind = "Service",
  metadata = { name = "verify-stub-api" },
  spec = {
    type = "ClusterIP",
    ports = [{ port = 50199 }],
    selector = { app = "verify-stub-api" }
  }
}
