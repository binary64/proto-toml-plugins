# proto-toml-plugins

A collection of [proto](https://moonrepo.dev/proto) TOML plugins for CLI tools.

**141 plugins** and counting.

## Install Every Plugin In One Shot

Drop this into any directory to install all 141 plugins at once:

```bash
# Install ALL 141 plugins in one shot (writes .prototools + installs)
PLUGINS=(act actionlint alterx amass argocd argocd-image-updater ast-grep atmos bandwhich bat bazel bearer biome bottom caddy cargo-machete cargo-watch chisel choose cmake cntb cosign crane ctop d2 dagger dalfox dasel difftastic discrawl dive dnsx dockle doctl dprint duckdb dust eza fd feroxbuster ffuf flyctl gau git-cliff git-delta git-sizer gitleaks glow gobuster gog goplaces grain grex gron grpcurl grype gum hadolint harbor hcloud hey htmlq httpx hurl hyperfine interactsh-client jcli jira just k3d kargo katana kiterunner kube-bench kube-linter kubectl-argo-rollouts kustomize lazydocker lazygit ligolo-ng-agent ligolo-ng-proxy longhornctl mage miniserve mkcert naabu newrelic ninja nomad nuclei octopus osv-scanner ouch oxlint packer pact_verifier_cli pastel pixi procs pulumi puredns qsv rancher rattler-build rclone ripgrep ripgrep-all ruff s5cmd sd sentry-cli shellcheck shfmt snyk sops step stripe-cli subfinder subjack syft task telnyx tflint titus tlsx traefik tree-sitter trufflehog ubi uncover usql uv vault vhs vt-cli vultr-cli watchexec webanalyze wizer xh yq)
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
| [act](act/) | Run GitHub Actions locally | [nektos/act](https://github.com/nektos/act) |
| [actionlint](actionlint/) | Static checker for GitHub Actions workflows | [rhysd/actionlint](https://github.com/rhysd/actionlint) |
| [alterx](alterx/) | Subdomain wordlist generator | [projectdiscovery/alterx](https://github.com/projectdiscovery/alterx) |
| [amass](amass/) | In-depth attack surface mapping | [owasp-amass/amass](https://github.com/owasp-amass/amass) |
| [argocd](argocd/) | Argo CD CLI | [argoproj/argo-cd](https://github.com/argoproj/argo-cd) |
| [argocd-image-updater](argocd-image-updater/) | ArgoCD Image Updater CLI | [argoproj-labs/argocd-image-updater](https://github.com/argoproj-labs/argocd-image-updater) |
| [ast-grep](ast-grep/) | Structural code search & rewrite | [ast-grep/ast-grep](https://github.com/ast-grep/ast-grep) |
| [atmos](atmos/) | Terraform/Helm workflow automation | [cloudposse/atmos](https://github.com/cloudposse/atmos) |
| [bandwhich](bandwhich/) | Terminal bandwidth utilization monitor | [imsnif/bandwhich](https://github.com/imsnif/bandwhich) |
| [bat](bat/) | cat clone with syntax highlighting | [sharkdp/bat](https://github.com/sharkdp/bat) |
| [bazel](bazel/) | Fast, correct multi-language build system | [bazelbuild/bazel](https://github.com/bazelbuild/bazel) |
| [bearer](bearer/) | SAST scanner for security & privacy risks | [Bearer/bearer](https://github.com/Bearer/bearer) |
| [biome](biome/) | Fast formatter & linter for web projects | [biomejs/biome](https://github.com/biomejs/biome) |
| [bottom](bottom/) | Graphical process/system monitor (runs as `btm`) | [ClementTsang/bottom](https://github.com/ClementTsang/bottom) |
| [caddy](caddy/) | Automatic HTTPS web server | [caddyserver/caddy](https://github.com/caddyserver/caddy) |
| [cargo-machete](cargo-machete/) | Remove unused Rust dependencies | [bnjbvr/cargo-machete](https://github.com/bnjbvr/cargo-machete) |
| [cargo-watch](cargo-watch/) | ⚠️ Archived upstream — see [watchexec](watchexec/) | [watchexec/cargo-watch](https://github.com/watchexec/cargo-watch) |
| [chisel](chisel/) | Fast TCP/UDP tunnel over HTTP | [jpillora/chisel](https://github.com/jpillora/chisel) |
| [choose](choose/) | Human-friendly cut alternative | [theryangeary/choose](https://github.com/theryangeary/choose) |
| [cmake](cmake/) | Cross-platform build system generator | [Kitware/CMake](https://github.com/Kitware/CMake) |
| [cntb](cntb/) | Contabo cloud CLI | [contabo/cntb](https://github.com/contabo/cntb) |
| [cosign](cosign/) | Container signing & verification (Sigstore) | [sigstore/cosign](https://github.com/sigstore/cosign) |
| [crane](crane/) | Container registry tool | [google/go-containerregistry](https://github.com/google/go-containerregistry) |
| [ctop](ctop/) | Container metrics & monitoring | [bcicen/ctop](https://github.com/bcicen/ctop) |
| [d2](d2/) | Modern diagram scripting language | [terrastruct/d2](https://github.com/terrastruct/d2) |
| [dagger](dagger/) | Programmable CI/CD engine | [dagger/dagger](https://github.com/dagger/dagger) |
| [dalfox](dalfox/) | XSS scanner & analysis tool | [hahwul/dalfox](https://github.com/hahwul/dalfox) |
| [dasel](dasel/) | Query & modify data structures (JSON/YAML/TOML/XML) | [TomWright/dasel](https://github.com/TomWright/dasel) |
| [difftastic](difftastic/) | Structural diff tool (runs as `difft`) | [Wilfred/difftastic](https://github.com/Wilfred/difftastic) |
| [discrawl](discrawl/) | Discord message crawler | [steipete/discrawl](https://github.com/steipete/discrawl) |
| [dive](dive/) | Docker image layer explorer | [wagoodman/dive](https://github.com/wagoodman/dive) |
| [dnsx](dnsx/) | Fast multi-purpose DNS toolkit | [projectdiscovery/dnsx](https://github.com/projectdiscovery/dnsx) |
| [dockle](dockle/) | Container image linter for security | [goodwithtech/dockle](https://github.com/goodwithtech/dockle) |
| [doctl](doctl/) | DigitalOcean CLI | [digitalocean/doctl](https://github.com/digitalocean/doctl) |
| [dprint](dprint/) | Pluggable multi-language code formatter | [dprint/dprint](https://github.com/dprint/dprint) |
| [duckdb](duckdb/) | In-process analytical SQL database CLI | [duckdb/duckdb](https://github.com/duckdb/duckdb) |
| [dust](dust/) | Intuitive disk usage (du alternative) | [bootandy/dust](https://github.com/bootandy/dust) |
| [eza](eza/) | Modern ls replacement | [eza-community/eza](https://github.com/eza-community/eza) |
| [fd](fd/) | Fast find alternative | [sharkdp/fd](https://github.com/sharkdp/fd) |
| [feroxbuster](feroxbuster/) | Recursive content discovery tool | [epi052/feroxbuster](https://github.com/epi052/feroxbuster) |
| [ffuf](ffuf/) | Fast web fuzzer | [ffuf/ffuf](https://github.com/ffuf/ffuf) |
| [flyctl](flyctl/) | Fly.io deploy & manage CLI | [superfly/flyctl](https://github.com/superfly/flyctl) |
| [gau](gau/) | Fetch known URLs from AlienVault, Wayback, etc. | [lc/gau](https://github.com/lc/gau) |
| [git-cliff](git-cliff/) | Changelog generator from git history | [orhun/git-cliff](https://github.com/orhun/git-cliff) |
| [git-delta](git-delta/) | Syntax-highlighting pager for git diffs (runs as `delta`) | [dandavison/delta](https://github.com/dandavison/delta) |
| [git-sizer](git-sizer/) | Compute size metrics for a git repo | [github/git-sizer](https://github.com/github/git-sizer) |
| [gitleaks](gitleaks/) | Detect secrets in git repos | [gitleaks/gitleaks](https://github.com/gitleaks/gitleaks) |
| [glow](glow/) | Markdown renderer for terminal | [charmbracelet/glow](https://github.com/charmbracelet/glow) |
| [gobuster](gobuster/) | Directory/DNS/VHost brute-forcer | [OJ/gobuster](https://github.com/OJ/gobuster) |
| [gog](gog/) | CLI for GOG.com game library | [steipete/gogcli](https://github.com/steipete/gogcli) |
| [goplaces](goplaces/) | Google Places API CLI | [steipete/goplaces](https://github.com/steipete/goplaces) |
| [grain](grain/) | Grain programming language compiler/CLI | [grain-lang/grain](https://github.com/grain-lang/grain) |
| [grex](grex/) | Regex generator from examples | [pemistahl/grex](https://github.com/pemistahl/grex) |
| [gron](gron/) | Make JSON greppable | [tomnomnom/gron](https://github.com/tomnomnom/gron) |
| [grpcurl](grpcurl/) | cURL for gRPC servers | [fullstorydev/grpcurl](https://github.com/fullstorydev/grpcurl) |
| [grype](grype/) | Vulnerability scanner for containers & filesystems | [anchore/grype](https://github.com/anchore/grype) |
| [gum](gum/) | Glamorous shell scripts | [charmbracelet/gum](https://github.com/charmbracelet/gum) |
| [hadolint](hadolint/) | Dockerfile linter | [hadolint/hadolint](https://github.com/hadolint/hadolint) |
| [harbor](harbor/) | Harbor registry CLI | [goharbor/harbor-cli](https://github.com/goharbor/harbor-cli) |
| [hcloud](hcloud/) | Hetzner Cloud CLI | [hetznercloud/cli](https://github.com/hetznercloud/cli) |
| [hey](hey/) | HTTP load generator | [rakyll/hey](https://github.com/rakyll/hey) |
| [htmlq](htmlq/) | HTML selector (jq for HTML) | [mgdm/htmlq](https://github.com/mgdm/htmlq) |
| [httpx](httpx/) | Fast HTTP prober | [projectdiscovery/httpx](https://github.com/projectdiscovery/httpx) |
| [hurl](hurl/) | Run & test HTTP requests in plain text | [Orange-OpenSource/hurl](https://github.com/Orange-OpenSource/hurl) |
| [hyperfine](hyperfine/) | Command-line benchmarking tool | [sharkdp/hyperfine](https://github.com/sharkdp/hyperfine) |
| [interactsh-client](interactsh-client/) | OOB interaction gathering client | [projectdiscovery/interactsh](https://github.com/projectdiscovery/interactsh) |
| [jcli](jcli/) | Jenkins CLI | [jenkins-zh/jenkins-cli](https://github.com/jenkins-zh/jenkins-cli) |
| [jira](jira/) | Interactive Jira CLI | [ankitpokhrel/jira-cli](https://github.com/ankitpokhrel/jira-cli) |
| [just](just/) | Command runner (make alternative) | [casey/just](https://github.com/casey/just) |
| [k3d](k3d/) | Run k3s Kubernetes clusters in Docker | [k3d-io/k3d](https://github.com/k3d-io/k3d) |
| [kargo](kargo/) | Kargo GitOps promotion engine CLI | [akuity/kargo](https://github.com/akuity/kargo) |
| [katana](katana/) | Next-gen crawling & spidering framework | [projectdiscovery/katana](https://github.com/projectdiscovery/katana) |
| [kiterunner](kiterunner/) | Content discovery for APIs (runs as `kr`) | [assetnote/kiterunner](https://github.com/assetnote/kiterunner) |
| [kube-bench](kube-bench/) | CIS Kubernetes security benchmark | [aquasecurity/kube-bench](https://github.com/aquasecurity/kube-bench) |
| [kube-linter](kube-linter/) | Static analysis for Kubernetes YAML/Helm | [stackrox/kube-linter](https://github.com/stackrox/kube-linter) |
| [kubectl-argo-rollouts](kubectl-argo-rollouts/) | Argo Rollouts kubectl plugin | [argoproj/argo-rollouts](https://github.com/argoproj/argo-rollouts) |
| [kustomize](kustomize/) | Kubernetes native config customization | [kubernetes-sigs/kustomize](https://github.com/kubernetes-sigs/kustomize) |
| [lazydocker](lazydocker/) | Terminal UI for Docker | [jesseduffield/lazydocker](https://github.com/jesseduffield/lazydocker) |
| [lazygit](lazygit/) | Terminal UI for git | [jesseduffield/lazygit](https://github.com/jesseduffield/lazygit) |
| [ligolo-ng-agent](ligolo-ng-agent/) | Ligolo-ng pivot agent | [nicocha30/ligolo-ng](https://github.com/nicocha30/ligolo-ng) |
| [ligolo-ng-proxy](ligolo-ng-proxy/) | Ligolo-ng pivot proxy server | [nicocha30/ligolo-ng](https://github.com/nicocha30/ligolo-ng) |
| [longhornctl](longhornctl/) | Longhorn storage CLI | [longhorn/cli](https://github.com/longhorn/cli) |
| [mage](mage/) | Make-like build tool for Go | [magefile/mage](https://github.com/magefile/mage) |
| [miniserve](miniserve/) | Small self-contained HTTP file server | [svenstaro/miniserve](https://github.com/svenstaro/miniserve) |
| [mkcert](mkcert/) | Locally trusted dev certificates | [FiloSottile/mkcert](https://github.com/FiloSottile/mkcert) |
| [naabu](naabu/) | Fast port scanner | [projectdiscovery/naabu](https://github.com/projectdiscovery/naabu) |
| [newrelic](newrelic/) | New Relic CLI | [newrelic/newrelic-cli](https://github.com/newrelic/newrelic-cli) |
| [ninja](ninja/) | Small, fast build system | [ninja-build/ninja](https://github.com/ninja-build/ninja) |
| [nomad](nomad/) | HashiCorp workload orchestrator | [hashicorp/nomad](https://github.com/hashicorp/nomad) |
| [nuclei](nuclei/) | Vulnerability scanner | [projectdiscovery/nuclei](https://github.com/projectdiscovery/nuclei) |
| [octopus](octopus/) | Octopus Deploy CLI | [OctopusDeploy/cli](https://github.com/OctopusDeploy/cli) |
| [osv-scanner](osv-scanner/) | Scanner for OSV vulnerability database | [google/osv-scanner](https://github.com/google/osv-scanner) |
| [ouch](ouch/) | Compress/decompress files (any format) | [ouch-org/ouch](https://github.com/ouch-org/ouch) |
| [oxlint](oxlint/) | Fast Rust-based JavaScript linter | [oxc-project/oxc](https://github.com/oxc-project/oxc) |
| [packer](packer/) | HashiCorp machine image builder | [hashicorp/packer](https://github.com/hashicorp/packer) |
| [pact_verifier_cli](pact_verifier_cli/) | Pact contract test verifier | [pact-foundation/pact-reference](https://github.com/pact-foundation/pact-reference) |
| [pastel](pastel/) | Color manipulation in terminal | [sharkdp/pastel](https://github.com/sharkdp/pastel) |
| [pixi](pixi/) | Conda-compatible package/project manager | [prefix-dev/pixi](https://github.com/prefix-dev/pixi) |
| [procs](procs/) | Modern ps replacement | [dalance/procs](https://github.com/dalance/procs) |
| [pulumi](pulumi/) | Pulumi IaC CLI | [pulumi/pulumi](https://github.com/pulumi/pulumi) |
| [puredns](puredns/) | Fast DNS brute-force & resolver | [d3mondev/puredns](https://github.com/d3mondev/puredns) |
| [qsv](qsv/) | Ultra-fast CSV toolkit | [jqnatividad/qsv](https://github.com/jqnatividad/qsv) |
| [rancher](rancher/) | Rancher CLI | [rancher/cli](https://github.com/rancher/cli) |
| [rattler-build](rattler-build/) | Conda package builder | [prefix-dev/rattler-build](https://github.com/prefix-dev/rattler-build) |
| [rclone](rclone/) | Sync files to/from cloud storage | [rclone/rclone](https://github.com/rclone/rclone) |
| [ripgrep](ripgrep/) | Fast recursive grep (runs as `rg`) | [BurntSushi/ripgrep](https://github.com/BurntSushi/ripgrep) |
| [ripgrep-all](ripgrep-all/) | ripgrep over PDFs, archives, and more (runs as `rga`) | [phiresky/ripgrep-all](https://github.com/phiresky/ripgrep-all) |
| [ruff](ruff/) | Extremely fast Python linter & formatter | [astral-sh/ruff](https://github.com/astral-sh/ruff) |
| [s5cmd](s5cmd/) | Parallel S3 & local filesystem operations | [peak/s5cmd](https://github.com/peak/s5cmd) |
| [sd](sd/) | Intuitive find & replace (sed alternative) | [chmln/sd](https://github.com/chmln/sd) |
| [sentry-cli](sentry-cli/) | Sentry error tracking CLI | [getsentry/sentry-cli](https://github.com/getsentry/sentry-cli) |
| [shellcheck](shellcheck/) | Shell script static analyzer | [koalaman/shellcheck](https://github.com/koalaman/shellcheck) |
| [shfmt](shfmt/) | Shell script formatter | [mvdan/sh](https://github.com/mvdan/sh) |
| [snyk](snyk/) | Security & vulnerability scanner | [snyk/cli](https://github.com/snyk/cli) |
| [sops](sops/) | Mozilla SOPS secret encryption | [getsops/sops](https://github.com/getsops/sops) |
| [step](step/) | smallstep CLI for crypto & PKI | [smallstep/cli](https://github.com/smallstep/cli) |
| [stripe-cli](stripe-cli/) | Stripe payments CLI (runs as `stripe`) | [stripe/stripe-cli](https://github.com/stripe/stripe-cli) |
| [subfinder](subfinder/) | Subdomain discovery tool | [projectdiscovery/subfinder](https://github.com/projectdiscovery/subfinder) |
| [subjack](subjack/) | Subdomain takeover checker | [haccer/subjack](https://github.com/haccer/subjack) |
| [syft](syft/) | SBOM generator for containers & filesystems | [anchore/syft](https://github.com/anchore/syft) |
| [task](task/) | Task runner / simpler make alternative | [go-task/task](https://github.com/go-task/task) |
| [telnyx](telnyx/) | Telnyx telecom CLI | [team-telnyx/telnyx-cli](https://github.com/team-telnyx/telnyx-cli) |
| [tflint](tflint/) | Terraform linter | [terraform-linters/tflint](https://github.com/terraform-linters/tflint) |
| [titus](titus/) | Titus container scheduler CLI | [praetorian-inc/titus](https://github.com/praetorian-inc/titus) |
| [tlsx](tlsx/) | Fast TLS grabber & analyzer | [projectdiscovery/tlsx](https://github.com/projectdiscovery/tlsx) |
| [traefik](traefik/) | Cloud-native reverse proxy & load balancer | [traefik/traefik](https://github.com/traefik/traefik) |
| [tree-sitter](tree-sitter/) | Incremental parser generator CLI | [tree-sitter/tree-sitter](https://github.com/tree-sitter/tree-sitter) |
| [trufflehog](trufflehog/) | Find leaked secrets in code & configs | [trufflesecurity/trufflehog](https://github.com/trufflesecurity/trufflehog) |
| [ubi](ubi/) | Universal binary installer | [houseabsolute/ubi](https://github.com/houseabsolute/ubi) |
| [uncover](uncover/) | Discover assets via search engine APIs | [projectdiscovery/uncover](https://github.com/projectdiscovery/uncover) |
| [usql](usql/) | Universal SQL CLI for any database | [xo/usql](https://github.com/xo/usql) |
| [uv](uv/) | Extremely fast Python package & project manager | [astral-sh/uv](https://github.com/astral-sh/uv) |
| [vault](vault/) | HashiCorp secrets management | [hashicorp/vault](https://github.com/hashicorp/vault) |
| [vhs](vhs/) | Terminal GIF recorder | [charmbracelet/vhs](https://github.com/charmbracelet/vhs) |
| [vt-cli](vt-cli/) | VirusTotal CLI (runs as `vt`) | [VirusTotal/vt-cli](https://github.com/VirusTotal/vt-cli) |
| [vultr-cli](vultr-cli/) | Vultr cloud CLI | [vultr/vultr-cli](https://github.com/vultr/vultr-cli) |
| [watchexec](watchexec/) | Language-agnostic file watcher (cargo-watch's engine) | [watchexec/watchexec](https://github.com/watchexec/watchexec) |
| [webanalyze](webanalyze/) | Website tech stack detection | [rverton/webanalyze](https://github.com/rverton/webanalyze) |
| [wizer](wizer/) | WebAssembly pre-initializer | [bytecodealliance/wizer](https://github.com/bytecodealliance/wizer) |
| [xh](xh/) | Friendly HTTP client (httpie alternative) | [ducaale/xh](https://github.com/ducaale/xh) |
| [yq](yq/) | YAML/JSON/XML processor | [mikefarah/yq](https://github.com/mikefarah/yq) |

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
