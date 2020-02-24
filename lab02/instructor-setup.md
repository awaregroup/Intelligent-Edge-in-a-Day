# Prep for IoT PnP

Do this before the training

1. Flash SD Card with Raspbian Buster  
  2020-02-13-raspbian-buster-lite.zip
1. Add a empty file called `ssh` file to `boot` partition
1. Boot RP4 with the SD Card
1. Run :

```bash
ssh "192.168.8.10" "cd ~/ && sudo apt-get update && sudo apt-get install -y git && git clone https://github.com/awaregroup/Intelligent-Edge-in-a-Day.git && cd Intelligent-Edge-in-a-Day && /bin/bash ./lab02/setup-pi.sh"
```