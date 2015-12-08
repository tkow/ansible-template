sudo group install "Development tools"
sudo yum install -y gcc gcc-c++ zlib-devel bzip2-devel readline-devel openssl-devel openssl ncurses-devel sqlite-devel tk-devel python-devel python-setuptools git
wget ftp://ftp.gnu.org/gnu/gmp/gmp-5.0.5.tar.bz2
bzip2 -dc gmp-5.0.5.tar.bz2 | tar xvf -
cd gmp-5.0.5
./configure --prefix=/usr/local --enable-cxx
make 
sudo make install
cd ~
sudo easy_install pip
sudo pip install ansible
ssh-keyscan -H github.com >> ~/.ssh/known_hosts
cd ~/
git clone git@github.com:tkow/ruby_test.git
cd Self-DmpServer-ansible
ansible-playbook playbook/site.yml --private-key=/vagrant/.vagrant/machines/dev/virtualbox/private_key
