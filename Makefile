MAKEFLAGS += --no-builtin-rules

all: minify

minify:
	@curl -X POST -s --data-urlencode 'input@css/gruvbox-dark-medium.css' https://cssminifier.com/raw > css/gruvbox-dark-medium.min.css

clean:
	@rm -f css/gruvbox-dark-medium.min.css

.PHONY: all minify
