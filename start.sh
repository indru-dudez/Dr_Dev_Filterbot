if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/DrDevAnand/Dr_Dev_Filterbot.git /Dr_Dev_Filterbot
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /Dr_Dev_Filterbot
fi
cd /Dr_Dev_Filterbot
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 bot.py
