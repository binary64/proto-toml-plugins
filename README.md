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

Descriptions are pulled directly from each upstream's GitHub `About` bio. *Pushed* is the year of the most recent commit to the default branch; *Released* is the year of the latest published GitHub release.

| Tool | Description | Source | Pushed | Released |
|------|-------------|--------|--------|----------|
| [act](act/) | Run your GitHub Actions locally 🚀 | [nektos/act](https://github.com/nektos/act) | 2026 | 2026 |
| [actionlint](actionlint/) | :octocat: Static checker for GitHub Actions workflow files | [rhysd/actionlint](https://github.com/rhysd/actionlint) | 2026 | 2026 |
| [alterx](alterx/) | Fast and customizable subdomain wordlist generator using DSL | [projectdiscovery/alterx](https://github.com/projectdiscovery/alterx) | 2026 | 2025 |
| [amass](amass/) | In-depth attack surface mapping and asset discovery | [owasp-amass/amass](https://github.com/owasp-amass/amass) | 2026 | 2026 |
| [argocd](argocd/) | Declarative Continuous Deployment for Kubernetes | [argoproj/argo-cd](https://github.com/argoproj/argo-cd) | 2026 | 2026 |
| [argocd-image-updater](argocd-image-updater/) | Automatic container image update for Argo CD | [argoproj-labs/argocd-image-updater](https://github.com/argoproj-labs/argocd-image-updater) | 2026 | 2026 |
| [ast-grep](ast-grep/) | ⚡A CLI tool for code structural search, lint and rewriting. Written in Rust | [ast-grep/ast-grep](https://github.com/ast-grep/ast-grep) | 2026 | 2026 |
| [atmos](atmos/) | 👽 Terraform Orchestration Tool for DevOps. Keep environment configuration DRY with hierarchical imports of configurations,… | [cloudposse/atmos](https://github.com/cloudposse/atmos) | 2026 | 2026 |
| [bandwhich](bandwhich/) | Terminal bandwidth utilization tool | [imsnif/bandwhich](https://github.com/imsnif/bandwhich) | 2026 | 2024 |
| [bat](bat/) | A cat(1) clone with wings | [sharkdp/bat](https://github.com/sharkdp/bat) | 2026 | 2025 |
| [bazel](bazel/) | a fast, scalable, multi-language and extensible build system | [bazelbuild/bazel](https://github.com/bazelbuild/bazel) | 2026 | 2026 |
| [bearer](bearer/) | Code security scanning tool (SAST) to discover, filter and prioritize security and privacy risks | [Bearer/bearer](https://github.com/Bearer/bearer) | 2026 | 2026 |
| [biome](biome/) | A toolchain for web projects, aimed to provide functionalities to maintain them. Biome offers formatter and linter, usable via… | [biomejs/biome](https://github.com/biomejs/biome) | 2026 | 2026 |
| [bottom](bottom/) | Yet another cross-platform graphical process/system monitor (runs as `btm`) | [ClementTsang/bottom](https://github.com/ClementTsang/bottom) | 2026 | 2026 |
| [caddy](caddy/) | Fast and extensible multi-platform HTTP/1-2-3 web server with automatic HTTPS | [caddyserver/caddy](https://github.com/caddyserver/caddy) | 2026 | 2026 |
| [cargo-machete](cargo-machete/) | Remove unused Rust dependencies with this one weird trick! | [bnjbvr/cargo-machete](https://github.com/bnjbvr/cargo-machete) | 2026 | 2026 |
| [cargo-watch](cargo-watch/) | ⚠️ Archived upstream. Watches over your Cargo project's source | [watchexec/cargo-watch](https://github.com/watchexec/cargo-watch) | 2025 | 2024 |
| [chisel](chisel/) | A fast TCP/UDP tunnel over HTTP | [jpillora/chisel](https://github.com/jpillora/chisel) | 2026 | 2026 |
| [choose](choose/) | A human-friendly and fast alternative to cut (and sometimes awk) | [theryangeary/choose](https://github.com/theryangeary/choose) | 2025 | 2025 |
| [cmake](cmake/) | Mirror of CMake upstream repository | [Kitware/CMake](https://github.com/Kitware/CMake) | 2026 | 2026 |
| [cntb](cntb/) | Contabo Command Line Interface | [contabo/cntb](https://github.com/contabo/cntb) | 2026 | 2026 |
| [cosign](cosign/) | Code signing and transparency for containers and binaries | [sigstore/cosign](https://github.com/sigstore/cosign) | 2026 | 2026 |
| [crane](crane/) | Go library and CLIs for working with container registries | [google/go-containerregistry](https://github.com/google/go-containerregistry) | 2026 | 2026 |
| [ctop](ctop/) | Top-like interface for container metrics | [bcicen/ctop](https://github.com/bcicen/ctop) | 2024 | 2022 |
| [d2](d2/) | D2 is a modern diagram scripting language that turns text to diagrams | [terrastruct/d2](https://github.com/terrastruct/d2) | 2025 | 2025 |
| [dagger](dagger/) | Automation engine to build, test and ship any codebase. Runs locally, in CI, or directly in the cloud | [dagger/dagger](https://github.com/dagger/dagger) | 2026 | 2026 |
| [dalfox](dalfox/) | 🌙🦊 Dalfox is a powerful open-source XSS scanner and utility focused on automation | [hahwul/dalfox](https://github.com/hahwul/dalfox) | 2026 | 2025 |
| [dasel](dasel/) | Select, put and delete data from JSON, TOML, YAML, XML, INI, HCL and CSV files with a single tool. Also available as a go mod | [TomWright/dasel](https://github.com/TomWright/dasel) | 2026 | 2026 |
| [difftastic](difftastic/) | a structural diff that understands syntax 🟥🟩 (runs as `difft`) | [Wilfred/difftastic](https://github.com/Wilfred/difftastic) | 2026 | 2026 |
| [discrawl](discrawl/) | cli for discord with sqlite backend | [steipete/discrawl](https://github.com/steipete/discrawl) | 2026 | 2026 |
| [dive](dive/) | A tool for exploring each layer in a docker image | [wagoodman/dive](https://github.com/wagoodman/dive) | 2025 | 2025 |
| [dnsx](dnsx/) | dnsx is a fast and multi-purpose DNS toolkit allow to run multiple DNS queries of your choice with a list of user-supplied… | [projectdiscovery/dnsx](https://github.com/projectdiscovery/dnsx) | 2026 | 2025 |
| [dockle](dockle/) | Container Image Linter for Security, Helping build the Best-Practice Docker Image, Easy to start | [goodwithtech/dockle](https://github.com/goodwithtech/dockle) | 2026 | 2025 |
| [doctl](doctl/) | The official command line interface for the DigitalOcean API | [digitalocean/doctl](https://github.com/digitalocean/doctl) | 2026 | 2026 |
| [dprint](dprint/) | Pluggable and configurable code formatting platform written in Rust that unifies all your formatters in one tool | [dprint/dprint](https://github.com/dprint/dprint) | 2026 | 2026 |
| [duckdb](duckdb/) | DuckDB is an analytical in-process SQL database management system | [duckdb/duckdb](https://github.com/duckdb/duckdb) | 2026 | 2026 |
| [dust](dust/) | A more intuitive version of du in rust | [bootandy/dust](https://github.com/bootandy/dust) | 2026 | 2026 |
| [eza](eza/) | A modern alternative to ls | [eza-community/eza](https://github.com/eza-community/eza) | 2026 | 2025 |
| [fd](fd/) | A simple, fast and user-friendly alternative to 'find' | [sharkdp/fd](https://github.com/sharkdp/fd) | 2026 | 2026 |
| [feroxbuster](feroxbuster/) | A fast, simple, recursive content discovery tool written in Rust | [epi052/feroxbuster](https://github.com/epi052/feroxbuster) | 2026 | 2025 |
| [ffuf](ffuf/) | Fast web fuzzer written in Go | [ffuf/ffuf](https://github.com/ffuf/ffuf) | 2025 | 2023 |
| [flyctl](flyctl/) | Command line tools for fly.io services | [superfly/flyctl](https://github.com/superfly/flyctl) | 2026 | 2026 |
| [gau](gau/) | Fetch known URLs from AlienVault's Open Threat Exchange, the Wayback Machine, and Common Crawl | [lc/gau](https://github.com/lc/gau) | 2026 | 2024 |
| [git-cliff](git-cliff/) | A highly customizable Changelog Generator that follows Conventional Commit specifications ⛰️ | [orhun/git-cliff](https://github.com/orhun/git-cliff) | 2026 | 2026 |
| [git-delta](git-delta/) | A syntax-highlighting pager for git, diff, grep, rg --json, and blame output (runs as `delta`) | [dandavison/delta](https://github.com/dandavison/delta) | 2026 | 2026 |
| [git-sizer](git-sizer/) | Compute various size metrics for a Git repository, flagging those that might cause problems | [github/git-sizer](https://github.com/github/git-sizer) | 2026 | 2021 |
| [gitleaks](gitleaks/) | Find secrets with Gitleaks 🔑 | [gitleaks/gitleaks](https://github.com/gitleaks/gitleaks) | 2026 | 2026 |
| [glow](glow/) | Render markdown on the CLI, with pizzazz! 💅🏻 | [charmbracelet/glow](https://github.com/charmbracelet/glow) | 2026 | 2026 |
| [gobuster](gobuster/) | Directory/File, DNS and VHost busting tool written in Go | [OJ/gobuster](https://github.com/OJ/gobuster) | 2026 | 2025 |
| [gog](gog/) | Google Suite CLI: Gmail, GCal, GDrive, GContacts | [steipete/gogcli](https://github.com/steipete/gogcli) | 2026 | 2026 |
| [goplaces](goplaces/) | Modern Google Places CLI in Go | [steipete/goplaces](https://github.com/steipete/goplaces) | 2026 | 2026 |
| [grain](grain/) | The Grain compiler toolchain and CLI. Home of the modern web staple. 🌾 | [grain-lang/grain](https://github.com/grain-lang/grain) | 2026 | 2026 |
| [grex](grex/) | A command-line tool and Rust library with Python bindings for generating regular expressions from user-provided test cases | [pemistahl/grex](https://github.com/pemistahl/grex) | 2026 | 2025 |
| [gron](gron/) | Make JSON greppable! | [tomnomnom/gron](https://github.com/tomnomnom/gron) | 2025 | 2022 |
| [grpcurl](grpcurl/) | Like cURL, but for gRPC: Command-line tool for interacting with gRPC servers | [fullstorydev/grpcurl](https://github.com/fullstorydev/grpcurl) | 2026 | 2025 |
| [grype](grype/) | A vulnerability scanner for container images and filesystems | [anchore/grype](https://github.com/anchore/grype) | 2026 | 2026 |
| [gum](gum/) | A tool for glamorous shell scripts 🎀 | [charmbracelet/gum](https://github.com/charmbracelet/gum) | 2026 | 2025 |
| [hadolint](hadolint/) | Dockerfile linter, validate inline bash, written in Haskell | [hadolint/hadolint](https://github.com/hadolint/hadolint) | 2026 | 2025 |
| [harbor](harbor/) | Official Harbor CLI | [goharbor/harbor-cli](https://github.com/goharbor/harbor-cli) | 2026 | 2026 |
| [hcloud](hcloud/) | A command-line interface for Hetzner Cloud | [hetznercloud/cli](https://github.com/hetznercloud/cli) | 2026 | 2026 |
| [hey](hey/) | HTTP load generator, ApacheBench (ab) replacement | [rakyll/hey](https://github.com/rakyll/hey) | 2026 | 2026 |
| [htmlq](htmlq/) | Like jq, but for HTML | [mgdm/htmlq](https://github.com/mgdm/htmlq) | 2024 | 2022 |
| [httpx](httpx/) | httpx is a fast and multi-purpose HTTP toolkit that allows running multiple probes using the retryablehttp library | [projectdiscovery/httpx](https://github.com/projectdiscovery/httpx) | 2026 | 2026 |
| [hurl](hurl/) | Hurl, run and test HTTP requests with plain text | [Orange-OpenSource/hurl](https://github.com/Orange-OpenSource/hurl) | 2026 | 2025 |
| [hyperfine](hyperfine/) | A command-line benchmarking tool | [sharkdp/hyperfine](https://github.com/sharkdp/hyperfine) | 2026 | 2025 |
| [interactsh-client](interactsh-client/) | An OOB interaction gathering server and client library | [projectdiscovery/interactsh](https://github.com/projectdiscovery/interactsh) | 2026 | 2026 |
| [jcli](jcli/) | Jenkins CLI allows you to manage your Jenkins in an easy way. Jenkins 命令行客户端 | [jenkins-zh/jenkins-cli](https://github.com/jenkins-zh/jenkins-cli) | 2025 | 2025 |
| [jira](jira/) | 🔥 Feature-rich interactive Jira command line | [ankitpokhrel/jira-cli](https://github.com/ankitpokhrel/jira-cli) | 2026 | 2025 |
| [just](just/) | 🤖 Just a command runner | [casey/just](https://github.com/casey/just) | 2026 | 2026 |
| [k3d](k3d/) | Little helper to run CNCF's k3s in Docker | [k3d-io/k3d](https://github.com/k3d-io/k3d) | 2026 | 2025 |
| [kargo](kargo/) | Application lifecycle orchestration | [akuity/kargo](https://github.com/akuity/kargo) | 2026 | 2026 |
| [katana](katana/) | A next-generation crawling and spidering framework | [projectdiscovery/katana](https://github.com/projectdiscovery/katana) | 2026 | 2026 |
| [kiterunner](kiterunner/) | Contextual Content Discovery Tool (runs as `kr`) | [assetnote/kiterunner](https://github.com/assetnote/kiterunner) | 2024 | 2021 |
| [kube-bench](kube-bench/) | Checks whether Kubernetes is deployed according to security best practices as defined in the CIS Kubernetes Benchmark | [aquasecurity/kube-bench](https://github.com/aquasecurity/kube-bench) | 2026 | 2026 |
| [kube-linter](kube-linter/) | KubeLinter is a static analysis tool that checks Kubernetes YAML files and Helm charts to ensure the applications represented… | [stackrox/kube-linter](https://github.com/stackrox/kube-linter) | 2026 | 2026 |
| [kubectl-argo-rollouts](kubectl-argo-rollouts/) | Progressive Delivery for Kubernetes | [argoproj/argo-rollouts](https://github.com/argoproj/argo-rollouts) | 2026 | 2026 |
| [kustomize](kustomize/) | Customization of kubernetes YAML configurations | [kubernetes-sigs/kustomize](https://github.com/kubernetes-sigs/kustomize) | 2026 | 2026 |
| [lazydocker](lazydocker/) | The lazier way to manage everything docker | [jesseduffield/lazydocker](https://github.com/jesseduffield/lazydocker) | 2026 | 2026 |
| [lazygit](lazygit/) | simple terminal UI for git commands | [jesseduffield/lazygit](https://github.com/jesseduffield/lazygit) | 2026 | 2026 |
| [ligolo-ng-agent](ligolo-ng-agent/) | An advanced, yet simple, tunneling/pivoting tool that uses a TUN interface | [nicocha30/ligolo-ng](https://github.com/nicocha30/ligolo-ng) | 2026 | 2026 |
| [ligolo-ng-proxy](ligolo-ng-proxy/) | An advanced, yet simple, tunneling/pivoting tool that uses a TUN interface | [nicocha30/ligolo-ng](https://github.com/nicocha30/ligolo-ng) | 2026 | 2026 |
| [longhornctl](longhornctl/) | Longhorn CLI is a headless way for preflighting, operating and troubleshooting Longhorn cluster | [longhorn/cli](https://github.com/longhorn/cli) | 2026 | 2026 |
| [mage](mage/) | a Make/rake-like dev tool using Go | [magefile/mage](https://github.com/magefile/mage) | 2026 | 2026 |
| [miniserve](miniserve/) | 🌟 For when you really just want to serve some files over HTTP right now! | [svenstaro/miniserve](https://github.com/svenstaro/miniserve) | 2026 | 2026 |
| [mkcert](mkcert/) | A simple zero-config tool to make locally trusted development certificates with any names you'd like | [FiloSottile/mkcert](https://github.com/FiloSottile/mkcert) | 2024 | 2022 |
| [naabu](naabu/) | A fast port scanner written in go with a focus on reliability and simplicity. Designed to be used in combination with other… | [projectdiscovery/naabu](https://github.com/projectdiscovery/naabu) | 2026 | 2026 |
| [newrelic](newrelic/) | The New Relic Command Line Interface | [newrelic/newrelic-cli](https://github.com/newrelic/newrelic-cli) | 2026 | 2026 |
| [ninja](ninja/) | a small build system with a focus on speed | [ninja-build/ninja](https://github.com/ninja-build/ninja) | 2026 | 2025 |
| [nomad](nomad/) | Nomad is an easy-to-use, flexible, and performant workload orchestrator that can deploy a mix of microservice, batch,… | [hashicorp/nomad](https://github.com/hashicorp/nomad) | 2026 | 2026 |
| [nuclei](nuclei/) | Nuclei is a fast, customizable vulnerability scanner powered by the global security community and built on a simple YAML-based… | [projectdiscovery/nuclei](https://github.com/projectdiscovery/nuclei) | 2026 | 2026 |
| [octopus](octopus/) | \| Public \| Next Generation of the Octopus CLI :octopus: | [OctopusDeploy/cli](https://github.com/OctopusDeploy/cli) | 2026 | 2026 |
| [osv-scanner](osv-scanner/) | Vulnerability scanner written in Go which uses the data provided by https://osv.dev | [google/osv-scanner](https://github.com/google/osv-scanner) | 2026 | 2026 |
| [ouch](ouch/) | Painless compression and decompression in the terminal | [ouch-org/ouch](https://github.com/ouch-org/ouch) | 2026 | 2025 |
| [oxlint](oxlint/) | ⚓ A collection of high-performance JavaScript tools | [oxc-project/oxc](https://github.com/oxc-project/oxc) | 2026 | 2026 |
| [packer](packer/) | Packer is a tool for creating identical machine images for multiple platforms from a single source configuration | [hashicorp/packer](https://github.com/hashicorp/packer) | 2026 | 2026 |
| [pact_verifier_cli](pact_verifier_cli/) | Reference implementations for the pact specifications | [pact-foundation/pact-reference](https://github.com/pact-foundation/pact-reference) | 2026 | 2026 |
| [pastel](pastel/) | A command-line tool to generate, analyze, convert and manipulate colors | [sharkdp/pastel](https://github.com/sharkdp/pastel) | 2026 | 2026 |
| [pixi](pixi/) | Powerful system-level package manager for Linux, macOS and Windows written in Rust – building on top of the Conda ecosystem | [prefix-dev/pixi](https://github.com/prefix-dev/pixi) | 2026 | 2026 |
| [procs](procs/) | A modern replacement for ps written in Rust | [dalance/procs](https://github.com/dalance/procs) | 2026 | 2026 |
| [pulumi](pulumi/) | Pulumi - Infrastructure as Code in any programming language 🚀 | [pulumi/pulumi](https://github.com/pulumi/pulumi) | 2026 | 2026 |
| [puredns](puredns/) | Puredns is a fast domain resolver and subdomain bruteforcing tool that can accurately filter out wildcard subdomains and DNS… | [d3mondev/puredns](https://github.com/d3mondev/puredns) | 2026 | 2023 |
| [qsv](qsv/) | Blazing-fast Data-Wrangling toolkit | [jqnatividad/qsv](https://github.com/jqnatividad/qsv) | 2026 | 2026 |
| [rancher](rancher/) | Rancher CLI | [rancher/cli](https://github.com/rancher/cli) | 2026 | 2026 |
| [rattler-build](rattler-build/) | rattler-build is a universal Conda package builder for Windows, macOS and Linux (like conda-build but faster) | [prefix-dev/rattler-build](https://github.com/prefix-dev/rattler-build) | 2026 | 2026 |
| [rclone](rclone/) | "rsync for cloud storage" - Google Drive, S3, Dropbox, Backblaze B2, One Drive, Swift, Hubic, Wasabi, Google Cloud Storage,… | [rclone/rclone](https://github.com/rclone/rclone) | 2026 | 2026 |
| [ripgrep](ripgrep/) | ripgrep recursively searches directories for a regex pattern while respecting your gitignore (runs as `rg`) | [BurntSushi/ripgrep](https://github.com/BurntSushi/ripgrep) | 2026 | 2025 |
| [ripgrep-all](ripgrep-all/) | rga: ripgrep, but also search in PDFs, E-Books, Office documents, zip, tar.gz, etc (runs as `rga`) | [phiresky/ripgrep-all](https://github.com/phiresky/ripgrep-all) | 2026 | 2025 |
| [ruff](ruff/) | An extremely fast Python linter and code formatter, written in Rust | [astral-sh/ruff](https://github.com/astral-sh/ruff) | 2026 | 2026 |
| [s5cmd](s5cmd/) | Parallel S3 and local filesystem execution tool | [peak/s5cmd](https://github.com/peak/s5cmd) | 2025 | 2024 |
| [sd](sd/) | Intuitive find & replace CLI (sed alternative) | [chmln/sd](https://github.com/chmln/sd) | 2026 | 2026 |
| [sentry-cli](sentry-cli/) | A command line utility to work with Sentry | [getsentry/sentry-cli](https://github.com/getsentry/sentry-cli) | 2026 | 2026 |
| [shellcheck](shellcheck/) | ShellCheck, a static analysis tool for shell scripts | [koalaman/shellcheck](https://github.com/koalaman/shellcheck) | 2026 | 2025 |
| [shfmt](shfmt/) | A shell parser, formatter, and interpreter with bash and zsh support; includes shfmt | [mvdan/sh](https://github.com/mvdan/sh) | 2026 | 2026 |
| [snyk](snyk/) | Snyk CLI scans and monitors your projects for security vulnerabilities | [snyk/cli](https://github.com/snyk/cli) | 2026 | 2026 |
| [sops](sops/) | Simple and flexible tool for managing secrets | [getsops/sops](https://github.com/getsops/sops) | 2026 | 2026 |
| [step](step/) | 🧰 A zero trust swiss army knife for working with X509, OAuth, JWT, OATH OTP, etc | [smallstep/cli](https://github.com/smallstep/cli) | 2026 | 2026 |
| [stripe-cli](stripe-cli/) | A command-line tool for Stripe (runs as `stripe`) | [stripe/stripe-cli](https://github.com/stripe/stripe-cli) | 2026 | 2026 |
| [subfinder](subfinder/) | Fast passive subdomain enumeration tool | [projectdiscovery/subfinder](https://github.com/projectdiscovery/subfinder) | 2026 | 2026 |
| [subjack](subjack/) | DNS Takeover tool written in Go | [haccer/subjack](https://github.com/haccer/subjack) | 2026 | 2026 |
| [syft](syft/) | CLI tool and library for generating a Software Bill of Materials from container images and filesystems | [anchore/syft](https://github.com/anchore/syft) | 2026 | 2026 |
| [task](task/) | A fast, cross-platform build tool inspired by Make, designed for modern workflows | [go-task/task](https://github.com/go-task/task) | 2026 | 2026 |
| [telnyx](telnyx/) | CLI SDK for the Telnyx API | [team-telnyx/telnyx-cli](https://github.com/team-telnyx/telnyx-cli) | 2026 | 2026 |
| [tflint](tflint/) | A Pluggable Terraform Linter | [terraform-linters/tflint](https://github.com/terraform-linters/tflint) | 2026 | 2026 |
| [titus](titus/) | High-performance secrets scanner. CLI, Go library, Burp Suite extension, and Chrome extension. 487 detection rules with live… | [praetorian-inc/titus](https://github.com/praetorian-inc/titus) | 2026 | 2026 |
| [tlsx](tlsx/) | Fast and configurable TLS grabber focused on TLS based data collection | [projectdiscovery/tlsx](https://github.com/projectdiscovery/tlsx) | 2026 | 2025 |
| [traefik](traefik/) | The Cloud Native Application Proxy | [traefik/traefik](https://github.com/traefik/traefik) | 2026 | 2026 |
| [tree-sitter](tree-sitter/) | An incremental parsing system for programming tools | [tree-sitter/tree-sitter](https://github.com/tree-sitter/tree-sitter) | 2026 | 2026 |
| [trufflehog](trufflehog/) | Find, verify, and analyze leaked credentials | [trufflesecurity/trufflehog](https://github.com/trufflesecurity/trufflehog) | 2026 | 2026 |
| [ubi](ubi/) | The Universal Binary Installer | [houseabsolute/ubi](https://github.com/houseabsolute/ubi) | 2026 | 2026 |
| [uncover](uncover/) | Quickly discover exposed hosts on the internet using multiple search engines | [projectdiscovery/uncover](https://github.com/projectdiscovery/uncover) | 2026 | 2025 |
| [usql](usql/) | Universal command-line interface for SQL databases | [xo/usql](https://github.com/xo/usql) | 2026 | 2026 |
| [uv](uv/) | An extremely fast Python package and project manager, written in Rust | [astral-sh/uv](https://github.com/astral-sh/uv) | 2026 | 2026 |
| [vault](vault/) | A tool for secrets management, encryption as a service, and privileged access management | [hashicorp/vault](https://github.com/hashicorp/vault) | 2026 | 2026 |
| [vhs](vhs/) | Your CLI home video recorder 📼 | [charmbracelet/vhs](https://github.com/charmbracelet/vhs) | 2026 | 2026 |
| [vt-cli](vt-cli/) | VirusTotal Command Line Interface (runs as `vt`) | [VirusTotal/vt-cli](https://github.com/VirusTotal/vt-cli) | 2026 | 2026 |
| [vultr-cli](vultr-cli/) | Official command line tool for Vultr services | [vultr/vultr-cli](https://github.com/vultr/vultr-cli) | 2026 | 2026 |
| [watchexec](watchexec/) | Executes commands in response to file modifications | [watchexec/watchexec](https://github.com/watchexec/watchexec) | 2026 | 2026 |
| [webanalyze](webanalyze/) | Port of Wappalyzer (uncovers technologies used on websites) to automate mass scanning | [rverton/webanalyze](https://github.com/rverton/webanalyze) | 2026 | 2026 |
| [wizer](wizer/) | The WebAssembly Pre-Initializer | [bytecodealliance/wizer](https://github.com/bytecodealliance/wizer) | 2026 | 2026 |
| [xh](xh/) | Friendly and fast tool for sending HTTP requests | [ducaale/xh](https://github.com/ducaale/xh) | 2026 | 2025 |
| [yq](yq/) | yq is a portable command-line YAML, JSON, XML, CSV, TOML, HCL and properties processor | [mikefarah/yq](https://github.com/mikefarah/yq) | 2026 | 2026 |

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
