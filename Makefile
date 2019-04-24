%.html: %.md
	pandoc -f markdown -V lang=es --template=template/GitHub_source.html5 -c css/GitHub.css -c css/_alerts.scss -c css/_github-markdown.scss -c css/_pandoc.scss -c css/tor.css -s -o $@ $<
%.pdf: %.md
	pandoc -f markdown -V lang=es -s -o $@ $<
