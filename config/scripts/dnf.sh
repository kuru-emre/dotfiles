# Optimize DNF package manager for faster downloads and efficient updates
color_echo "yellow" "Configuring DNF Package Manager..."
backup_file "/etc/dnf/dnf.conf"
# Max Parallel Downloads
echo "max_parallel_downloads=10" | tee -a /etc/dnf/dnf.conf > /dev/null
# Select Fastest Mirror
echo "fastestmirror=True" | tee -a /etc/dnf/dnf.conf > /dev/null


color_echo "yellow" "Replacing Fedora Flatpak Repo with Flathub..."
dnf install -y flatpak
flatpak remote-delete fedora --force || true
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
sudo flatpak repair
flatpak update