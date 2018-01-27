-- vim: syntax=haskell
let imageRegistryPrefix = "" in
{
  apiVersion = "apps/v1beta1",
  kind = "Deployment",
  metadata = {
    name = "verify-frontend"
  },
  spec = {
    replicas = 2,
    template = {
      metadata = { labels = { app = "verify-frontend" } },
      spec = {
        containers = [{
            name = "verify-frontend",
            image = "${imageRegistryPrefix}verify-frontend",
            imagePullPolicy = "IfNotPresent",
            ports = [{ containerPort = 50300 }],
            env = [
              { name = "IDA_FRONTEND_HOST", value = "http://verify-stub-api:50199" },
              { name = "CONFIG_API_HOST", value = "http://verify-stub-api:50199" },
              { name = "POLICY_HOST", value = "http://verify-stub-api:50199" },
              { name = "SAML_PROXY_HOST", value = "http://verify-stub-api:50199" }
            ]
        }]
      }
    }
  }
}
