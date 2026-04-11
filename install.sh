#!/bin/bash
# Install all proto-toml-plugins at once

set -e

REPO="https://raw.githubusercontent.com/binary64/proto-toml-plugins/main"

# List of all plugins in this repo
PLUGINS="argocd argocd-image-updater ast-grep bandwhich bat bottom btm cargo-machete cargo-watch choose cntb crane ctop dasel delta difft dive doctl dust eza fd feroxbuster ffuf git-cliff glow gobuster grex gron grpcurl gum hadolint harbor hcloud hey htmlq httpx jcli just kargo kubectl-argo-rollouts lazydocker lazygit longhornctl miniserve mkcert newrelic nuclei ouch pastel procs pulumi qsv rancher rg rga sd sentry-cli shfmt snyk sops subfinder syft telnyx ubi usql vhs vt vultr-cli webanalyze xh yq"

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
