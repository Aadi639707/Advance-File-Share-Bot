if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/VJBots/File_to_link_timebot /File_to_link_timebot
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /File_to_link_timebot
fi
cd /File_to_link_timebot
pip3 install -U -r requirements.txt
echo "Bot Started...."
python3 bot.py
