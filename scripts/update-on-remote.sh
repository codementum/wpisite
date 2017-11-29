cd ~/dev/wpisite

git pull

cp -r ~/dev/wpisite/_site/* ~/public_html/

cd ~/public_html

find ~/public_html -type f -print0 | xargs -0 chmod 644
find ~/public_html -type d -print0 | xargs -0 chmod 755 
