echo "Cloning Repo...."
if [ -z $BRANCH ]
then
  echo "Cloning main branch...."
  git clone https://github.com/rajeshrakis/HB-Stream /HB-Stream
else
  echo "Cloning $BRANCH branch...."
  git clone https://github.com/rajeshrakis/HB-Stream -b $BRANCH /HB-Stream
fi
cd /HB-Stream
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 main.py
