# Update the sources list
sudo apt-get update -y

# install git
sudo apt-get install git -y

# Install python and pip
sudo apt install python3
sudo add-apt-repository universe
sudo apt-get install python3-pip -y

# change to the directory where the code is and install the requirements
cd DevOpsProject-ItJobsWatch-master
sudo pip3 install -r requirements.txt

# Make a downloads directory if it isnt already present
mkdir -p ~/home/ubuntu/downloads