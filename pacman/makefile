# pacman components
BASE=brave-bin  element-desktop-nightly-bin  qbittorrent-enhanced-git  octopi  fancontrol-gui-git  xdman
PC_HOBY=via

TEX=texlive-bin  texlive-core  texlive-bibtexextra  texlive-fontsextra  texlive-latexextra  texlive-science  texlive-latexextra  texstudio  biber
FLUTTER=flutter  dart  android-sdk

CODE=codium  jq  ninja  cmake  openapi-generator
DEVOPS=terraform  kubectl  kubectx  docker  go  fuse-overlayfs  lens
PYTHON=pyenv  zlib  xz  tk  openssl  python-pipx  pycharm-professional  python-black  python-aiohttp  python-isort  python-pandas
WRITER=libreoffice-fresh  $(TEX)
ART=blender  inkscape

GAMING=lutris  wine-ge-custom  proton-ge-custom  steam-native-runtime  heroic-games-launcher-bin  mangohud-git  gamemode  dxvk-async-git
AUTHOR_PERSONAL=it87-dkms-git

# post-pacman components
CHAOTIC_AUR_SETUP=sh add_chaotic_aur.sh
DEVOPS_SETUP=sudo usermod -aG docker ${USER}  &&  printf {\n  \"storage-driver\": \"overlay2\"\n} | sudo tee /etc/docker/daemon.json
FLUTTER_SETUP=git config --global --add safe.directory /opt/flutter  &&  sudo usermod -aG flutterusers ${USER}  &&  echo export CHROME_EXECUTABLE=chromium >> ~/.bashrc
PYTHON_SETUP=pipx install poetry
PERSONAL_SETUP=echo it87 | sudo tee /etc/modules-load.d/it87.conf


full:
	sudo pacman -Sy --needed $(BASE) $(PC_HOBY) $(CODE) $(DEVOPS) $(PYTHON) $(FLUTTER) $(ART) $(WRITER) && \
	$(FLUTTER_SETUP) && \
	$(PYTHON_SETUP) && \
	$(DEVOPS_SETUP)

fullp:
	sudo pacman -Sy --needed $(BASE) $(CODE) $(DEVOPS) $(PYTHON) $(FLUTTER) $(ART) $(GAMING) $(AUTHOR_PERSONAL) && \
	$(FLUTTER_SETUP) && \
	$(PYTHON_SETUP) && \
	$(PERSONAL_SETUP)

hoby:
	sudo pacman -Sy --needed $(BASE) $(PC_HOBY)

dev:
	sudo pacman -Sy --needed $(BASE) $(CODE) $(DEVOPS) $(PYTHON) $(FLUTTER) && \
	$(FLUTTER_SETUP) && \
	$(PYTHON_SETUP) && \
	$(DEVOPS_SETUP)

py:
	sudo pacman -Sy --needed $(BASE) $(CODE) $(PYTHON) && \
	$(PYTHON_SETUP)

tex:
	sudo pacman -Sy --needed $(BASE) $(TEX)

gamer:
	sudo pacman -Sy --needed $(BASE) $(GAMING) $(PC_HOBY)

flutter:
	sudo pacman -Sy --needed flutter && $(FLUTTER_SETUP)

chaotic:
	$(CHAOTIC_AUR_SETUP)
