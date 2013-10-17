if [ ! -f ~/.packer-env ]; then
  echo "In order to build an image, I need your DigitalOcean API credentials."
  echo
  echo "Please create a file at $HOME/.packer-env with:"
  echo
  echo "\texport DIGITALOCEAN_API_KEY=<API KEY>"
  echo "\texport DIGITAL_CEAN_CLIENT_ID=<CLIENT ID>"
  echo
  exit 1
fi

source ~/.packer-env
packer build docker-host.json
