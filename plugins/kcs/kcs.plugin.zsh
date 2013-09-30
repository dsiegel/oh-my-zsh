autoload -U bashcompinit
bashcompinit
complete -o default -C 'python -m knewton_crab_stacker.tab_completion "${COMP_LINE}"' kcs
