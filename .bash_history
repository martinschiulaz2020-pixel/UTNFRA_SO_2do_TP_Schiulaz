sudo apt install git
# Add Docker's official GPG key:
sudo apt update
sudo apt install ca-certificates curl
sudo install -m 0755 -d /etc/apt/keyrings
sudo curl -fsSL https://download.docker.com/linux/ubuntu/gpg -o /etc/apt/keyrings/docker.asc
sudo chmod a+r /etc/apt/keyrings/docker.asc
# Add the repository to Apt sources:
sudo tee /etc/apt/sources.list.d/docker.sources <<EOF
Types: deb
URIs: https://download.docker.com/linux/ubuntu
Suites: $(. /etc/os-release && echo "${UBUNTU_CODENAME:-$VERSION_CODENAME}")
Components: stable
Architectures: $(dpkg --print-architecture)
Signed-By: /etc/apt/keyrings/docker.asc
EOF

sudo apt update
[200~sudo apt install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin~
sudo apt install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin
sudo docker run hello-world
pwd
git clone https://github.com/upszot/UTN-FRA_SO_Examenes.git
ls
cd UTN-FRA_SO_Examenes/202406
chmod +x script_Precondicion.sh
./script_Precondicion.sh
source ~/.bashrc
mkdir ~/RTA_Examen_$(date +%Y%m%d)
ls
ls ~/RTA_Examen_$(date +%Y%m%d)
lsblk
source ~/.bashrc && history -a
pwd
ls ~
source ~/.bashrc && history -a
lsblk
sudo pvcreate /dev/sdc
sudo pvcreate /dev/sdd
sudo pvs
nano ~/RTA_Examen_$(date +%Y%m%d)/Punto_A.sh
sudo vgcreate vg_datos /dev/sdd
sudo vgcreate vg_temp /dev/sdc
sudo lvcreate -L 5M -n lv_docker vg_datos
sudo lvcreate -L 1.5G -n lv_workareas vg_datos
sudo lvcreate -L 512M -n lv_swap vg_temp
sudo mkfs.ext4 /dev/vg_datos/lv_docker
sudo mkfs.ext4 /dev/vg_datos/lv_workareas
sudo mkdir -p /var/lib/docker /work
sudo mount /dev/vg_datos/lv_docker /var/lib/docker
sudo mount /dev/vg_datos/lv_workareas /work
sudo mkswap /dev/vg_temp/lv_swap
sudo swapon /dev/vg_temp/lv_swap
lsblk
vgs
sudo vgs
lvs
sudo lvs
cd ~/RTA_Examen_20260624
ls -l
git init
git status
git remote add origin https://github.com/martinschiulaz2020-pixel/UTNFRA_SO_2do_TP_Schiulaz.git
git add .
git commit -m "Punto A - LVM"
git branch -M main
git push -u origin main
git config --global user.name "Martin Schiulaz"
git config --global user.email "martinschiulaz2020@gmail.com"
git add .
git commit -m "Punto A - LVM"
git branch -M main
git push -u origin main
cd ~/RTA_Examen_20260624
git status
git push -u origin main
git remote -v
git status
git log --oneline
git push -u origin main
history | grep pvcreate
cat Punto_A.sh
nano Punto_A.sh
cat Punto_A.sh
git add Punto_A.sh 
git commit -m 
history | grep mkfs
history | grep mount
history | grep swap
nano Punto_A.sh
cat Punto_A.sh
git add Punto_A.sh
git commit -m "Completo Punto A"
git push
ls ~/UTN-FRA_SO_Examenes/202406
cat ~/UTN-FRA_SO_Examenes/202406/bash_script/Lista_Usuarios.txt
sudo nano /usr/local/bin/SchiulazAltaUser-Groups.sh
sudo chmod +x /usr/local/bin/SchiulazAltaUser-Groups.sh
sudo cp /usr/local/bin/SchiulazAltaUser-Groups.sh ~/RTA_Examen_20260624/Punto_B.sh
sudo chown vagrant:vagrant ~/RTA_Examen_20260624/Punto_B.sh
cat ~/RTA_Examen_20260624/Punto_B.sh
cd ~/RTA_Examen_20260624
git add Punto_B.sh 
git commit -m "Completo Punto B"
git push
id 2P_202406_Prog1
cat ~/RTA_Examen_20260624/Punto_B.sh
sudo bash -x /usr/local/bin/SchiulazAltaUser-Groups.sh vagrant ~/UTN-FRA_SO_Examenes/202406/bash_script/Lista_Usuarios.txt
id 2P_202406_Prog1
id 2P_202406_Prog2
id 2P_202406_Test1
id 2P_202406_Supervisor
sudo cp /usr/local/bin/SchiulazAltaUser-Groups.sh ~/RTA_Examen_20260624/Punto_B.sh
sudo chown vagrant:vagrant ~/RTA_Examen_20260624/Punto_B.sh
git add Punto_B.sh
git commit -m "Completo Punto B"
git push
cd ~/UTN-FRA_SO_Examenes/202406/docker
ls -ls
nano index.html
sudo docker build -t web1-schiulaz .
sudo mkdir -p /var/lib/docker/tmp
sudo chmod 711 /var/lib/docker/tmp
cd ~/UTN-FRA_SO_Examenes/202406/docker
sudo docker build -t web1-schiulaz .
df -h /var/lib/docker
pwd
ls -ls
ls -la
nano Dockerfile
ls -la
cat Dockerfile 
sudo docker build -t web1-schiulaz
sudo docker build -t web1-schiulaz .
sudo systemctl stop docker
sudo rm -rf /var/lib/docker/buildkit
sudo mkdir -p /var/lib/docker/buildkit/containerd-overlayfs/cachemounts
sudo systemctl start docker
cd ~/UTN-FRA_SO_Examenes/202406/docker
sudo DOCKER_BUILDKIT=0 docker build -t web1-schiulaz .
sudo docker images
sudo docker run -d -p 8080:80 web1-schiulaz
curl localhost:8080
sudo docker run -d -p 8080:80 web1-schiulaz
sudo docker ps
curl localhost:8080
sudo docker login
sudo docker tag web1-schiulaz martinschiulaz/web1-schiulaz:latest
sudo docker push martinschiulaz/web1-schiulaz:latest
nano run.sh
chmod +x run.sh 
nano ~/RTA_Examen_20260624/Punto_C.sh
cd ~/RTA_Examen_20260624
git add Punto_C.sh 
git commit -m "Completo Punto C"
git push
ls -R ~/UTN-FRA_SO_Examenes/202406/ansible
cat ~/UTN-FRA_SO_Examenes/202406/ansible/playbook.yml
cat ~/UTN-FRA_SO_Examenes/202406/ansible/roles/2do_parcial/tasks/main.yml
cd ~/UTN-FRA_SO_Examenes/202406/ansible/roles/2do_parcial
mkdir templates
nano templates/datos_alumno.txt.j2
nano templates/datos_equipo.txt.j2
cd ~/UTN-FRA_SO_Examenes/202406/ansible
ansible-playbook -i inventory/hosts playbook.yml --become
cat /tmp/2do_parcial/alumno/datos_alumno.txt
cat /tmp/2do_parcial/equipo/datos_equipo.txt
sudo cat /etc/sudoers.d/2PSupervisores
sudo apt update
sudo apt install wget gpg
wget -O- "https://keyserver.ubuntu.com/pks/lookup?fingerprint=on&op=get&search=0x6125E2A8C77F2818FB7BD15B93C4A3FD7BB9C367" | sudo gpg --dearmor -o /usr/share/keyrings/ansible-archive-keyring.gpg
echo "deb [signed-by=/usr/share/keyrings/ansible-archive-keyring.gpg] http://ppa.launchpad.net/ansible/ansible/ubuntu $UBUNTU_CODENAME main" | sudo tee /etc/apt/sources.list.d/ansible.list
sudo apt update && sudo apt install ansible
sudo rm /etc/apt/sources.list.d/ansible.list
UBUNTU_CODENAME=jammy
echo "deb [signed-by=/usr/share/keyrings/ansible-archive-keyring.gpg] http://ppa.launchpad.net/ansible/ansible/ubuntu $UBUNTU_CODENAME main" | sudo tee /etc/apt/sources.list.d/ansible.list
sudo apt update
sudo apt install ansible
ansible --version
cd ~/UTN-FRA_SO_Examenes/202406/ansible
ansible-playbook -i inventory/hosts playbook.yml --become
cd ~/UTN-FRA_SO_Examenes/202406/ansible/roles/2do_parcial
nano tasks/main.yml
cd ~/UTN-FRA_SO_Examenes/202406/ansible
ansible-playbook -i inventory/hosts playbook.yml --become --limit localhost
cat /tmp/2do_parcial/alumno/datos_alumno.txt
cat /tmp/2do_parcial/equipo/datos_equipo.txt
sudo cat /etc/sudoers.d/2PSupervisores
nano ~/RTA_Examen_20260624/Punto_D.sh
cd ~/RTA_Examen_20260624
git add Punto_D.sh 
git commit -m "Completo Punto D"
git push
history -a
cp ~/.bash_history .
cp -r ~/UTN-FRA_SO_Examenes/202406 .
ls -la
cd ~
git clone https://github.com/martinschiulaz2020-pixel/UTNFRA_SO_2do_TP_Schiulaz.git
cd ~/UTNFRA_SO_2do_TP_Schiulaz
cp -r ~/UTN-FRA_SO_Examenes/202406 .
cp -r ~/RTA_Examen_20260624 .
history -a
cp ~/.bash_history .
git add .
git commit -m "Entrega final TP"
git push
ls -la ~/RTA_Examen_20260624
cd ~/UTNFRA_SO_2do_TP_Schiulaz
ls -la
cd ~/UTNFRA_SO_2do_TP_Schiulaz
ls -la
ls -la RTA_Examen_20260624
ls -l /usr/local/bin/*AltaUser-Groups.sh
cp /usr/local/bin/SchiulazAltaUser-Groups.sh ~/UTNFRA_SO_2do_TP_Schiulaz/RTA_Examen_20260624/
sudo apt install tree -y
tree -L 2 ~/UTNFRA_SO_2do_TP_Schiulaz
cd ~/UTNFRA_SO_2do_TP_Schiulaz
rm Punto_A.sh
rm Punto_B.sh
rm Punto_C.sh
rm Punto_D.sh
rm -rf RTA_Examen_20260624/202406
tree -L 2 ~/UTNFRA_SO_2do_TP_Schiulaz
cd ~/UTNFRA_SO_2do_TP_Schiulaz
history -a
