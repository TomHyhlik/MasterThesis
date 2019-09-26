# call it like: make arg=commitTitle
all:
	git add .
	git commit -m "$(arg)"
	git push
