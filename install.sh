#!/bin/bash
# Install all proto-toml-plugins at once

set -e

REPO="https://raw.githubusercontent.com/binary64/proto-toml-plugins/main"

# List of all plugins in this repo
PLUGINS="act actionlint alterx amass argocd argocd-image-updater ast-grep atmos bandwhich bat bazel bearer biome bottom caddy cargo-machete cargo-watch chisel choose cmake cntb cosign crane ctop d2 dagger dalfox dasel difftastic discrawl dive dnsx dockle doctl dprint duckdb dust eza fd feroxbuster ffuf flyctl gau git-cliff git-delta git-sizer gitleaks glow gobuster gog gogcli goplaces grain grex gron grpcurl grype gum hadolint harbor hcloud hey htmlq httpx hurl hyperfine interactsh-client jcli jira just k3d kargo katana kiterunner kube-bench kube-linter kubectl-argo-rollouts kustomize lazydocker lazygit ligolo-ng-agent ligolo-ng-proxy local-php-security-checker longhornctl mage miniserve mkcert naabu newrelic ninja nomad nuclei octopus osv-scanner ouch oxlint packer pact_verifier_cli pastel pixi podman-static procs pulumi puredns qsv rancher rattler-build rclone ripgrep ripgrep-all ruff s5cmd sd sentry-cli shellcheck shfmt snyk sops step stripe-cli subfinder subjack syft task telnyx tflint titus tlsx traefik tree-sitter trufflehog ubi uncover usql uv vault vhs vt-cli vultr-cli watchexec webanalyze wizer xh yq zap"

# Add all plugins
echo "Adding all plugins..."
for plugin in $PLUGINS; do
  echo "Adding $plugin..."
  proto plugin add $plugin $REPO/$plugin/plugin.toml
done

# Install all plugins
echo ""
echo "Installing all plugins..."
for plugin in $PLUGINS; do
  echo "Installing $plugin..."
  proto install $plugin
done

echo ""
echo "✅ All plugins installed!"
