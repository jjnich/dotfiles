#-- START ZCACHE GENERATED FILE
#-- GENERATED: Tue Mar 27 19:10:26 CDT 2018
#-- ANTIGEN v2.0.2
_antigen () {
	local -a _1st_arguments
	_1st_arguments=('apply:Load all bundle completions' 'bundle:Install and load the given plugin' 'bundles:Bulk define bundles' 'cleanup:Clean up the clones of repos which are not used by any bundles currently loaded' 'cache-gen:Generate cache' 'init:Load Antigen configuration from file' 'list:List out the currently loaded bundles' 'purge:Remove a cloned bundle from filesystem' 'reset:Clears cache' 'restore:Restore the bundles state as specified in the snapshot' 'revert:Revert the state of all bundles to how they were before the last antigen update' 'selfupdate:Update antigen itself' 'snapshot:Create a snapshot of all the active clones' 'theme:Switch the prompt theme' 'update:Update all bundles' 'use:Load any (supported) zsh pre-packaged framework') 
	_1st_arguments+=('help:Show this message' 'version:Display Antigen version') 
	__bundle () {
		_arguments '--loc[Path to the location <path-to/location>]' '--url[Path to the repository <github-account/repository>]' '--branch[Git branch name]' '--no-local-clone[Do not create a clone]'
	}
	__list () {
		_arguments '--simple[Show only bundle name]' '--short[Show only bundle name and branch]' '--long[Show bundle records]'
	}
	__cleanup () {
		_arguments '--force[Do not ask for confirmation]'
	}
	_arguments '*:: :->command'
	if (( CURRENT == 1 ))
	then
		_describe -t commands "antigen command" _1st_arguments
		return
	fi
	local -a _command_args
	case "$words[1]" in
		(bundle) __bundle ;;
		(use) compadd "$@" "oh-my-zsh" "prezto" ;;
		(cleanup) __cleanup ;;
		(update|purge) compadd $(type -f \-antigen-get-bundles &> /dev/null || antigen &> /dev/null; -antigen-get-bundles --simple 2> /dev/null) ;;
		(theme) compadd $(type -f \-antigen-get-themes &> /dev/null || antigen &> /dev/null; -antigen-get-themes 2> /dev/null) ;;
		(list) __list ;;
	esac
}
antigen () {
  [[ "$ZSH_EVAL_CONTEXT" =~ "toplevel:*" || "$ZSH_EVAL_CONTEXT" =~ "cmdarg:*" ]] && source "/home/jjnich/antigen/antigen.zsh" && eval antigen $@;
  return 0;
}
fpath+=(/home/jjnich/.antigen/bundles/zsh-users/zsh-syntax-highlighting /home/jjnich/.antigen/bundles/zsh-users/zsh-history-substring-search /home/jjnich/.antigen/bundles/robbyrussell/oh-my-zsh/lib /home/jjnich/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/git); PATH="$PATH:"
_antigen_compinit () {
  autoload -Uz compinit; compinit -C -d "/home/jjnich/.antigen/.zcompdump"; compdef _antigen antigen
  add-zsh-hook -D precmd _antigen_compinit
}
autoload -Uz add-zsh-hook; add-zsh-hook precmd _antigen_compinit
compdef () {}
ZSH="/home/jjnich/.antigen/bundles/robbyrussell/oh-my-zsh" ZSH_CACHE_DIR="/home/jjnich/.antigen/bundles/robbyrussell/oh-my-zsh/cache/"
source "/home/jjnich/.antigen/bundles/zsh-users/zsh-syntax-highlighting/zsh-syntax-highlighting.plugin.zsh";
source "/home/jjnich/.antigen/bundles/zsh-users/zsh-history-substring-search/zsh-history-substring-search.zsh";
source "/home/jjnich/.antigen/bundles/robbyrussell/oh-my-zsh/lib/bzr.zsh";
source "/home/jjnich/.antigen/bundles/robbyrussell/oh-my-zsh/lib/clipboard.zsh";
source "/home/jjnich/.antigen/bundles/robbyrussell/oh-my-zsh/lib/compfix.zsh";
source "/home/jjnich/.antigen/bundles/robbyrussell/oh-my-zsh/lib/completion.zsh";
source "/home/jjnich/.antigen/bundles/robbyrussell/oh-my-zsh/lib/correction.zsh";
source "/home/jjnich/.antigen/bundles/robbyrussell/oh-my-zsh/lib/diagnostics.zsh";
source "/home/jjnich/.antigen/bundles/robbyrussell/oh-my-zsh/lib/directories.zsh";
source "/home/jjnich/.antigen/bundles/robbyrussell/oh-my-zsh/lib/functions.zsh";
source "/home/jjnich/.antigen/bundles/robbyrussell/oh-my-zsh/lib/git.zsh";
source "/home/jjnich/.antigen/bundles/robbyrussell/oh-my-zsh/lib/grep.zsh";
source "/home/jjnich/.antigen/bundles/robbyrussell/oh-my-zsh/lib/history.zsh";
source "/home/jjnich/.antigen/bundles/robbyrussell/oh-my-zsh/lib/key-bindings.zsh";
source "/home/jjnich/.antigen/bundles/robbyrussell/oh-my-zsh/lib/misc.zsh";
source "/home/jjnich/.antigen/bundles/robbyrussell/oh-my-zsh/lib/nvm.zsh";
source "/home/jjnich/.antigen/bundles/robbyrussell/oh-my-zsh/lib/prompt_info_functions.zsh";
source "/home/jjnich/.antigen/bundles/robbyrussell/oh-my-zsh/lib/spectrum.zsh";
source "/home/jjnich/.antigen/bundles/robbyrussell/oh-my-zsh/lib/termsupport.zsh";
source "/home/jjnich/.antigen/bundles/robbyrussell/oh-my-zsh/lib/theme-and-appearance.zsh";
source "/home/jjnich/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/git/git.plugin.zsh";
source "/home/jjnich/.antigen/bundles/robbyrussell/oh-my-zsh/themes/agnoster.zsh-theme.antigen-compat";
typeset -aU _ANTIGEN_BUNDLE_RECORD;      _ANTIGEN_BUNDLE_RECORD=('https://github.com/zsh-users/zsh-syntax-highlighting.git / plugin true' 'https://github.com/zsh-users/zsh-history-substring-search.git / plugin true' 'https://github.com/robbyrussell/oh-my-zsh.git lib plugin true' 'https://github.com/robbyrussell/oh-my-zsh.git plugins/git plugin true' 'https://github.com/robbyrussell/oh-my-zsh.git themes/agnoster.zsh-theme theme true')
_ANTIGEN_CACHE_LOADED=true ANTIGEN_CACHE_VERSION='v2.0.2'
#-- END ZCACHE GENERATED FILE

