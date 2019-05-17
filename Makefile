VPATH = src

all: emacs

emacs: emacs/blizzard-theme.el

% :: %.hbs colors.json
	node render.js $< $@
