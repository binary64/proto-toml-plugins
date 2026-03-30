# proto-toml-plugins

A collection of [proto](https://moonrepo.dev/proto) TOML plugins for DevOps CLI tools.

## Available Plugins

| Tool | Description | Source |
|------|-------------|--------|
| [argocd](argocd/) | Argo CD CLI | [argoproj/argo-cd](https://github.com/argoproj/argo-cd) |
| [argocd-image-updater](argocd-image-updater/) | ArgoCD Image Updater CLI | [argoproj-labs/argocd-image-updater](https://github.com/argoproj-labs/argocd-image-updater) |
| [cntb](cntb/) | Contabo CLI | [contabo/cntb](https://github.com/contabo/cntb) |
| [doctl](doctl/) | DigitalOcean CLI | [digitalocean/doctl](https://github.com/digitalocean/doctl) |
| [ffuf](ffuf/) | Fast web fuzzer | [ffuf/ffuf](https://github.com/ffuf/ffuf) |
| [gobuster](gobuster/) | Directory/DNS/VHost brute-forcer | [OJ/gobuster](https://github.com/OJ/gobuster) |
| [gron](gron/) | Make JSON greppable | [tomnomnom/gron](https://github.com/tomnomnom/gron) |
| [hadolint](hadolint/) | Dockerfile linter | [hadolint/hadolint](https://github.com/hadolint/hadolint) |
| [harbor](harbor/) | Harbor registry CLI | [goharbor/harbor-cli](https://github.com/goharbor/harbor-cli) |
| [hcloud](hcloud/) | Hetzner Cloud CLI | [hetznercloud/cli](https://github.com/hetznercloud/cli) |
| [httpx](httpx/) | Fast HTTP prober | [projectdiscovery/httpx](https://github.com/projectdiscovery/httpx) |
| [jcli](jcli/) | Jenkins CLI | [jenkins-zh/jenkins-cli](https://github.com/jenkins-zh/jenkins-cli) |
| [just](just/) | Just command runner | [casey/just](https://github.com/casey/just) |
| [kargo](kargo/) | Kargo GitOps promotion engine | [akuity/kargo](https://github.com/akuity/kargo) |
| [kubectl-argo-rollouts](kubectl-argo-rollouts/) | Argo Rollouts kubectl plugin | [argoproj/argo-rollouts](https://github.com/argoproj/argo-rollouts) |
| [longhornctl](longhornctl/) | Longhorn storage CLI | [longhorn/cli](https://github.com/longhorn/cli) |
| [newrelic](newrelic/) | New Relic CLI | [newrelic/newrelic-cli](https://github.com/newrelic/newrelic-cli) |
| [nuclei](nuclei/) | Vulnerability scanner | [projectdiscovery/nuclei](https://github.com/projectdiscovery/nuclei) |
| [pulumi](pulumi/) | Pulumi IaC CLI | [pulumi/pulumi](https://github.com/pulumi/pulumi) |
| [rancher](rancher/) | Rancher CLI | [rancher/cli](https://github.com/rancher/cli) |
| [sentry-cli](sentry-cli/) | Sentry error tracking CLI | [getsentry/sentry-cli](https://github.com/getsentry/sentry-cli) |
| [shfmt](shfmt/) | Shell script formatter | [mvdan/sh](https://github.com/mvdan/sh) |
| [sops](sops/) | Mozilla SOPS secret encryption | [getsops/sops](https://github.com/getsops/sops) |
| [subfinder](subfinder/) | Subdomain discovery | [projectdiscovery/subfinder](https://github.com/projectdiscovery/subfinder) |
| [telnyx](telnyx/) | Telnyx telecom CLI | [team-telnyx/telnyx-cli](https://github.com/team-telnyx/telnyx-cli) |
| [vultr-cli](vultr-cli/) | Vultr cloud CLI | [vultr/vultr-cli](https://github.com/vultr/vultr-cli) |
| [webanalyze](webanalyze/) | Website tech stack detection | [rverton/webanalyze](https://github.com/rverton/webanalyze) |
| [yq](yq/) | YAML/JSON/XML processor | [mikefarah/yq](https://github.com/mikefarah/yq) |

## Usage

Add plugins to your `.prototools` file:

```toml
[plugins]
hadolint = "source:https://raw.githubusercontent.com/binary64/proto-toml-plugins/main/hadolint/plugin.toml"
yq = "source:https://raw.githubusercontent.com/binary64/proto-toml-plugins/main/yq/plugin.toml"
sops = "source:https://raw.githubusercontent.com/binary64/proto-toml-plugins/main/sops/plugin.toml"
doctl = "source:https://raw.githubusercontent.com/binary64/proto-toml-plugins/main/doctl/plugin.toml"
rancher = "source:https://raw.githubusercontent.com/binary64/proto-toml-plugins/main/rancher/plugin.toml"
kargo = "source:https://raw.githubusercontent.com/binary64/proto-toml-plugins/main/kargo/plugin.toml"
hcloud = "source:https://raw.githubusercontent.com/binary64/proto-toml-plugins/main/hcloud/plugin.toml"
longhornctl = "source:https://raw.githubusercontent.com/binary64/proto-toml-plugins/main/longhornctl/plugin.toml"
```

Then install a tool:

```bash
proto install hadolint
proto install yq
# etc.
```

Pin a version in `.prototools`:

```toml
[versions]
hadolint = "2.14.0"
yq = "4.52.5"
```

## Contributing

Each plugin is a single `plugin.toml` following the [proto TOML plugin schema](https://moonrepo.dev/docs/proto/non-wasm-plugin). PRs welcome for new tools or fixes.
