VPATH = src

all: emacs alacritty

alacritty: alacritty/blizzard-theme.toml
emacs: emacs/blizzard-theme.el

% :: %.hbs colors.json
	node render.js $< $@
