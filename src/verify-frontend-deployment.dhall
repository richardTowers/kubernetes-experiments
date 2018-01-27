-- vim: syntax=haskell
./lib/deployment.dhall {
  name = "verify-frontend",
  imageRegistryPrefix = ./lib/imageRegistryPrefix.dhall,
  containerPort = 50300,
  env = [
    { name = "IDA_FRONTEND_HOST", value = "http://verify-stub-api:50199" },
    { name = "CONFIG_API_HOST", value = "http://verify-stub-api:50199" },
    { name = "POLICY_HOST", value = "http://verify-stub-api:50199" },
    { name = "SAML_PROXY_HOST", value = "http://verify-stub-api:50199" }
  ]
}
