all:
	git add .
	git commit -m "$(arg)"
	git push
