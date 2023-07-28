set -oue pipefail

cp cosign.pub /etc/pki/containers/ublue-os.pub
sed -i 's/ublue-os/eyecantcu/g' /etc/containers/registries.d/ublue-os.yaml
