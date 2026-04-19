# proto-toml-plugins

A collection of [proto](https://moonrepo.dev/proto) TOML plugins for CLI tools.

**78 plugins** and counting.

## Install Every Plugin In One Shot

Drop this into any directory to install all 78 plugins at once:

```bash
# Install ALL 78 plugins in one shot (writes .prototools + installs)
PLUGINS=(alterx argocd argocd-image-updater ast-grep bandwhich bat bottom cargo-machete cargo-watch choose cntb crane ctop dasel difftastic dive dnsx doctl dust eza fd feroxbuster ffuf git-cliff git-delta glow gobuster grex gron grpcurl gum hadolint harbor hcloud hey htmlq httpx hurl jcli just kargo katana kubectl-argo-rollouts lazydocker lazygit longhornctl miniserve mkcert naabu newrelic nuclei ouch pastel procs pulumi puredns qsv rancher ripgrep ripgrep-all sd sentry-cli shfmt snyk sops subfinder subjack syft telnyx ubi usql vhs vt-cli vultr-cli watchexec webanalyze xh yq)
{
  echo '[plugins]'
  for p in "${PLUGINS[@]}"; do
    echo "$p = \"source:https://raw.githubusercontent.com/binary64/proto-toml-plugins/main/$p/plugin.toml\""
  done
} > .prototools
for p in "${PLUGINS[@]}"; do proto install "$p"; done
```

> Tip: skip the install loop if you only want the plugins registered — proto installs lazily on first `proto run <tool>`.

## Alternative installers

Or use the included install script:

```bash
curl -fsSL https://raw.githubusercontent.com/binary64/proto-toml-plugins/main/install.sh -o /tmp/install-proto-plugins.sh
bash /tmp/install-proto-plugins.sh
```

Or clone and run:

```bash
git clone https://github.com/binary64/proto-toml-plugins.git
cd proto-toml-plugins
bash install.sh
```

Or install a single tool:

```bash
proto plugin add <name> https://raw.githubusercontent.com/binary64/proto-toml-plugins/main/<name>/plugin.toml
proto install <name>
```

## Available Plugins

| Tool | Description | Source |
|------|-------------|--------|
| [argocd](argocd/) | Argo CD CLI | [argoproj/argo-cd](https://github.com/argoproj/argo-cd) |
| [argocd-image-updater](argocd-image-updater/) | ArgoCD Image Updater CLI | [argoproj-labs/argocd-image-updater](https://github.com/argoproj-labs/argocd-image-updater) |
| [ast-grep](ast-grep/) | Structural code search & rewrite | [ast-grep/ast-grep](https://github.com/ast-grep/ast-grep) |
| [bandwhich](bandwhich/) | Terminal bandwidth utilization monitor | [imsnif/bandwhich](https://github.com/imsnif/bandwhich) |
| [bat](bat/) | cat clone with syntax highlighting | [sharkdp/bat](https://github.com/sharkdp/bat) |
| [btm](btm/) | Graphical process/system monitor (bottom) | [ClementTsang/bottom](https://github.com/ClementTsang/bottom) |
| [cargo-machete](cargo-machete/) | Remove unused Rust dependencies | [bnjbvr/cargo-machete](https://github.com/bnjbvr/cargo-machete) |
| [cargo-watch](cargo-watch/) | ⚠️ Archived upstream — see [watchexec](watchexec/) | [watchexec/cargo-watch](https://github.com/watchexec/cargo-watch) |
| [choose](choose/) | Human-friendly cut alternative | [theryangeary/choose](https://github.com/theryangeary/choose) |
| [cntb](cntb/) | Contabo cloud CLI | [contabo/cntb](https://github.com/contabo/cntb) |
| [crane](crane/) | Container registry tool | [google/go-containerregistry](https://github.com/google/go-containerregistry) |
| [ctop](ctop/) | Container metrics & monitoring | [bcicen/ctop](https://github.com/bcicen/ctop) |
| [dasel](dasel/) | Query & modify data structures (JSON/YAML/TOML/XML) | [TomWright/dasel](https://github.com/TomWright/dasel) |
| [delta](delta/) | Syntax-highlighting pager for git diffs | [dandavison/delta](https://github.com/dandavison/delta) |
| [difft](difft/) | Structural diff tool | [Wilfred/difftastic](https://github.com/Wilfred/difftastic) |
| [dive](dive/) | Docker image layer explorer | [wagoodman/dive](https://github.com/wagoodman/dive) |
| [doctl](doctl/) | DigitalOcean CLI | [digitalocean/doctl](https://github.com/digitalocean/doctl) |
| [dust](dust/) | Intuitive disk usage (du alternative) | [bootandy/dust](https://github.com/bootandy/dust) |
| [eza](eza/) | Modern ls replacement | [eza-community/eza](https://github.com/eza-community/eza) |
| [fd](fd/) | Fast find alternative | [sharkdp/fd](https://github.com/sharkdp/fd) |
| [feroxbuster](feroxbuster/) | Recursive content discovery tool | [epi052/feroxbuster](https://github.com/epi052/feroxbuster) |
| [ffuf](ffuf/) | Fast web fuzzer | [ffuf/ffuf](https://github.com/ffuf/ffuf) |
| [git-cliff](git-cliff/) | Changelog generator from git history | [orhun/git-cliff](https://github.com/orhun/git-cliff) |
| [glow](glow/) | Markdown renderer for terminal | [charmbracelet/glow](https://github.com/charmbracelet/glow) |
| [gobuster](gobuster/) | Directory/DNS/VHost brute-forcer | [OJ/gobuster](https://github.com/OJ/gobuster) |
| [grex](grex/) | Regex generator from examples | [pemistahl/grex](https://github.com/pemistahl/grex) |
| [gron](gron/) | Make JSON greppable | [tomnomnom/gron](https://github.com/tomnomnom/gron) |
| [grpcurl](grpcurl/) | cURL for gRPC servers | [fullstorydev/grpcurl](https://github.com/fullstorydev/grpcurl) |
| [gum](gum/) | Glamorous shell scripts | [charmbracelet/gum](https://github.com/charmbracelet/gum) |
| [hadolint](hadolint/) | Dockerfile linter | [hadolint/hadolint](https://github.com/hadolint/hadolint) |
| [harbor](harbor/) | Harbor registry CLI | [goharbor/harbor-cli](https://github.com/goharbor/harbor-cli) |
| [hcloud](hcloud/) | Hetzner Cloud CLI | [hetznercloud/cli](https://github.com/hetznercloud/cli) |
| [hey](hey/) | HTTP load generator | [rakyll/hey](https://github.com/rakyll/hey) |
| [htmlq](htmlq/) | HTML selector (jq for HTML) | [mgdm/htmlq](https://github.com/mgdm/htmlq) |
| [httpx](httpx/) | Fast HTTP prober | [projectdiscovery/httpx](https://github.com/projectdiscovery/httpx) |
| [jcli](jcli/) | Jenkins CLI | [jenkins-zh/jenkins-cli](https://github.com/jenkins-zh/jenkins-cli) |
| [just](just/) | Command runner (make alternative) | [casey/just](https://github.com/casey/just) |
| [kargo](kargo/) | Kargo GitOps promotion engine CLI | [akuity/kargo](https://github.com/akuity/kargo) |
| [kubectl-argo-rollouts](kubectl-argo-rollouts/) | Argo Rollouts kubectl plugin | [argoproj/argo-rollouts](https://github.com/argoproj/argo-rollouts) |
| [lazydocker](lazydocker/) | Terminal UI for Docker | [jesseduffield/lazydocker](https://github.com/jesseduffield/lazydocker) |
| [lazygit](lazygit/) | Terminal UI for git | [jesseduffield/lazygit](https://github.com/jesseduffield/lazygit) |
| [longhornctl](longhornctl/) | Longhorn storage CLI | [longhorn/cli](https://github.com/longhorn/cli) |
| [miniserve](miniserve/) | Small self-contained HTTP file server | [svenstaro/miniserve](https://github.com/svenstaro/miniserve) |
| [mkcert](mkcert/) | Locally trusted dev certificates | [FiloSottile/mkcert](https://github.com/FiloSottile/mkcert) |
| [newrelic](newrelic/) | New Relic CLI | [newrelic/newrelic-cli](https://github.com/newrelic/newrelic-cli) |
| [nuclei](nuclei/) | Vulnerability scanner | [projectdiscovery/nuclei](https://github.com/projectdiscovery/nuclei) |
| [ouch](ouch/) | Compress/decompress files (any format) | [ouch-org/ouch](https://github.com/ouch-org/ouch) |
| [pastel](pastel/) | Color manipulation in terminal | [sharkdp/pastel](https://github.com/sharkdp/pastel) |
| [procs](procs/) | Modern ps replacement | [dalance/procs](https://github.com/dalance/procs) |
| [pulumi](pulumi/) | Pulumi IaC CLI | [pulumi/pulumi](https://github.com/pulumi/pulumi) |
| [qsv](qsv/) | Ultra-fast CSV toolkit | [jqnatividad/qsv](https://github.com/jqnatividad/qsv) |
| [rancher](rancher/) | Rancher CLI | [rancher/cli](https://github.com/rancher/cli) |
| [rg](rg/) | Fast recursive grep (ripgrep) | [BurntSushi/ripgrep](https://github.com/BurntSushi/ripgrep) |
| [rga](rga/) | ripgrep over PDFs, archives, and more | [phiresky/ripgrep-all](https://github.com/phiresky/ripgrep-all) |
| [sd](sd/) | Intuitive find & replace (sed alternative) | [chmln/sd](https://github.com/chmln/sd) |
| [sentry-cli](sentry-cli/) | Sentry error tracking CLI | [getsentry/sentry-cli](https://github.com/getsentry/sentry-cli) |
| [shfmt](shfmt/) | Shell script formatter | [mvdan/sh](https://github.com/mvdan/sh) |
| [snyk](snyk/) | Security & vulnerability scanner | [snyk/cli](https://github.com/snyk/cli) |
| [sops](sops/) | Mozilla SOPS secret encryption | [getsops/sops](https://github.com/getsops/sops) |
| [subfinder](subfinder/) | Subdomain discovery tool | [projectdiscovery/subfinder](https://github.com/projectdiscovery/subfinder) |
| [syft](syft/) | SBOM generator for containers & filesystems | [anchore/syft](https://github.com/anchore/syft) |
| [telnyx](telnyx/) | Telnyx telecom CLI | [team-telnyx/telnyx-cli](https://github.com/team-telnyx/telnyx-cli) |
| [ubi](ubi/) | Universal binary installer | [houseabsolute/ubi](https://github.com/houseabsolute/ubi) |
| [usql](usql/) | Universal SQL CLI for any database | [xo/usql](https://github.com/xo/usql) |
| [vhs](vhs/) | Terminal GIF recorder | [charmbracelet/vhs](https://github.com/charmbracelet/vhs) |
| [vt](vt/) | VirusTotal CLI | [VirusTotal/vt-cli](https://github.com/VirusTotal/vt-cli) |
| [vultr-cli](vultr-cli/) | Vultr cloud CLI | [vultr/vultr-cli](https://github.com/vultr/vultr-cli) |
| [watchexec](watchexec/) | Language-agnostic file watcher (cargo-watch's engine) | [watchexec/watchexec](https://github.com/watchexec/watchexec) |
| [webanalyze](webanalyze/) | Website tech stack detection | [rverton/webanalyze](https://github.com/rverton/webanalyze) |
| [xh](xh/) | Friendly HTTP client (httpie alternative) | [ducaale/xh](https://github.com/ducaale/xh) |
| [yq](yq/) | YAML/JSON/XML processor | [mikefarah/yq](https://github.com/mikefarah/yq) |

## Quick Install

Install popular CLI tools in one go:

```bash
# Add plugins
proto plugin add bottom https://raw.githubusercontent.com/binary64/proto-toml-plugins/main/bottom/plugin.toml
proto plugin add difftastic https://raw.githubusercontent.com/binary64/proto-toml-plugins/main/difftastic/plugin.toml
proto plugin add git-delta https://raw.githubusercontent.com/binary64/proto-toml-plugins/main/git-delta/plugin.toml
proto plugin add ripgrep https://raw.githubusercontent.com/binary64/proto-toml-plugins/main/ripgrep/plugin.toml
proto plugin add ripgrep-all https://raw.githubusercontent.com/binary64/proto-toml-plugins/main/ripgrep-all/plugin.toml
proto plugin add vt-cli https://raw.githubusercontent.com/binary64/proto-toml-plugins/main/vt-cli/plugin.toml


# Install tools
proto install bottom    # runs as 'btm'
proto install difftastic  # runs as 'difft'
proto install git-delta  # runs as 'delta'
proto install ripgrep     # runs as 'rg'
proto install ripgrep-all # runs as 'rga'
proto install vt-cli       # runs as 'vt'
```

## Usage

Add plugins to your `.prototools` file:

```toml
[plugins]
lazygit = "source:https://raw.githubusercontent.com/binary64/proto-toml-plugins/main/lazygit/plugin.toml"
dive = "source:https://raw.githubusercontent.com/binary64/proto-toml-plugins/main/dive/plugin.toml"
bat = "source:https://raw.githubusercontent.com/binary64/proto-toml-plugins/main/bat/plugin.toml"
yq = "source:https://raw.githubusercontent.com/binary64/proto-toml-plugins/main/yq/plugin.toml"
sops = "source:https://raw.githubusercontent.com/binary64/proto-toml-plugins/main/sops/plugin.toml"
```

Then install:

```bash
proto install lazygit
proto install dive
```

Pin a version in `.prototools`:

```toml
[versions]
lazygit = "0.44.1"
yq = "4.52.5"
```

## Contributing

Each plugin is a single `plugin.toml` following the [proto TOML plugin schema](https://moonrepo.dev/docs/proto/non-wasm-plugin). PRs welcome for new tools or fixes.
