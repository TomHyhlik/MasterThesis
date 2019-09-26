# call it like: make arg="commit title"
all:
	git add .
	git commit -m "$(arg)"
	git push
