# Makefile works with TAB
# therefore this is a syntax hack to avoid to be confused
# ### rule: dependencies ; command
# M-x whitespace-mode will show you if spaces are TAB or SPACE

bootstrap: .git-version init.el pres.html ; @echo Done.

.git-version: ; git --version > $@

init.el: pres.org ; emacs --batch -Q	\
    pres.org				\
    -f org-babel-tangle		\
    1>&2 2> /dev/null

pres.html: pres.org ; emacs -Q		\
    pres.org						\
    -l config.el					\
    -f org-reveal-export-to-html	\
    --kill
