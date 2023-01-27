# pacman components
BASE=ungoogled-chromium  element-desktop-nightly-bin  qbittorrent-enhanced-git

CODE=codium  jq  ninja  cmake
DEVOPS=terraform  kubectl  kubectx  docker  go  fuse-overlayfs
PYTHON=pyenv  zlib  xz  tk  openssl  python-pipx  pycharm-professional  python-black  python-aiohttp  python-isort  python-pandas
FLUTTER=flutter  dart  android-sdk

ART=blender  inkscape

GAMING=lutris-git  wine-ge-custom  proton-ge-custom  steam-native-runtime  heroic-games-launcher-bin  mangohud-git  gamemode  dxvk-async-git
AUTHOR_PERSONAL=via  it87-dkms-git

# post-pacman components
DEVOPS_SETUP=sudo usermod -aG docker ${USER}  &&  printf "{\n  "storage-driver": "overlay2"\n}" | sudo tee /etc/docker/daemon.json
FLUTTER_SETUP=git config --global --add safe.directory /opt/flutter  &&  sudo usermod -aG flutterusers ${USER}
PYTHON_SETUP=pipx install poetry
PERSONAL_SETUP=echo it87 | sudo tee /etc/modules-load.d/it87.conf


full:
	sudo pacman -Sy --needed $(BASE) $(CODE) $(DEVOPS) $(PYTHON) $(FLUTTER) $(ART) $(GAMING) && \
	$(FLUTTER_SETUP) && \
	$(PYTHON_SETUP)

fullp:
	sudo pacman -Sy --needed $(BASE) $(CODE) $(DEVOPS) $(PYTHON) $(FLUTTER) $(ART) $(GAMING) $(AUTHOR_PERSONAL) && \
	$(FLUTTER_SETUP) && \
	$(PYTHON_SETUP) && \
	$(PERSONAL_SETUP)

dev:
	sudo pacman -Sy --needed $(BASE) $(CODE) $(DEVOPS) $(PYTHON) $(FLUTTER) && \
	$(FLUTTER_SETUP) && \
	$(PYTHON_SETUP)

py:
	sudo pacman -Sy --needed $(BASE) $(CODE) $(PYTHON) && \
	$(PYTHON_SETUP)

gamer:
	sudo pacman -Sy --needed $(BASE) $(GAMING)