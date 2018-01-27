-- vim: syntax=haskell
λ(args: {
  name: Text,
  imageRepositoryPrefix: Text,
  containerPort: Integer,
  env: List { name: Text, value: Text }
}) →
{
  apiVersion = "apps/v1beta1",
  kind = "Deployment",
  metadata = {
    name = "${args.name}"
  },
  spec = {
    replicas = 2,
    template = {
      metadata = { labels = { app = "${args.name}" } },
      spec = {
        containers = [{
            name = "${args.name}",
            image = "${args.imageRepositoryPrefix}${args.name}",
            imagePullPolicy = "IfNotPresent",
            ports = [{ containerPort = args.containerPort }],
            env = args.env
        }]
      }
    }
  }
}

