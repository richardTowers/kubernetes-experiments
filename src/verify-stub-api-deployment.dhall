-- vim: syntax=haskell
{
  apiVersion = "apps/v1beta1",
  kind = "Deployment",
  metadata = { name = "verify-stub-api" },
  spec = {
    replicas = 2,
    template = {
      metadata = { labels = { app = "verify-stub-api" } },
      spec = {
        containers = [{
            name = "verify-stub-api",
            image = "verify-stub-api",
            imagePullPolicy = "IfNotPresent",
            ports = [{ containerPort = 8080 }]
        }]
      }
    }
  }
}

