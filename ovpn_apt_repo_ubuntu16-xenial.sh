#Installs prerequisites
sudo apt update && sudo apt -y install ca-certificates wget net-tools gnupg;

#GPG Key
wget -qO - https://as-repository.openvpn.net/as-repo-public.gpg | sudo apt-key add -;

#Adds OpenVPN Repo to the sources
echo "deb [arch=amd64] http://as-repository.openvpn.net/as/debian xenial main" | sudo tee  /etc/apt/sources.list.d/openvpn-as-repo.list;

#Updates repositories and installs OpenVPN Access Server through repo
sudo apt update && sudo apt -y install openvpn-as;
