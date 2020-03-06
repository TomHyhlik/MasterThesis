# call it like: make arg="commit title"

arg = nvm

all:
	git add .
	git commit -m "$(arg)"
	git push
