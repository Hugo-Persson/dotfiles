Time	Sum	Command
1020	994383	> builtin source /opt/homebrew/Cellar/fish/4.0.2/share/fish/config.fish
24	24	-> set -g IFS \n\ \t
2	2	-> set -qg __fish_added_user_paths
3	3	-> set -g __fish_added_user_paths
12	12	-> function __fish_default_command_not_found_handler...
2	6	-> if not status --is-interactive...
4	4	--> not status --is-interactive
3	3	-> set -l __extra_completionsdir
2	2	-> set -l __extra_functionsdir
3	3	-> set -l __extra_confdir
5	518	-> if test -f $__fish_data_dir/__fish_build_paths.fish...
23	23	--> test -f $__fish_data_dir/__fish_build_paths.fish
467	490	--> source $__fish_data_dir/__fish_build_paths.fish
12	12	---> set __extra_completionsdir /opt/homebrew/share/fish/vendor_completions.d
4	4	---> set __extra_functionsdir /opt/homebrew/share/fish/vendor_functions.d
7	7	---> set __extra_confdir /opt/homebrew/share/fish/vendor_conf.d
4	4	-> set -l xdg_data_dirs
4	13	-> if set -q XDG_DATA_DIRS...
3	3	--> set -q XDG_DATA_DIRS
6	6	--> set xdg_data_dirs $__fish_data_dir
3	3	-> set -g __fish_vendor_completionsdirs
3	3	-> set -g __fish_vendor_functionsdirs
3	3	-> set -g __fish_vendor_confdirs
9	84	-> if not set -q FISH_UNIT_TESTS_RUNNING...
3	3	--> not set -q FISH_UNIT_TESTS_RUNNING
9	9	--> set __fish_vendor_completionsdirs $__fish_user_data_dir/vendor_completions.d $xdg_data_dirs/vendor_completions.d
7	7	--> set __fish_vendor_functionsdirs $__fish_user_data_dir/vendor_functions.d $xdg_data_dirs/vendor_functions.d
7	7	--> set __fish_vendor_confdirs $__fish_user_data_dir/vendor_conf.d $xdg_data_dirs/vendor_conf.d
4	23	--> if not contains -- $__extra_completionsdir $__fish_vendor_completionsdirs...
13	13	---> not contains -- $__extra_completionsdir $__fish_vendor_completionsdirs
6	6	---> set -a __fish_vendor_completionsdirs $__extra_completionsdir
3	14	--> if not contains -- $__extra_functionsdir $__fish_vendor_functionsdirs...
6	6	---> not contains -- $__extra_functionsdir $__fish_vendor_functionsdirs
5	5	---> set -a __fish_vendor_functionsdirs $__extra_functionsdir
3	12	--> if not contains -- $__extra_confdir $__fish_vendor_confdirs...
5	5	---> not contains -- $__extra_confdir $__fish_vendor_confdirs
4	4	---> set -a __fish_vendor_confdirs $__extra_confdir
4	18	-> if not set -q fish_function_path...
2	2	--> not set -q fish_function_path
12	12	--> set fish_function_path $__fish_config_dir/functions $__fish_sysconf_dir/functions $__fish_vendor_functionsdirs $__fish_data_dir/functions
3	38	-> if not set -q fish_complete_path...
2	2	--> not set -q fish_complete_path
33	33	--> set fish_complete_path $__fish_config_dir/completions $__fish_sysconf_dir/completions $__fish_vendor_completionsdirs $__fish_data_dir/completions $__fish_cache_dir/generated_completions
7	7	-> function __fish_reconstruct_path -d "Update PATH when fish_user_paths changes" --on-variable fish_user_paths...
6	6	-> function fish_sigtrap_handler --on-signal TRAP --no-scope-shadowing --description "TRAP handler: debug prompt"...
3	3	-> function __fish_on_interactive --on-event fish_prompt --on-event fish_read...
3	3	-> not set -q LANG
1	4	-> if status --is-login...
3	3	--> status --is-login
25	7746	-> __fish_reconstruct_path
3	3	--> set -l new_user_path
260	528	--> for path in (string split : -- $fish_user_paths)...
59	59	---> string split : -- $fish_user_paths
4	57	---> if not contains -- $path $new_user_path...
48	48	----> not contains -- $path $new_user_path
5	5	----> set -a new_user_path $path
2	11	---> if not contains -- $path $new_user_path...
5	5	----> not contains -- $path $new_user_path
4	4	----> set -a new_user_path $path
2	10	---> if not contains -- $path $new_user_path...
4	4	----> not contains -- $path $new_user_path
4	4	----> set -a new_user_path $path
4	12	---> if not contains -- $path $new_user_path...
4	4	----> not contains -- $path $new_user_path
4	4	----> set -a new_user_path $path
2	11	---> if not contains -- $path $new_user_path...
5	5	----> not contains -- $path $new_user_path
4	4	----> set -a new_user_path $path
2	13	---> if not contains -- $path $new_user_path...
7	7	----> not contains -- $path $new_user_path
4	4	----> set -a new_user_path $path
3	14	---> if not contains -- $path $new_user_path...
7	7	----> not contains -- $path $new_user_path
4	4	----> set -a new_user_path $path
3	17	---> if not contains -- $path $new_user_path...
10	10	----> not contains -- $path $new_user_path
4	4	----> set -a new_user_path $path
3	14	---> if not contains -- $path $new_user_path...
7	7	----> not contains -- $path $new_user_path
4	4	----> set -a new_user_path $path
3	17	---> if not contains -- $path $new_user_path...
9	9	----> not contains -- $path $new_user_path
5	5	----> set -a new_user_path $path
3	16	---> if not contains -- $path $new_user_path...
9	9	----> not contains -- $path $new_user_path
4	4	----> set -a new_user_path $path
2	17	---> if not contains -- $path $new_user_path...
10	10	----> not contains -- $path $new_user_path
5	5	----> set -a new_user_path $path
1	116	--> if test (count $new_user_path) -lt (count $fish_user_paths)...
77	115	---> test (count $new_user_path) -lt (count $fish_user_paths)
28	28	----> count $new_user_path
10	10	----> count $fish_user_paths
25	25	--> set -l local_path $PATH
3	3	--> for x in $__fish_added_user_paths...
3	3	--> set -g __fish_added_user_paths
11	7008	--> if set -q fish_user_paths...
2	2	---> set -q fish_user_paths
834	6995	---> for x in (string split ":" -- $fish_user_paths[-1..1])...
31	31	----> string split ":" -- $fish_user_paths[-1..1]
17	4778	----> if set -l idx (contains --index -- $x $local_path)...
4709	4741	-----> set -l idx (contains --index -- $x $local_path)
32	32	------> contains --index -- $x $local_path
20	20	-----> set -e local_path[$idx]
10	10	----> set -p local_path $x
13	407	----> if set -l idx (contains --index -- $x $local_path)...
343	374	-----> set -l idx (contains --index -- $x $local_path)
31	31	------> contains --index -- $x $local_path
20	20	-----> set -e local_path[$idx]
11	11	----> set -p local_path $x
4	109	----> if set -l idx (contains --index -- $x $local_path)...
68	97	-----> set -l idx (contains --index -- $x $local_path)
29	29	------> contains --index -- $x $local_path
8	8	-----> set -e local_path[$idx]
8	8	----> set -p local_path $x
3	79	----> if set -l idx (contains --index -- $x $local_path)...
43	66	-----> set -l idx (contains --index -- $x $local_path)
23	23	------> contains --index -- $x $local_path
10	10	-----> set -e local_path[$idx]
9	9	----> set -p local_path $x
3	77	----> if set -l idx (contains --index -- $x $local_path)...
42	66	-----> set -l idx (contains --index -- $x $local_path)
24	24	------> contains --index -- $x $local_path
8	8	-----> set -e local_path[$idx]
7	7	----> set -p local_path $x
9	78	----> if set -l idx (contains --index -- $x $local_path)...
37	60	-----> set -l idx (contains --index -- $x $local_path)
23	23	------> contains --index -- $x $local_path
9	9	-----> set -e local_path[$idx]
8	8	----> set -p local_path $x
6	91	----> if set -l idx (contains --index -- $x $local_path)...
47	70	-----> set -l idx (contains --index -- $x $local_path)
23	23	------> contains --index -- $x $local_path
15	15	-----> set -e local_path[$idx]
17	17	----> set -p local_path $x
5	89	----> if set -l idx (contains --index -- $x $local_path)...
49	76	-----> set -l idx (contains --index -- $x $local_path)
27	27	------> contains --index -- $x $local_path
8	8	-----> set -e local_path[$idx]
8	8	----> set -p local_path $x
6	83	----> if set -l idx (contains --index -- $x $local_path)...
40	63	-----> set -l idx (contains --index -- $x $local_path)
23	23	------> contains --index -- $x $local_path
14	14	-----> set -e local_path[$idx]
11	11	----> set -p local_path $x
3	80	----> if set -l idx (contains --index -- $x $local_path)...
42	68	-----> set -l idx (contains --index -- $x $local_path)
26	26	------> contains --index -- $x $local_path
9	9	-----> set -e local_path[$idx]
7	7	----> set -p local_path $x
3	71	----> if set -l idx (contains --index -- $x $local_path)...
37	60	-----> set -l idx (contains --index -- $x $local_path)
23	23	------> contains --index -- $x $local_path
8	8	-----> set -e local_path[$idx]
8	8	----> set -p local_path $x
4	76	----> if set -l idx (contains --index -- $x $local_path)...
38	61	-----> set -l idx (contains --index -- $x $local_path)
23	23	------> contains --index -- $x $local_path
11	11	-----> set -e local_path[$idx]
8	8	----> set -p local_path $x
35	35	--> set -xg PATH $local_path
5	5	-> function __fish_expand_pid_args...
13	25	-> for jobbltn in bg wait disown...
4	4	--> function $jobbltn -V jobbltn...
3	3	--> function $jobbltn -V jobbltn...
5	5	--> function $jobbltn -V jobbltn...
1	1	-> function fg...
14	580	-> if command -q kill...
561	561	--> command -q kill
5	5	--> function kill...
10	10	-> set -l sourcelist
1408	984234	-> for file in $__fish_config_dir/conf.d/*.fish $__fish_sysconf_dir/conf.d/*.fish $__fish_vendor_confdirs/*.fish...
71	127	--> set -l basename (string replace -r '^.*/' '' -- $file)
56	56	---> string replace -r '^.*/' '' -- $file
9	9	--> contains -- $basename $sourcelist
5	5	--> set sourcelist $sourcelist $basename
51	51	--> test -f $file -a -r $file
475	71416	--> source $file
8	26493	---> if test (uname) = Linux...
95	1753	----> test (uname) = Linux
1658	1658	-----> uname
171	24732	----> eval "$(/opt/homebrew/bin/brew shellenv)"
22934	22934	-----> /opt/homebrew/bin/brew shellenv
21	21	-----> set --global --export HOMEBREW_PREFIX "/opt/homebrew"
4	4	-----> set --global --export HOMEBREW_CELLAR "/opt/homebrew/Cellar"
3	3	-----> set --global --export HOMEBREW_REPOSITORY "/opt/homebrew"
103	1591	-----> fish_add_path --global --move --path "/opt/homebrew/bin" "/opt/homebrew/sbin"
526	542	------> source /opt/homebrew/Cellar/fish/4.0.2/share/fish/functions/fish_add_path.fish
16	16	-------> function fish_add_path --description "Add paths to the PATH"...
32	32	------> argparse -x g,U -x P,U -x a,p g/global U/universal P/path p/prepend a/append h/help m/move v/verbose n/dry-run -- $argv
9	31	------> if set -q _flag_help...
22	22	-------> set -q _flag_help
28	28	------> set -l scope $_flag_global $_flag_universal
1	4	------> if not set -q scope[1]...
3	3	-------> not set -q scope[1]
2	2	------> set -l var fish_user_paths
1	1	------> set -q _flag_path
1	1	------> set var PATH
1	1	------> set scope -g
10	10	------> set -l mode $_flag_prepend $_flag_append
1	1	------> set -q mode[1]
1	1	------> set mode -p
152	152	------> status current-command | string match -rq '^fish_add_path$'
31	31	------> set -l newpaths
2	2	------> set -l indexes
37	459	------> for path in $argv...
56	90	-------> set -l p (builtin realpath -s -- $path 2>/dev/null)
34	34	--------> builtin realpath -s -- $path 2>/dev/null
2	11	-------> if not test -d "$p"...
9	9	--------> not test -d "$p"
4	82	-------> if set -l ind (contains -i -- $p $$var)...
48	66	--------> set -l ind (contains -i -- $p $$var)
18	18	---------> contains -i -- $p $$var
3	12	--------> if set -q _flag_move...
1	1	---------> set -q _flag_move
3	3	---------> not contains -- $p $newpaths
3	3	---------> set -a indexes $ind
2	2	---------> set -a newpaths $p
31	65	-------> set -l p (builtin realpath -s -- $path 2>/dev/null)
34	34	--------> builtin realpath -s -- $path 2>/dev/null
0	6	-------> if not test -d "$p"...
6	6	--------> not test -d "$p"
29	168	-------> if set -l ind (contains -i -- $p $$var)...
51	67	--------> set -l ind (contains -i -- $p $$var)
16	16	---------> contains -i -- $p $$var
23	72	--------> if set -q _flag_move...
6	6	---------> set -q _flag_move
30	30	---------> not contains -- $p $newpaths
6	6	---------> set -a indexes $ind
7	7	---------> set -a newpaths $p
86	86	------> set -l newvar $$var
4	33	------> if set -q _flag_move...
20	20	-------> set -q _flag_move
2	2	-------> set -q indexes[1]
7	7	-------> set -e newvar["$indexes"]
8	8	------> set $mode newvar $newpaths
5	63	------> if set -q newpaths[1]...
1	1	-------> set -q newpaths[1]
2	3	-------> if set -q _flag_verbose...
1	1	--------> set -q _flag_verbose
0	0	--------> set -q _flag_n
1	1	-------> not set -q _flag_n
51	51	-------> set $scope $var $newvar
2	2	-------> return 0
0	4	-----> if test -n "$MANPATH[1]"...
4	4	------> test -n "$MANPATH[1]"
0	4	-----> if not contains "/opt/homebrew/share/info" $INFOPATH...
4	4	------> not contains "/opt/homebrew/share/info" $INFOPATH
654	6271	---> source ~/.config/fish/aliases.fish
4	4	----> set -gx LDFLAGS -L/opt/homebrew/opt/curl/lib
1	1	----> set -gx CPPFLAGS -I/opt/homebrew/opt/curl/include
2	2	----> set -gx PKG_CONFIG_PATH /opt/homebrew/opt/curl/lib/pkgconfig
2	2	----> function vim...
1	1	----> function nvim...
0	0	----> function neovide...
40	855	----> alias template="template.sh"
549	555	-----> source /opt/homebrew/Cellar/fish/4.0.2/share/fish/functions/alias.fish
6	6	------> function alias --description 'Creates a function wrapping a command'...
3	3	-----> set -l options h/help s/save
7	7	-----> argparse -n alias --max-args=2 $options -- $argv
1	2	-----> if set -q _flag_help...
1	1	------> set -q _flag_help
1	1	-----> set -l name
1	1	-----> set -l body
1	1	-----> set -l prefix
5	51	-----> if not set -q argv[1]...
1	1	------> not set -q argv[1]
0	0	------> not set -q argv[2]
35	41	------> set -l tmp (string split -m 1 "=" -- $argv) ""
6	6	-------> string split -m 1 "=" -- $argv
3	3	------> set name $tmp[1]
1	1	------> set body $tmp[2]
0	5	-----> if test -z "$name"...
3	3	------> test -z "$name"
2	2	------> test -z "$body"
57	57	-----> printf '%s\n' $body | read -l --list words
4	4	-----> set -l first_word $words[1]
2	2	-----> set -l last_word $words[-1]
1	4	-----> if test $first_word = $name...
3	3	------> test $first_word = $name
43	49	-----> set -l cmd_string (string escape -- "alias $argv")
6	6	------> string escape -- "alias $argv"
2	2	-----> set -l wraps
1	28	-----> if test $first_word != $name...
3	3	------> test $first_word != $name
2	2	------> test $last_word != $name
19	22	------> set wraps --wraps (string escape -- $body)
3	3	-------> string escape -- $body
38	42	-----> echo "function $name $wraps --description $cmd_string; $prefix $body \$argv
        end" | source
4	4	------> function template --wraps template.sh --description 'alias template=template.sh'...
0	1	-----> if set -q _flag_save...
1	1	------> set -q _flag_save
14	159	----> alias ld="lazydocker"
2	2	-----> set -l options h/help s/save
4	4	-----> argparse -n alias --max-args=2 $options -- $argv
0	1	-----> if set -q _flag_help...
1	1	------> set -q _flag_help
1	1	-----> set -l name
1	1	-----> set -l body
1	1	-----> set -l prefix
3	36	-----> if not set -q argv[1]...
1	1	------> not set -q argv[1]
1	1	------> not set -q argv[2]
24	27	------> set -l tmp (string split -m 1 "=" -- $argv) ""
3	3	-------> string split -m 1 "=" -- $argv
2	2	------> set name $tmp[1]
2	2	------> set body $tmp[2]
0	4	-----> if test -z "$name"...
2	2	------> test -z "$name"
2	2	------> test -z "$body"
14	14	-----> printf '%s\n' $body | read -l --list words
2	2	-----> set -l first_word $words[1]
2	2	-----> set -l last_word $words[-1]
0	2	-----> if test $first_word = $name...
2	2	------> test $first_word = $name
22	25	-----> set -l cmd_string (string escape -- "alias $argv")
3	3	------> string escape -- "alias $argv"
2	2	-----> set -l wraps
2	22	-----> if test $first_word != $name...
2	2	------> test $first_word != $name
2	2	------> test $last_word != $name
14	16	------> set wraps --wraps (string escape -- $body)
2	2	-------> string escape -- $body
22	24	-----> echo "function $name $wraps --description $cmd_string; $prefix $body \$argv
        end" | source
2	2	------> function ld --wraps lazydocker --description 'alias ld=lazydocker'...
1	2	-----> if set -q _flag_save...
1	1	------> set -q _flag_save
21	551	----> export EDITOR=nvim
376	378	-----> source /opt/homebrew/Cellar/fish/4.0.2/share/fish/functions/export.fish
2	2	------> function export --description 'Set env variable. Alias for `set -gx` for bash compatibility.'...
0	1	-----> if not set -q argv[1]...
1	1	------> not set -q argv[1]
6	151	-----> for arg in $argv...
90	93	------> set -l v (string split -m 1 "=" -- $arg)
3	3	-------> string split -m 1 "=" -- $arg
24	52	------> switch (count $v)...
5	5	-------> count $v
2	23	-------> if contains -- $v[1] PATH CDPATH MANPATH...
4	4	--------> contains -- $v[1] PATH CDPATH MANPATH
14	14	--------> true
3	3	--------> set -gx $v[1] $v[2]
6	72	----> export XDG_CONFIG_HOME="$HOME/.config"
0	2	-----> if not set -q argv[1]...
2	2	------> not set -q argv[1]
6	64	-----> for arg in $argv...
28	32	------> set -l v (string split -m 1 "=" -- $arg)
4	4	-------> string split -m 1 "=" -- $arg
15	26	------> switch (count $v)...
3	3	-------> count $v
3	8	-------> if contains -- $v[1] PATH CDPATH MANPATH...
2	2	--------> contains -- $v[1] PATH CDPATH MANPATH
0	0	--------> true
3	3	--------> set -gx $v[1] $v[2]
12	169	----> alias gu=gitui
2	2	-----> set -l options h/help s/save
5	5	-----> argparse -n alias --max-args=2 $options -- $argv
1	2	-----> if set -q _flag_help...
1	1	------> set -q _flag_help
1	1	-----> set -l name
2	2	-----> set -l body
1	1	-----> set -l prefix
5	36	-----> if not set -q argv[1]...
0	0	------> not set -q argv[1]
0	0	------> not set -q argv[2]
24	27	------> set -l tmp (string split -m 1 "=" -- $argv) ""
3	3	-------> string split -m 1 "=" -- $argv
2	2	------> set name $tmp[1]
2	2	------> set body $tmp[2]
1	4	-----> if test -z "$name"...
2	2	------> test -z "$name"
1	1	------> test -z "$body"
19	19	-----> printf '%s\n' $body | read -l --list words
2	2	-----> set -l first_word $words[1]
2	2	-----> set -l last_word $words[-1]
1	3	-----> if test $first_word = $name...
2	2	------> test $first_word = $name
15	18	-----> set -l cmd_string (string escape -- "alias $argv")
3	3	------> string escape -- "alias $argv"
1	1	-----> set -l wraps
3	22	-----> if test $first_word != $name...
2	2	------> test $first_word != $name
1	1	------> test $last_word != $name
14	16	------> set wraps --wraps (string escape -- $body)
2	2	-------> string escape -- $body
33	36	-----> echo "function $name $wraps --description $cmd_string; $prefix $body \$argv
        end" | source
3	3	------> function gu --wraps gitui --description 'alias gu=gitui'...
0	1	-----> if set -q _flag_save...
1	1	------> set -q _flag_save
17	142	----> alias lg=lazygit
1	1	-----> set -l options h/help s/save
4	4	-----> argparse -n alias --max-args=2 $options -- $argv
0	1	-----> if set -q _flag_help...
1	1	------> set -q _flag_help
1	1	-----> set -l name
1	1	-----> set -l body
1	1	-----> set -l prefix
2	26	-----> if not set -q argv[1]...
1	1	------> not set -q argv[1]
1	1	------> not set -q argv[2]
16	18	------> set -l tmp (string split -m 1 "=" -- $argv) ""
2	2	-------> string split -m 1 "=" -- $argv
2	2	------> set name $tmp[1]
2	2	------> set body $tmp[2]
1	3	-----> if test -z "$name"...
1	1	------> test -z "$name"
1	1	------> test -z "$body"
13	13	-----> printf '%s\n' $body | read -l --list words
2	2	-----> set -l first_word $words[1]
2	2	-----> set -l last_word $words[-1]
0	2	-----> if test $first_word = $name...
2	2	------> test $first_word = $name
21	24	-----> set -l cmd_string (string escape -- "alias $argv")
3	3	------> string escape -- "alias $argv"
1	1	-----> set -l wraps
2	19	-----> if test $first_word != $name...
1	1	------> test $first_word != $name
1	1	------> test $last_word != $name
13	15	------> set wraps --wraps (string escape -- $body)
2	2	-------> string escape -- $body
21	23	-----> echo "function $name $wraps --description $cmd_string; $prefix $body \$argv
        end" | source
2	2	------> function lg --wraps lazygit --description 'alias lg=lazygit'...
0	1	-----> if set -q _flag_save...
1	1	------> set -q _flag_save
15	165	----> alias ls="eza --icons"
2	2	-----> set -l options h/help s/save
3	3	-----> argparse -n alias --max-args=2 $options -- $argv
0	1	-----> if set -q _flag_help...
1	1	------> set -q _flag_help
1	1	-----> set -l name
1	1	-----> set -l body
1	1	-----> set -l prefix
6	33	-----> if not set -q argv[1]...
1	1	------> not set -q argv[1]
0	0	------> not set -q argv[2]
21	24	------> set -l tmp (string split -m 1 "=" -- $argv) ""
3	3	-------> string split -m 1 "=" -- $argv
1	1	------> set name $tmp[1]
1	1	------> set body $tmp[2]
0	4	-----> if test -z "$name"...
2	2	------> test -z "$name"
2	2	------> test -z "$body"
12	12	-----> printf '%s\n' $body | read -l --list words
2	2	-----> set -l first_word $words[1]
2	2	-----> set -l last_word $words[-1]
1	2	-----> if test $first_word = $name...
1	1	------> test $first_word = $name
21	25	-----> set -l cmd_string (string escape -- "alias $argv")
4	4	------> string escape -- "alias $argv"
1	1	-----> set -l wraps
3	22	-----> if test $first_word != $name...
1	1	------> test $first_word != $name
1	1	------> test $last_word != $name
15	17	------> set wraps --wraps (string escape -- $body)
2	2	-------> string escape -- $body
35	37	-----> echo "function $name $wraps --description $cmd_string; $prefix $body \$argv
        end" | source
2	2	------> function ls --wraps 'eza --icons' --description 'alias ls=eza --icons'...
0	1	-----> if set -q _flag_save...
1	1	------> set -q _flag_save
8	170	----> alias l="eza --icons"
2	2	-----> set -l options h/help s/save
3	3	-----> argparse -n alias --max-args=2 $options -- $argv
1	1	-----> if set -q _flag_help...
0	0	------> set -q _flag_help
1	1	-----> set -l name
1	1	-----> set -l body
1	1	-----> set -l prefix
5	38	-----> if not set -q argv[1]...
1	1	------> not set -q argv[1]
1	1	------> not set -q argv[2]
27	29	------> set -l tmp (string split -m 1 "=" -- $argv) ""
2	2	-------> string split -m 1 "=" -- $argv
1	1	------> set name $tmp[1]
1	1	------> set body $tmp[2]
1	4	-----> if test -z "$name"...
2	2	------> test -z "$name"
1	1	------> test -z "$body"
24	24	-----> printf '%s\n' $body | read -l --list words
2	2	-----> set -l first_word $words[1]
2	2	-----> set -l last_word $words[-1]
0	2	-----> if test $first_word = $name...
2	2	------> test $first_word = $name
23	25	-----> set -l cmd_string (string escape -- "alias $argv")
2	2	------> string escape -- "alias $argv"
1	1	-----> set -l wraps
2	29	-----> if test $first_word != $name...
2	2	------> test $first_word != $name
2	2	------> test $last_word != $name
22	23	------> set wraps --wraps (string escape -- $body)
1	1	-------> string escape -- $body
22	24	-----> echo "function $name $wraps --description $cmd_string; $prefix $body \$argv
        end" | source
2	2	------> function l --wraps 'eza --icons' --description 'alias l=eza --icons'...
1	2	-----> if set -q _flag_save...
1	1	------> set -q _flag_save
13	174	----> alias ls="eza --icons"
1	1	-----> set -l options h/help s/save
3	3	-----> argparse -n alias --max-args=2 $options -- $argv
0	1	-----> if set -q _flag_help...
1	1	------> set -q _flag_help
1	1	-----> set -l name
1	1	-----> set -l body
1	1	-----> set -l prefix
4	44	-----> if not set -q argv[1]...
1	1	------> not set -q argv[1]
1	1	------> not set -q argv[2]
31	35	------> set -l tmp (string split -m 1 "=" -- $argv) ""
4	4	-------> string split -m 1 "=" -- $argv
2	2	------> set name $tmp[1]
1	1	------> set body $tmp[2]
1	3	-----> if test -z "$name"...
1	1	------> test -z "$name"
1	1	------> test -z "$body"
22	22	-----> printf '%s\n' $body | read -l --list words
2	2	-----> set -l first_word $words[1]
2	2	-----> set -l last_word $words[-1]
0	2	-----> if test $first_word = $name...
2	2	------> test $first_word = $name
29	31	-----> set -l cmd_string (string escape -- "alias $argv")
2	2	------> string escape -- "alias $argv"
1	1	-----> set -l wraps
2	21	-----> if test $first_word != $name...
2	2	------> test $first_word != $name
2	2	------> test $last_word != $name
13	15	------> set wraps --wraps (string escape -- $body)
2	2	-------> string escape -- $body
20	23	-----> echo "function $name $wraps --description $cmd_string; $prefix $body \$argv
        end" | source
3	3	------> function ls --wraps 'eza --icons' --description 'alias ls=eza --icons'...
1	2	-----> if set -q _flag_save...
1	1	------> set -q _flag_save
14	147	----> alias ll="eza -lg --icons"
1	1	-----> set -l options h/help s/save
3	3	-----> argparse -n alias --max-args=2 $options -- $argv
1	1	-----> if set -q _flag_help...
0	0	------> set -q _flag_help
1	1	-----> set -l name
1	1	-----> set -l body
1	1	-----> set -l prefix
2	34	-----> if not set -q argv[1]...
1	1	------> not set -q argv[1]
1	1	------> not set -q argv[2]
24	26	------> set -l tmp (string split -m 1 "=" -- $argv) ""
2	2	-------> string split -m 1 "=" -- $argv
2	2	------> set name $tmp[1]
2	2	------> set body $tmp[2]
1	3	-----> if test -z "$name"...
1	1	------> test -z "$name"
1	1	------> test -z "$body"
11	11	-----> printf '%s\n' $body | read -l --list words
2	2	-----> set -l first_word $words[1]
2	2	-----> set -l last_word $words[-1]
0	2	-----> if test $first_word = $name...
2	2	------> test $first_word = $name
11	14	-----> set -l cmd_string (string escape -- "alias $argv")
3	3	------> string escape -- "alias $argv"
1	1	-----> set -l wraps
2	26	-----> if test $first_word != $name...
1	1	------> test $first_word != $name
1	1	------> test $last_word != $name
20	22	------> set wraps --wraps (string escape -- $body)
2	2	-------> string escape -- $body
27	29	-----> echo "function $name $wraps --description $cmd_string; $prefix $body \$argv
        end" | source
2	2	------> function ll --wraps 'eza -lg --icons' --description 'alias ll=eza -lg --icons'...
0	1	-----> if set -q _flag_save...
1	1	------> set -q _flag_save
13	178	----> alias la="eza -lag --icons"
2	2	-----> set -l options h/help s/save
3	3	-----> argparse -n alias --max-args=2 $options -- $argv
0	1	-----> if set -q _flag_help...
1	1	------> set -q _flag_help
1	1	-----> set -l name
1	1	-----> set -l body
1	1	-----> set -l prefix
3	30	-----> if not set -q argv[1]...
0	0	------> not set -q argv[1]
0	0	------> not set -q argv[2]
20	23	------> set -l tmp (string split -m 1 "=" -- $argv) ""
3	3	-------> string split -m 1 "=" -- $argv
2	2	------> set name $tmp[1]
2	2	------> set body $tmp[2]
0	3	-----> if test -z "$name"...
1	1	------> test -z "$name"
2	2	------> test -z "$body"
34	34	-----> printf '%s\n' $body | read -l --list words
5	5	-----> set -l first_word $words[1]
4	4	-----> set -l last_word $words[-1]
0	3	-----> if test $first_word = $name...
3	3	------> test $first_word = $name
20	24	-----> set -l cmd_string (string escape -- "alias $argv")
4	4	------> string escape -- "alias $argv"
1	1	-----> set -l wraps
3	27	-----> if test $first_word != $name...
2	2	------> test $first_word != $name
2	2	------> test $last_word != $name
17	20	------> set wraps --wraps (string escape -- $body)
3	3	-------> string escape -- $body
21	23	-----> echo "function $name $wraps --description $cmd_string; $prefix $body \$argv
        end" | source
2	2	------> function la --wraps 'eza -lag --icons' --description 'alias la=eza -lag --icons'...
1	2	-----> if set -q _flag_save...
1	1	------> set -q _flag_save
17	222	----> alias lt="eza -lTg --icons"
1	1	-----> set -l options h/help s/save
2	2	-----> argparse -n alias --max-args=2 $options -- $argv
0	1	-----> if set -q _flag_help...
1	1	------> set -q _flag_help
1	1	-----> set -l name
1	1	-----> set -l body
1	1	-----> set -l prefix
5	37	-----> if not set -q argv[1]...
1	1	------> not set -q argv[1]
1	1	------> not set -q argv[2]
25	27	------> set -l tmp (string split -m 1 "=" -- $argv) ""
2	2	-------> string split -m 1 "=" -- $argv
2	2	------> set name $tmp[1]
1	1	------> set body $tmp[2]
2	5	-----> if test -z "$name"...
2	2	------> test -z "$name"
1	1	------> test -z "$body"
28	28	-----> printf '%s\n' $body | read -l --list words
3	3	-----> set -l first_word $words[1]
2	2	-----> set -l last_word $words[-1]
0	2	-----> if test $first_word = $name...
2	2	------> test $first_word = $name
57	59	-----> set -l cmd_string (string escape -- "alias $argv")
2	2	------> string escape -- "alias $argv"
1	1	-----> set -l wraps
3	25	-----> if test $first_word != $name...
1	1	------> test $first_word != $name
1	1	------> test $last_word != $name
18	20	------> set wraps --wraps (string escape -- $body)
2	2	-------> string escape -- $body
30	34	-----> echo "function $name $wraps --description $cmd_string; $prefix $body \$argv
        end" | source
4	4	------> function lt --wraps 'eza -lTg --icons' --description 'alias lt=eza -lTg --icons'...
0	2	-----> if set -q _flag_save...
2	2	------> set -q _flag_save
14	251	----> alias lt1="eza -lTg --level=1 --icons"
1	1	-----> set -l options h/help s/save
5	5	-----> argparse -n alias --max-args=2 $options -- $argv
1	2	-----> if set -q _flag_help...
1	1	------> set -q _flag_help
1	1	-----> set -l name
1	1	-----> set -l body
1	1	-----> set -l prefix
5	93	-----> if not set -q argv[1]...
2	2	------> not set -q argv[1]
1	1	------> not set -q argv[2]
77	80	------> set -l tmp (string split -m 1 "=" -- $argv) ""
3	3	-------> string split -m 1 "=" -- $argv
3	3	------> set name $tmp[1]
2	2	------> set body $tmp[2]
1	5	-----> if test -z "$name"...
2	2	------> test -z "$name"
2	2	------> test -z "$body"
15	15	-----> printf '%s\n' $body | read -l --list words
2	2	-----> set -l first_word $words[1]
2	2	-----> set -l last_word $words[-1]
2	3	-----> if test $first_word = $name...
1	1	------> test $first_word = $name
48	50	-----> set -l cmd_string (string escape -- "alias $argv")
2	2	------> string escape -- "alias $argv"
1	1	-----> set -l wraps
2	24	-----> if test $first_word != $name...
2	2	------> test $first_word != $name
2	2	------> test $last_word != $name
16	18	------> set wraps --wraps (string escape -- $body)
2	2	-------> string escape -- $body
27	30	-----> echo "function $name $wraps --description $cmd_string; $prefix $body \$argv
        end" | source
3	3	------> function lt1 --wraps 'eza -lTg --level=1 --icons' --description 'alias lt1=eza -lTg --level=1 --icons'...
0	1	-----> if set -q _flag_save...
1	1	------> set -q _flag_save
14	258	----> alias lt2="eza -lTg --level=2 --icons"
1	1	-----> set -l options h/help s/save
4	4	-----> argparse -n alias --max-args=2 $options -- $argv
1	2	-----> if set -q _flag_help...
1	1	------> set -q _flag_help
1	1	-----> set -l name
1	1	-----> set -l body
1	1	-----> set -l prefix
4	43	-----> if not set -q argv[1]...
1	1	------> not set -q argv[1]
1	1	------> not set -q argv[2]
30	33	------> set -l tmp (string split -m 1 "=" -- $argv) ""
3	3	-------> string split -m 1 "=" -- $argv
2	2	------> set name $tmp[1]
2	2	------> set body $tmp[2]
0	4	-----> if test -z "$name"...
2	2	------> test -z "$name"
2	2	------> test -z "$body"
45	45	-----> printf '%s\n' $body | read -l --list words
2	2	-----> set -l first_word $words[1]
2	2	-----> set -l last_word $words[-1]
0	2	-----> if test $first_word = $name...
2	2	------> test $first_word = $name
25	28	-----> set -l cmd_string (string escape -- "alias $argv")
3	3	------> string escape -- "alias $argv"
2	2	-----> set -l wraps
2	39	-----> if test $first_word != $name...
2	2	------> test $first_word != $name
2	2	------> test $last_word != $name
31	33	------> set wraps --wraps (string escape -- $body)
2	2	-------> string escape -- $body
63	66	-----> echo "function $name $wraps --description $cmd_string; $prefix $body \$argv
        end" | source
3	3	------> function lt2 --wraps 'eza -lTg --level=2 --icons' --description 'alias lt2=eza -lTg --level=2 --icons'...
0	1	-----> if set -q _flag_save...
1	1	------> set -q _flag_save
9	186	----> alias lt3="eza -lTg --level=3 --icons"
2	2	-----> set -l options h/help s/save
5	5	-----> argparse -n alias --max-args=2 $options -- $argv
1	1	-----> if set -q _flag_help...
0	0	------> set -q _flag_help
1	1	-----> set -l name
1	1	-----> set -l body
1	1	-----> set -l prefix
3	36	-----> if not set -q argv[1]...
1	1	------> not set -q argv[1]
0	0	------> not set -q argv[2]
25	28	------> set -l tmp (string split -m 1 "=" -- $argv) ""
3	3	-------> string split -m 1 "=" -- $argv
2	2	------> set name $tmp[1]
2	2	------> set body $tmp[2]
2	4	-----> if test -z "$name"...
1	1	------> test -z "$name"
1	1	------> test -z "$body"
14	14	-----> printf '%s\n' $body | read -l --list words
2	2	-----> set -l first_word $words[1]
2	2	-----> set -l last_word $words[-1]
1	2	-----> if test $first_word = $name...
1	1	------> test $first_word = $name
24	27	-----> set -l cmd_string (string escape -- "alias $argv")
3	3	------> string escape -- "alias $argv"
1	1	-----> set -l wraps
2	40	-----> if test $first_word != $name...
1	1	------> test $first_word != $name
1	1	------> test $last_word != $name
34	36	------> set wraps --wraps (string escape -- $body)
2	2	-------> string escape -- $body
34	36	-----> echo "function $name $wraps --description $cmd_string; $prefix $body \$argv
        end" | source
2	2	------> function lt3 --wraps 'eza -lTg --level=3 --icons' --description 'alias lt3=eza -lTg --level=3 --icons'...
2	2	-----> if set -q _flag_save...
0	0	------> set -q _flag_save
13	183	----> alias lta="eza -lTag --icons"
1	1	-----> set -l options h/help s/save
3	3	-----> argparse -n alias --max-args=2 $options -- $argv
0	1	-----> if set -q _flag_help...
1	1	------> set -q _flag_help
1	1	-----> set -l name
1	1	-----> set -l body
1	1	-----> set -l prefix
5	32	-----> if not set -q argv[1]...
1	1	------> not set -q argv[1]
1	1	------> not set -q argv[2]
21	23	------> set -l tmp (string split -m 1 "=" -- $argv) ""
2	2	-------> string split -m 1 "=" -- $argv
1	1	------> set name $tmp[1]
1	1	------> set body $tmp[2]
0	4	-----> if test -z "$name"...
2	2	------> test -z "$name"
2	2	------> test -z "$body"
51	51	-----> printf '%s\n' $body | read -l --list words
3	3	-----> set -l first_word $words[1]
2	2	-----> set -l last_word $words[-1]
1	3	-----> if test $first_word = $name...
2	2	------> test $first_word = $name
16	19	-----> set -l cmd_string (string escape -- "alias $argv")
3	3	------> string escape -- "alias $argv"
1	1	-----> set -l wraps
2	23	-----> if test $first_word != $name...
2	2	------> test $first_word != $name
1	1	------> test $last_word != $name
16	18	------> set wraps --wraps (string escape -- $body)
2	2	-------> string escape -- $body
19	23	-----> echo "function $name $wraps --description $cmd_string; $prefix $body \$argv
        end" | source
4	4	------> function lta --wraps 'eza -lTag --icons' --description 'alias lta=eza -lTag --icons'...
0	1	-----> if set -q _flag_save...
1	1	------> set -q _flag_save
17	185	----> alias lta1="eza -lTag --level=1 --icons"
1	1	-----> set -l options h/help s/save
3	3	-----> argparse -n alias --max-args=2 $options -- $argv
0	1	-----> if set -q _flag_help...
1	1	------> set -q _flag_help
1	1	-----> set -l name
1	1	-----> set -l body
1	1	-----> set -l prefix
5	28	-----> if not set -q argv[1]...
0	0	------> not set -q argv[1]
1	1	------> not set -q argv[2]
17	19	------> set -l tmp (string split -m 1 "=" -- $argv) ""
2	2	-------> string split -m 1 "=" -- $argv
2	2	------> set name $tmp[1]
1	1	------> set body $tmp[2]
0	4	-----> if test -z "$name"...
2	2	------> test -z "$name"
2	2	------> test -z "$body"
21	21	-----> printf '%s\n' $body | read -l --list words
5	5	-----> set -l first_word $words[1]
3	3	-----> set -l last_word $words[-1]
1	4	-----> if test $first_word = $name...
3	3	------> test $first_word = $name
25	30	-----> set -l cmd_string (string escape -- "alias $argv")
5	5	------> string escape -- "alias $argv"
2	2	-----> set -l wraps
1	26	-----> if test $first_word != $name...
3	3	------> test $first_word != $name
2	2	------> test $last_word != $name
18	20	------> set wraps --wraps (string escape -- $body)
2	2	-------> string escape -- $body
31	35	-----> echo "function $name $wraps --description $cmd_string; $prefix $body \$argv
        end" | source
4	4	------> function lta1 --wraps 'eza -lTag --level=1 --icons' --description 'alias lta1=eza -lTag --level=1 --icons'...
0	2	-----> if set -q _flag_save...
2	2	------> set -q _flag_save
12	172	----> alias lta2="eza -lTag --level=2 --icons"
2	2	-----> set -l options h/help s/save
4	4	-----> argparse -n alias --max-args=2 $options -- $argv
1	2	-----> if set -q _flag_help...
1	1	------> set -q _flag_help
2	2	-----> set -l name
1	1	-----> set -l body
1	1	-----> set -l prefix
4	32	-----> if not set -q argv[1]...
1	1	------> not set -q argv[1]
1	1	------> not set -q argv[2]
18	22	------> set -l tmp (string split -m 1 "=" -- $argv) ""
4	4	-------> string split -m 1 "=" -- $argv
2	2	------> set name $tmp[1]
2	2	------> set body $tmp[2]
2	5	-----> if test -z "$name"...
2	2	------> test -z "$name"
1	1	------> test -z "$body"
11	11	-----> printf '%s\n' $body | read -l --list words
3	3	-----> set -l first_word $words[1]
2	2	-----> set -l last_word $words[-1]
0	2	-----> if test $first_word = $name...
2	2	------> test $first_word = $name
16	19	-----> set -l cmd_string (string escape -- "alias $argv")
3	3	------> string escape -- "alias $argv"
2	2	-----> set -l wraps
2	28	-----> if test $first_word != $name...
2	2	------> test $first_word != $name
2	2	------> test $last_word != $name
20	22	------> set wraps --wraps (string escape -- $body)
2	2	-------> string escape -- $body
39	42	-----> echo "function $name $wraps --description $cmd_string; $prefix $body \$argv
        end" | source
3	3	------> function lta2 --wraps 'eza -lTag --level=2 --icons' --description 'alias lta2=eza -lTag --level=2 --icons'...
1	2	-----> if set -q _flag_save...
1	1	------> set -q _flag_save
14	155	----> alias lta3="eza -lTag --level=3 --icons"
1	1	-----> set -l options h/help s/save
3	3	-----> argparse -n alias --max-args=2 $options -- $argv
2	2	-----> if set -q _flag_help...
0	0	------> set -q _flag_help
1	1	-----> set -l name
1	1	-----> set -l body
1	1	-----> set -l prefix
4	32	-----> if not set -q argv[1]...
1	1	------> not set -q argv[1]
0	0	------> not set -q argv[2]
20	23	------> set -l tmp (string split -m 1 "=" -- $argv) ""
3	3	-------> string split -m 1 "=" -- $argv
2	2	------> set name $tmp[1]
2	2	------> set body $tmp[2]
0	4	-----> if test -z "$name"...
2	2	------> test -z "$name"
2	2	------> test -z "$body"
14	14	-----> printf '%s\n' $body | read -l --list words
2	2	-----> set -l first_word $words[1]
2	2	-----> set -l last_word $words[-1]
2	3	-----> if test $first_word = $name...
1	1	------> test $first_word = $name
17	20	-----> set -l cmd_string (string escape -- "alias $argv")
3	3	------> string escape -- "alias $argv"
1	1	-----> set -l wraps
1	24	-----> if test $first_word != $name...
2	2	------> test $first_word != $name
2	2	------> test $last_word != $name
17	19	------> set wraps --wraps (string escape -- $body)
2	2	-------> string escape -- $body
25	28	-----> echo "function $name $wraps --description $cmd_string; $prefix $body \$argv
        end" | source
3	3	------> function lta3 --wraps 'eza -lTag --level=3 --icons' --description 'alias lta3=eza -lTag --level=3 --icons'...
1	2	-----> if set -q _flag_save...
1	1	------> set -q _flag_save
12	131	----> alias code=code-insiders
1	1	-----> set -l options h/help s/save
2	2	-----> argparse -n alias --max-args=2 $options -- $argv
0	1	-----> if set -q _flag_help...
1	1	------> set -q _flag_help
1	1	-----> set -l name
1	1	-----> set -l body
1	1	-----> set -l prefix
3	26	-----> if not set -q argv[1]...
1	1	------> not set -q argv[1]
0	0	------> not set -q argv[2]
16	18	------> set -l tmp (string split -m 1 "=" -- $argv) ""
2	2	-------> string split -m 1 "=" -- $argv
2	2	------> set name $tmp[1]
2	2	------> set body $tmp[2]
2	4	-----> if test -z "$name"...
1	1	------> test -z "$name"
1	1	------> test -z "$body"
11	11	-----> printf '%s\n' $body | read -l --list words
2	2	-----> set -l first_word $words[1]
2	2	-----> set -l last_word $words[-1]
1	3	-----> if test $first_word = $name...
2	2	------> test $first_word = $name
14	16	-----> set -l cmd_string (string escape -- "alias $argv")
2	2	------> string escape -- "alias $argv"
1	1	-----> set -l wraps
1	20	-----> if test $first_word != $name...
2	2	------> test $first_word != $name
2	2	------> test $last_word != $name
13	15	------> set wraps --wraps (string escape -- $body)
2	2	-------> string escape -- $body
23	25	-----> echo "function $name $wraps --description $cmd_string; $prefix $body \$argv
        end" | source
2	2	------> function code --wraps code-insiders --description 'alias code=code-insiders'...
1	2	-----> if set -q _flag_save...
1	1	------> set -q _flag_save
17	165	----> alias lzd='lazydocker'
1	1	-----> set -l options h/help s/save
3	3	-----> argparse -n alias --max-args=2 $options -- $argv
1	1	-----> if set -q _flag_help...
0	0	------> set -q _flag_help
1	1	-----> set -l name
1	1	-----> set -l body
1	1	-----> set -l prefix
4	33	-----> if not set -q argv[1]...
1	1	------> not set -q argv[1]
1	1	------> not set -q argv[2]
20	22	------> set -l tmp (string split -m 1 "=" -- $argv) ""
2	2	-------> string split -m 1 "=" -- $argv
3	3	------> set name $tmp[1]
2	2	------> set body $tmp[2]
0	5	-----> if test -z "$name"...
3	3	------> test -z "$name"
2	2	------> test -z "$body"
14	14	-----> printf '%s\n' $body | read -l --list words
2	2	-----> set -l first_word $words[1]
2	2	-----> set -l last_word $words[-1]
0	2	-----> if test $first_word = $name...
2	2	------> test $first_word = $name
17	21	-----> set -l cmd_string (string escape -- "alias $argv")
4	4	------> string escape -- "alias $argv"
1	1	-----> set -l wraps
3	23	-----> if test $first_word != $name...
2	2	------> test $first_word != $name
2	2	------> test $last_word != $name
14	16	------> set wraps --wraps (string escape -- $body)
2	2	-------> string escape -- $body
34	36	-----> echo "function $name $wraps --description $cmd_string; $prefix $body \$argv
        end" | source
2	2	------> function lzd --wraps lazydocker --description 'alias lzd=lazydocker'...
0	1	-----> if set -q _flag_save...
1	1	------> set -q _flag_save
6	62	----> export RUSTC_WRAPPER=sccache
0	1	-----> if not set -q argv[1]...
1	1	------> not set -q argv[1]
5	55	-----> for arg in $argv...
15	18	------> set -l v (string split -m 1 "=" -- $arg)
3	3	-------> string split -m 1 "=" -- $arg
18	32	------> switch (count $v)...
3	3	-------> count $v
3	11	-------> if contains -- $v[1] PATH CDPATH MANPATH...
3	3	--------> contains -- $v[1] PATH CDPATH MANPATH
2	2	--------> true
3	3	--------> set -gx $v[1] $v[2]
12	166	----> alias tmux='tmux -u'
1	1	-----> set -l options h/help s/save
3	3	-----> argparse -n alias --max-args=2 $options -- $argv
1	1	-----> if set -q _flag_help...
0	0	------> set -q _flag_help
1	1	-----> set -l name
2	2	-----> set -l body
1	1	-----> set -l prefix
5	28	-----> if not set -q argv[1]...
1	1	------> not set -q argv[1]
1	1	------> not set -q argv[2]
16	19	------> set -l tmp (string split -m 1 "=" -- $argv) ""
3	3	-------> string split -m 1 "=" -- $argv
1	1	------> set name $tmp[1]
1	1	------> set body $tmp[2]
0	4	-----> if test -z "$name"...
2	2	------> test -z "$name"
2	2	------> test -z "$body"
11	11	-----> printf '%s\n' $body | read -l --list words
2	2	-----> set -l first_word $words[1]
2	2	-----> set -l last_word $words[-1]
2	56	-----> if test $first_word = $name...
2	2	------> test $first_word = $name
2	52	------> if contains $name (builtin --names)...
39	48	-------> contains $name (builtin --names)
9	9	--------> builtin --names
2	2	-------> set prefix command
14	16	-----> set -l cmd_string (string escape -- "alias $argv")
2	2	------> string escape -- "alias $argv"
1	1	-----> set -l wraps
0	2	-----> if test $first_word != $name...
2	2	------> test $first_word != $name
21	22	-----> echo "function $name $wraps --description $cmd_string; $prefix $body \$argv
        end" | source
1	1	------> function tmux  --description 'alias tmux=tmux -u'...
0	1	-----> if set -q _flag_save...
1	1	------> set -q _flag_save
17	191	----> alias backup="~/terminal-config/backup/backup.sh"
1	1	-----> set -l options h/help s/save
3	3	-----> argparse -n alias --max-args=2 $options -- $argv
1	2	-----> if set -q _flag_help...
1	1	------> set -q _flag_help
1	1	-----> set -l name
1	1	-----> set -l body
0	0	-----> set -l prefix
4	31	-----> if not set -q argv[1]...
1	1	------> not set -q argv[1]
1	1	------> not set -q argv[2]
20	23	------> set -l tmp (string split -m 1 "=" -- $argv) ""
3	3	-------> string split -m 1 "=" -- $argv
1	1	------> set name $tmp[1]
1	1	------> set body $tmp[2]
2	39	-----> if test -z "$name"...
1	1	------> test -z "$name"
36	36	------> test -z "$body"
17	17	-----> printf '%s\n' $body | read -l --list words
2	2	-----> set -l first_word $words[1]
2	2	-----> set -l last_word $words[-1]
1	3	-----> if test $first_word = $name...
2	2	------> test $first_word = $name
13	16	-----> set -l cmd_string (string escape -- "alias $argv")
3	3	------> string escape -- "alias $argv"
1	1	-----> set -l wraps
6	25	-----> if test $first_word != $name...
2	2	------> test $first_word != $name
1	1	------> test $last_word != $name
13	16	------> set wraps --wraps (string escape -- $body)
3	3	-------> string escape -- $body
27	29	-----> echo "function $name $wraps --description $cmd_string; $prefix $body \$argv
        end" | source
2	2	------> function backup --wraps '~/terminal-config/backup/backup.sh' --description 'alias backup=~/terminal-config/backup/backup.sh'...
0	1	-----> if set -q _flag_save...
1	1	------> set -q _flag_save
21	183	----> alias my_gcc="gcc -Werror -Wfloat-equal -Wextra -Wundef -std=c18 -g -Os -funsigned-char -fsanitize=address -fsanitize=undefined -ftrapv "
1	1	-----> set -l options h/help s/save
3	3	-----> argparse -n alias --max-args=2 $options -- $argv
0	1	-----> if set -q _flag_help...
1	1	------> set -q _flag_help
0	0	-----> set -l name
1	1	-----> set -l body
1	1	-----> set -l prefix
4	30	-----> if not set -q argv[1]...
0	0	------> not set -q argv[1]
0	0	------> not set -q argv[2]
19	22	------> set -l tmp (string split -m 1 "=" -- $argv) ""
3	3	-------> string split -m 1 "=" -- $argv
2	2	------> set name $tmp[1]
2	2	------> set body $tmp[2]
1	4	-----> if test -z "$name"...
1	1	------> test -z "$name"
2	2	------> test -z "$body"
14	14	-----> printf '%s\n' $body | read -l --list words
2	2	-----> set -l first_word $words[1]
6	6	-----> set -l last_word $words[-1]
0	2	-----> if test $first_word = $name...
2	2	------> test $first_word = $name
33	38	-----> set -l cmd_string (string escape -- "alias $argv")
5	5	------> string escape -- "alias $argv"
1	1	-----> set -l wraps
3	26	-----> if test $first_word != $name...
2	2	------> test $first_word != $name
1	1	------> test $last_word != $name
16	20	------> set wraps --wraps (string escape -- $body)
4	4	-------> string escape -- $body
28	31	-----> echo "function $name $wraps --description $cmd_string; $prefix $body \$argv
        end" | source
3	3	------> function my_gcc --wraps 'gcc -Werror -Wfloat-equal -Wextra -Wundef -std=c18 -g -Os -funsigned-char -fsanitize=address -fsanitize=undefined -ftrapv ' --description 'alias my_gcc=gcc -Werror -Wfloat-equal -Wextra -Wundef -std=c18 -g -Os -funsigned-char -fsanitize=address -fsanitize=undefined -ftrapv '...
0	1	-----> if set -q _flag_save...
1	1	------> set -q _flag_save
14	180	----> alias pedantic_gcc="gcc Werror -Wfloat-equal -Wextra -Wall -Wundef -std=c11 -g -Os  -funsigned-char -fsanitize=address -fsanitize=undefined -ftrapv -fno-omit-frame-pointer -ansi -pedantic"
1	1	-----> set -l options h/help s/save
4	4	-----> argparse -n alias --max-args=2 $options -- $argv
0	1	-----> if set -q _flag_help...
1	1	------> set -q _flag_help
1	1	-----> set -l name
1	1	-----> set -l body
1	1	-----> set -l prefix
2	30	-----> if not set -q argv[1]...
0	0	------> not set -q argv[1]
1	1	------> not set -q argv[2]
19	22	------> set -l tmp (string split -m 1 "=" -- $argv) ""
3	3	-------> string split -m 1 "=" -- $argv
2	2	------> set name $tmp[1]
3	3	------> set body $tmp[2]
1	4	-----> if test -z "$name"...
1	1	------> test -z "$name"
2	2	------> test -z "$body"
16	16	-----> printf '%s\n' $body | read -l --list words
2	2	-----> set -l first_word $words[1]
2	2	-----> set -l last_word $words[-1]
1	2	-----> if test $first_word = $name...
1	1	------> test $first_word = $name
20	26	-----> set -l cmd_string (string escape -- "alias $argv")
6	6	------> string escape -- "alias $argv"
1	1	-----> set -l wraps
1	30	-----> if test $first_word != $name...
3	3	------> test $first_word != $name
2	2	------> test $last_word != $name
20	24	------> set wraps --wraps (string escape -- $body)
4	4	-------> string escape -- $body
38	42	-----> echo "function $name $wraps --description $cmd_string; $prefix $body \$argv
        end" | source
4	4	------> function pedantic_gcc --wraps 'gcc Werror -Wfloat-equal -Wextra -Wall -Wundef -std=c11 -g -Os  -funsigned-char -fsanitize=address -fsanitize=undefined -ftrapv -fno-omit-frame-pointer -ansi -pedantic' --description 'alias pedantic_gcc=gcc Werror -Wfloat-equal -Wextra -Wall -Wundef -std=c11 -g -Os  -funsigned-char -fsanitize=address -fsanitize=undefined -ftrapv -fno-omit-frame-pointer -ansi -pedantic'...
1	2	-----> if set -q _flag_save...
1	1	------> set -q _flag_save
16	135	----> alias ly "lazygit -w ~ -g ~/.local/share/yadm/repo.git"
1	1	-----> set -l options h/help s/save
3	3	-----> argparse -n alias --max-args=2 $options -- $argv
0	1	-----> if set -q _flag_help...
1	1	------> set -q _flag_help
1	1	-----> set -l name
1	1	-----> set -l body
1	1	-----> set -l prefix
2	8	-----> if not set -q argv[1]...
1	1	------> not set -q argv[1]
1	1	------> not set -q argv[2]
2	2	------> set name $argv[1]
2	2	------> set body $argv[2]
2	4	-----> if test -z "$name"...
1	1	------> test -z "$name"
1	1	------> test -z "$body"
23	23	-----> printf '%s\n' $body | read -l --list words
2	2	-----> set -l first_word $words[1]
2	2	-----> set -l last_word $words[-1]
1	3	-----> if test $first_word = $name...
2	2	------> test $first_word = $name
15	19	-----> set -l cmd_string (string escape -- "alias $argv")
4	4	------> string escape -- "alias $argv"
1	1	-----> set -l wraps
2	21	-----> if test $first_word != $name...
1	1	------> test $first_word != $name
2	2	------> test $last_word != $name
13	16	------> set wraps --wraps (string escape -- $body)
3	3	-------> string escape -- $body
25	27	-----> echo "function $name $wraps --description $cmd_string; $prefix $body \$argv
        end" | source
2	2	------> function ly --wraps 'lazygit -w ~ -g ~/.local/share/yadm/repo.git' --description 'alias ly lazygit -w ~ -g ~/.local/share/yadm/repo.git'...
0	1	-----> if set -q _flag_save...
1	1	------> set -q _flag_save
4770	5414	---> zoxide init fish | source
6	6	----> function __zoxide_pwd...
4	206	----> if ! builtin functions --query __zoxide_cd_internal...
27	27	-----> ! builtin functions --query __zoxide_cd_internal
173	175	-----> string replace --regex -- '^function cd\s' 'function __zoxide_cd_internal ' <$__fish_data_dir/functions/cd.fish | source
2	2	------> function __zoxide_cd_internal --description "Change directory"...
1	1	----> function __zoxide_cd...
2	2	----> function __zoxide_hook --on-variable PWD...
1	1	----> function __zoxide_z...
0	0	----> function __zoxide_z_complete...
21	21	----> complete --command __zoxide_z --no-files --arguments '(__zoxide_z_complete)'
1	1	----> function __zoxide_zi...
40	83	----> abbr --erase z &>/dev/null
43	43	-----> source /opt/homebrew/Cellar/fish/4.0.2/share/fish/functions/abbr.fish
15	161	----> alias z=__zoxide_z
3	3	-----> set -l options h/help s/save
5	5	-----> argparse -n alias --max-args=2 $options -- $argv
1	2	-----> if set -q _flag_help...
1	1	------> set -q _flag_help
1	1	-----> set -l name
2	2	-----> set -l body
1	1	-----> set -l prefix
5	41	-----> if not set -q argv[1]...
2	2	------> not set -q argv[1]
1	1	------> not set -q argv[2]
25	29	------> set -l tmp (string split -m 1 "=" -- $argv) ""
4	4	-------> string split -m 1 "=" -- $argv
2	2	------> set name $tmp[1]
2	2	------> set body $tmp[2]
1	5	-----> if test -z "$name"...
3	3	------> test -z "$name"
1	1	------> test -z "$body"
13	13	-----> printf '%s\n' $body | read -l --list words
2	2	-----> set -l first_word $words[1]
2	2	-----> set -l last_word $words[-1]
1	3	-----> if test $first_word = $name...
2	2	------> test $first_word = $name
15	18	-----> set -l cmd_string (string escape -- "alias $argv")
3	3	------> string escape -- "alias $argv"
2	2	-----> set -l wraps
2	22	-----> if test $first_word != $name...
2	2	------> test $first_word != $name
2	2	------> test $last_word != $name
14	16	------> set wraps --wraps (string escape -- $body)
2	2	-------> string escape -- $body
20	22	-----> echo "function $name $wraps --description $cmd_string; $prefix $body \$argv
        end" | source
2	2	------> function z --wraps __zoxide_z --description 'alias z=__zoxide_z'...
1	2	-----> if set -q _flag_save...
1	1	------> set -q _flag_save
14	14	----> abbr --erase zi &>/dev/null
13	148	----> alias zi=__zoxide_zi
2	2	-----> set -l options h/help s/save
3	3	-----> argparse -n alias --max-args=2 $options -- $argv
0	1	-----> if set -q _flag_help...
1	1	------> set -q _flag_help
1	1	-----> set -l name
1	1	-----> set -l body
1	1	-----> set -l prefix
5	30	-----> if not set -q argv[1]...
1	1	------> not set -q argv[1]
0	0	------> not set -q argv[2]
17	20	------> set -l tmp (string split -m 1 "=" -- $argv) ""
3	3	-------> string split -m 1 "=" -- $argv
2	2	------> set name $tmp[1]
2	2	------> set body $tmp[2]
1	4	-----> if test -z "$name"...
2	2	------> test -z "$name"
1	1	------> test -z "$body"
13	13	-----> printf '%s\n' $body | read -l --list words
2	2	-----> set -l first_word $words[1]
2	2	-----> set -l last_word $words[-1]
0	2	-----> if test $first_word = $name...
2	2	------> test $first_word = $name
14	17	-----> set -l cmd_string (string escape -- "alias $argv")
3	3	------> string escape -- "alias $argv"
2	2	-----> set -l wraps
2	26	-----> if test $first_word != $name...
2	2	------> test $first_word != $name
2	2	------> test $last_word != $name
19	20	------> set wraps --wraps (string escape -- $body)
1	1	-------> string escape -- $body
24	26	-----> echo "function $name $wraps --description $cmd_string; $prefix $body \$argv
        end" | source
2	2	------> function zi --wraps __zoxide_zi --description 'alias zi=__zoxide_zi'...
1	2	-----> if set -q _flag_save...
1	1	------> set -q _flag_save
13666	20895	---> starship init fish | source
-1601	7229	----> source (/opt/homebrew/bin/starship init fish --print-full-init | psub)
316	6874	-----> /opt/homebrew/bin/starship init fish --print-full-init | psub
395	401	------> source /opt/homebrew/Cellar/fish/4.0.2/share/fish/functions/psub.fish
6	6	-------> function psub --description "Read from stdin into a file and output the filename. Remove the file when the command that called psub exits."...
9	9	------> set -l options -x 'f,F' -x 'F,s' h/help f/file F/fifo 's/suffix=' T-testing
12	12	------> argparse -n psub --max-args=0 $options -- $argv
1	2	------> if set -q _flag_help...
1	1	-------> set -q _flag_help
2	2	------> set -l dirname
1	1	------> set -l filename
1	1	------> set -l funcname
0	3	------> if not status --is-command-substitution...
3	3	-------> not status --is-command-substitution
1	1	------> set -l tmpdir /tmp
1	1	------> set -q TMPDIR
2	2	------> set tmpdir $TMPDIR
12	5517	------> if set -q _flag_fifo...
1	1	-------> set -q _flag_fifo
4	4	-------> test -z "$_flag_suffix"
84	3659	-------> set filename (mktemp $tmpdir/.psub.XXXXXXXXXX)
3575	3575	--------> mktemp $tmpdir/.psub.XXXXXXXXXX
1841	1841	-------> command cat >$filename
19	19	------> echo $filename
1	3	------> if set -q _flag_testing...
2	2	-------> set -q _flag_testing
6	575	------> while ...
1	1	-------> true
37	59	-------> set funcname __fish_psub_(random)
22	22	--------> random
3	509	-------> if not functions $funcname >/dev/null 2>/dev/null...
504	504	--------> not functions $funcname >/dev/null 2>/dev/null
2	2	--------> break
9	9	------> function $funcname --on-job-exit caller --inherit-variable filename --inherit-variable dirname --inherit-variable funcname...
1	1	-----> function fish_prompt...
0	0	-----> function fish_right_prompt...
3	3	-----> set -g VIRTUAL_ENV_DISABLE_PROMPT 1
2	2	-----> builtin functions -e fish_mode_prompt
2	2	-----> set -gx STARSHIP_SHELL "fish"
1	1	-----> function reset-transient --on-event fish_postexec...
0	0	-----> function transient_execute...
2	2	-----> function enable_transience --description 'enable transient prompt keybindings'...
1	1	-----> function disable_transience --description 'remove transient prompt keybindings'...
20	141	-----> set -gx STARSHIP_SESSION_KEY (string sub -s1 -l16 (random)(random)(random)(random)(random)0000000000000000)
108	121	------> string sub -s1 -l16 (random)(random)(random)(random)(random)0000000000000000
3	3	-------> random
4	4	-------> random
2	2	-------> random
1	1	-------> random
3	3	-------> random
5	1803	-----> __fish_psub_28900 JOB_EXIT -1 0
1788	1788	------> command rm $filename
0	6	------> if test -n "$dirname"...
6	6	-------> test -n "$dirname"
4	4	------> functions -e $funcname
11635	11843	---> fzf --fish | source
12	12	----> function fzf_key_bindings...
26	196	----> fzf_key_bindings
35	73	-----> set -l fish_ver (string match -r '^(\d+).(\d+)' $version 2> /dev/null; or echo 0\n0\n0)
38	38	------> string match -r '^(\d+).(\d+)' $version 2> /dev/null
2	59	-----> if test \( "$fish_ver[2]" -lt 3 \) -o \( "$fish_ver[2]" -eq 3 -a "$fish_ver[3]" -lt 1 \)...
18	18	------> test \( "$fish_ver[2]" -lt 3 \) -o \( "$fish_ver[2]" -eq 3 -a "$fish_ver[3]" -lt 1 \)
39	39	------> not type -q fzf
1	1	-----> function __fzf_defaults...
0	0	-----> function __fzfcmd...
3	3	-----> function __fzf_parse_commandline -d 'Parse the current command line token and return split of existing filepath, fzf query, and optional -option= prefix'...
1	1	-----> function fzf-file-widget -d "List files and folders"...
1	1	-----> function fzf-history-widget -d "Show command history"...
1	1	-----> function fzf-cd-widget -d "Change directory"...
14	14	-----> bind \cr fzf-history-widget
3	3	-----> bind -M insert \cr fzf-history-widget
4	8	-----> if not set -q FZF_CTRL_T_COMMAND...
2	2	------> not set -q FZF_CTRL_T_COMMAND
1	1	------> bind \ct fzf-file-widget
1	1	------> bind -M insert \ct fzf-file-widget
1	6	-----> if not set -q FZF_ALT_C_COMMAND...
1	1	------> not set -q FZF_ALT_C_COMMAND
2	2	------> bind \ec fzf-cd-widget
2	2	------> bind -M insert \ec fzf-cd-widget
3	3	---> set -gx PNPM_HOME /Users/hugo/Library/pnpm
1	22	---> if not string match -q -- $PNPM_HOME $PATH...
21	21	----> not string match -q -- $PNPM_HOME $PATH
20	30	--> set -l basename (string replace -r '^.*/' '' -- $file)
10	10	---> string replace -r '^.*/' '' -- $file
4	4	--> contains -- $basename $sourcelist
3	3	--> set sourcelist $sourcelist $basename
37	37	--> test -f $file -a -r $file
678	751	--> source $file
6	6	---> abbr d dev
2	2	---> abbr c claude
2	2	---> abbr dc "docker compose"
1	1	---> abbr dcd "docker compose down"
2	2	---> abbr dcdv "docker compose down -v"
1	1	---> abbr dcr "docker compose restart"
1	1	---> abbr dcu "docker compose up -d"
1	1	---> abbr dl "docker logs"
1	1	---> abbr dsl "docker compose logs"
1	1	---> abbr dps "docker ps --format 'table {{.Names}}\t{{.Status}}'"
1	1	---> abbr dss "docker ps"
2	2	---> abbr p "pnpm run (jq -r '.scripts|to_entries[]|((.key))' package.json | fzf-tmux -p --border-label='pnpm run')"
1	1	---> abbr pa "pnpm add"
2	2	---> abbr pb "pnpm build"
2	2	---> abbr pd "pnpm dev"
2	2	---> abbr pg "pnpm generate"
1	1	---> abbr ph "pnpm help"
1	1	---> abbr pi "pnpm install"
2	2	---> abbr pim "pnpm import"
2	2	---> abbr pit "pnpm install-test"
1	1	---> abbr pl "pnpm lint"
1	1	---> abbr pls "pnpm ls"
3	3	---> abbr pr "pnpm run (jq -r '.scripts|to_entries[]|((.key))' package.json | fzf-tmux -p --border-label='pnpm run')"
2	2	---> abbr ps "pnpm start"
1	1	---> abbr psa "pnpm store add"
1	1	---> abbr psp "pnpm store prune"
1	1	---> abbr pss "pnpm store status"
1	1	---> abbr pt "pnpm test"
2	2	---> abbr pu "pnpm update"
1	1	---> abbr pul "pnpm unlink"
1	1	---> abbr pw "pnpm web"
2	2	---> abbr pwdc "pwd | pbcopy"
2	2	---> abbr v nvim
4	4	---> abbr vfzf "nvim (fd --type f --hidden --follow --exclude .git | fzf-tmux -p -w 100 --reverse --preview 'bat --color=always --style=numbers --line-range=:500 {}')"
1	1	---> abbr vf "nvim ~/.config/fish/config.fish"
1	1	---> abbr vt "nvim ~/.config/tmux/tmux.conf"
1	1	---> abbr vp "nvim package.json"
2	2	---> abbr ssh_pub "cat ~/.ssh/id_rsa.pub | pbcopy"
3	3	---> abbr my_g++ "g++ -c -O2 -Wall -Wextra -pedantic-errors -Wold-style-cast -std=c++11 -Werror"
2	2	---> abbr - "cd -"
2	2	---> abbr tn "tmux new -s (pwd | sed 's/.*\///g')"
2	2	---> abbr ds "open -a Dropshelf"
2	2	---> abbr dtree tree -L 2 -I 'expo-apple-targets|node_modules|data'
17	24	--> set -l basename (string replace -r '^.*/' '' -- $file)
7	7	---> string replace -r '^.*/' '' -- $file
3	3	--> contains -- $basename $sourcelist
2	2	--> set sourcelist $sourcelist $basename
19	19	--> test -f $file -a -r $file
228	307	--> source $file
1	1	---> function _aichat_fish...
3	3	---> bind \ee _aichat_fish
10	10	---> complete -c aichat -s m -l model -x -a "(aichat --list-models)" -d 'Select a LLM model' -r
2	2	---> complete -c aichat -l prompt -d 'Use the system prompt'
5	5	---> complete -c aichat -s r -l role -x -a "(aichat --list-roles)" -d 'Select a role' -r
5	5	---> complete -c aichat -s s -l session -x -a "(aichat --list-sessions)" -d 'Start or join a session' -r
2	2	---> complete -c aichat -l empty-session -d 'Ensure the session is empty'
2	2	---> complete -c aichat -l save-session -d 'Ensure the new conversation is saved to the session'
4	4	---> complete -c aichat -s a -l agent -x -a "(aichat --list-agents)" -d 'Start a agent' -r
2	2	---> complete -c aichat -l agent-variable -d 'Set agent variables'
4	4	---> complete -c aichat -l rag -x -a"(aichat --list-rags)" -d 'Start a RAG' -r
2	2	---> complete -c aichat -l rebuild-rag -d 'Rebuild the RAG to sync document changes'
4	4	---> complete -c aichat -l macro -x -a"(aichat --list-macros)" -d 'Execute a macro' -r
2	2	---> complete -c aichat -l serve -d 'Serve the LLM API and WebAPP'
2	2	---> complete -c aichat -s e -l execute -d 'Execute commands in natural language'
2	2	---> complete -c aichat -s c -l code -d 'Output code only'
3	3	---> complete -c aichat -s f -l file -d 'Include files, directories, or URLs' -r -F
2	2	---> complete -c aichat -s S -l no-stream -d 'Turn off stream mode'
2	2	---> complete -c aichat -l dry-run -d 'Display the message without sending it'
2	2	---> complete -c aichat -l info -d 'Display information'
2	2	---> complete -c aichat -l sync-models -d 'Sync models updates'
2	2	---> complete -c aichat -l list-models -d 'List all available chat models'
2	2	---> complete -c aichat -l list-roles -d 'List all roles'
2	2	---> complete -c aichat -l list-sessions -d 'List all sessions'
2	2	---> complete -c aichat -l list-agents -d 'List all agents'
2	2	---> complete -c aichat -l list-rags -d 'List all RAGs'
2	2	---> complete -c aichat -l list-macros -d 'List all macros'
2	2	---> complete -c aichat -s h -l help -d 'Print help'
2	2	---> complete -c aichat -s V -l version -d 'Print version'
17	24	--> set -l basename (string replace -r '^.*/' '' -- $file)
7	7	---> string replace -r '^.*/' '' -- $file
3	3	--> contains -- $basename $sourcelist
3	3	--> set sourcelist $sourcelist $basename
18	18	--> test -f $file -a -r $file
128	130	--> source $file
2	2	---> set -gx ANDROID_HOME /Users/hugo/Library/Android/sdk
16	21	--> set -l basename (string replace -r '^.*/' '' -- $file)
5	5	---> string replace -r '^.*/' '' -- $file
3	3	--> contains -- $basename $sourcelist
3	3	--> set sourcelist $sourcelist $basename
18	18	--> test -f $file -a -r $file
222	222	--> source $file
23	33	--> set -l basename (string replace -r '^.*/' '' -- $file)
10	10	---> string replace -r '^.*/' '' -- $file
5	5	--> contains -- $basename $sourcelist
4	4	--> set sourcelist $sourcelist $basename
23	23	--> test -f $file -a -r $file
43	123	--> source $file
9	80	---> export BW_SESSION="UvvShMtlKQJfKCn/jHyiGH/gMh7FP4smlVemb2QbAbHxMqgPljuVmHhhpCTxJERPwpRAj5wD5T37Fy7q7ryhPg=="
1	4	----> if not set -q argv[1]...
3	3	-----> not set -q argv[1]
8	67	----> for arg in $argv...
20	26	-----> set -l v (string split -m 1 "=" -- $arg)
6	6	------> string split -m 1 "=" -- $arg
18	33	-----> switch (count $v)...
3	3	------> count $v
3	12	------> if contains -- $v[1] PATH CDPATH MANPATH...
3	3	-------> contains -- $v[1] PATH CDPATH MANPATH
1	1	-------> true
5	5	-------> set -gx $v[1] $v[2]
16	25	--> set -l basename (string replace -r '^.*/' '' -- $file)
9	9	---> string replace -r '^.*/' '' -- $file
5	5	--> contains -- $basename $sourcelist
4	4	--> set sourcelist $sourcelist $basename
20	20	--> test -f $file -a -r $file
50	65130	--> source $file
6	6	---> set -Ux CARAPACE_BRIDGES 'zsh,fish,bash,inshellisense'
52934	59492	---> carapace _carapace | source
34	217	----> fish_add_path '/Users/hugo/.config/carapace/bin'
16	16	-----> argparse -x g,U -x P,U -x a,p g/global U/universal P/path p/prepend a/append h/help m/move v/verbose n/dry-run -- $argv
1	4	-----> if set -q _flag_help...
3	3	------> set -q _flag_help
4	4	-----> set -l scope $_flag_global $_flag_universal
0	4	-----> if not set -q scope[1]...
2	2	------> not set -q scope[1]
2	2	------> not set -q fish_user_paths
2	2	-----> set -l var fish_user_paths
1	1	-----> set -q _flag_path
3	3	-----> set -l mode $_flag_prepend $_flag_append
1	1	-----> set -q mode[1]
1	1	-----> set mode -p
30	30	-----> status current-command | string match -rq '^fish_add_path$'
2	2	-----> set -l newpaths
1	1	-----> set -l indexes
9	94	-----> for path in $argv...
31	73	------> set -l p (builtin realpath -s -- $path 2>/dev/null)
42	42	-------> builtin realpath -s -- $path 2>/dev/null
4	12	------> if not test -d "$p"...
6	6	-------> not test -d "$p"
0	1	-------> if set -q _flag_verbose...
1	1	--------> set -q _flag_verbose
1	1	-------> continue
8	8	-----> set -l newvar $$var
0	1	-----> if set -q _flag_move...
1	1	------> set -q _flag_move
3	3	-----> set $mode newvar $newpaths
2	8	-----> if set -q newpaths[1]...
1	1	------> set -q newpaths[1]
1	1	------> set -q indexes[1]
1	3	------> if set -q _flag_verbose...
2	2	-------> set -q _flag_verbose
1	1	------> return 1
4	4	----> function get-env -d "get environment variable"...
2	2	----> function set-env -d "set environment variable"...
1	1	----> function unset-env -d "unset environment variable"...
1	1	----> function _carapace_quote_suffix...
1	1	----> function _carapace_callback...
7	7	----> complete -e 'SUSEconfig'
8	8	----> complete -c 'SUSEconfig' -f -a '(_carapace_callback SUSEconfig)'
2	2	----> complete -e 'a2ps'
4	4	----> complete -c 'a2ps' -f -a '(_carapace_callback a2ps)'
1	1	----> complete -e 'a2utils'
4	4	----> complete -c 'a2utils' -f -a '(_carapace_callback a2utils)'
2	2	----> complete -e 'aap'
4	4	----> complete -c 'aap' -f -a '(_carapace_callback aap)'
2	2	----> complete -e 'abcde'
4	4	----> complete -c 'abcde' -f -a '(_carapace_callback abcde)'
2	2	----> complete -e 'absolute_command_paths'
4	4	----> complete -c 'absolute_command_paths' -f -a '(_carapace_callback absolute_command_paths)'
1	1	----> complete -e 'acpi'
4	4	----> complete -c 'acpi' -f -a '(_carapace_callback acpi)'
2	2	----> complete -e 'acpid'
3	3	----> complete -c 'acpid' -f -a '(_carapace_callback acpid)'
1	1	----> complete -e 'acpitool'
4	4	----> complete -c 'acpitool' -f -a '(_carapace_callback acpitool)'
2	2	----> complete -e 'acroread'
6	6	----> complete -c 'acroread' -f -a '(_carapace_callback acroread)'
2	2	----> complete -e 'adb'
4	4	----> complete -c 'adb' -f -a '(_carapace_callback adb)'
2	2	----> complete -e 'add-zle-hook-widget'
4	4	----> complete -c 'add-zle-hook-widget' -f -a '(_carapace_callback add-zle-hook-widget)'
2	2	----> complete -e 'add-zsh-hook'
3	3	----> complete -c 'add-zsh-hook' -f -a '(_carapace_callback add-zsh-hook)'
1	1	----> complete -e 'age'
3	3	----> complete -c 'age' -f -a '(_carapace_callback age)'
2	2	----> complete -e 'agg'
3	3	----> complete -c 'agg' -f -a '(_carapace_callback agg)'
1	1	----> complete -e 'aliases'
3	3	----> complete -c 'aliases' -f -a '(_carapace_callback aliases)'
1	1	----> complete -e 'all_labels'
3	3	----> complete -c 'all_labels' -f -a '(_carapace_callback all_labels)'
1	1	----> complete -e 'all_matches'
3	3	----> complete -c 'all_matches' -f -a '(_carapace_callback all_matches)'
1	1	----> complete -e 'alsa-utils'
3	3	----> complete -c 'alsa-utils' -f -a '(_carapace_callback alsa-utils)'
1	1	----> complete -e 'alsamixer'
3	3	----> complete -c 'alsamixer' -f -a '(_carapace_callback alsamixer)'
1	1	----> complete -e 'alternative'
3	3	----> complete -c 'alternative' -f -a '(_carapace_callback alternative)'
1	1	----> complete -e 'analyseplugin'
5	5	----> complete -c 'analyseplugin' -f -a '(_carapace_callback analyseplugin)'
2	2	----> complete -e 'ant'
4	4	----> complete -c 'ant' -f -a '(_carapace_callback ant)'
1	1	----> complete -e 'antiword'
3	3	----> complete -c 'antiword' -f -a '(_carapace_callback antiword)'
1	1	----> complete -e 'apachectl'
3	3	----> complete -c 'apachectl' -f -a '(_carapace_callback apachectl)'
2	2	----> complete -e 'apk'
4	4	----> complete -c 'apk' -f -a '(_carapace_callback apk)'
1	1	----> complete -e 'aplay'
3	3	----> complete -c 'aplay' -f -a '(_carapace_callback aplay)'
1	1	----> complete -e 'approximate'
3	3	----> complete -c 'approximate' -f -a '(_carapace_callback approximate)'
1	1	----> complete -e 'apropos'
4	4	----> complete -c 'apropos' -f -a '(_carapace_callback apropos)'
2	2	----> complete -e 'apt'
3	3	----> complete -c 'apt' -f -a '(_carapace_callback apt)'
1	1	----> complete -e 'apt-cache'
4	4	----> complete -c 'apt-cache' -f -a '(_carapace_callback apt-cache)'
2	2	----> complete -e 'apt-get'
3	3	----> complete -c 'apt-get' -f -a '(_carapace_callback apt-get)'
1	1	----> complete -e 'ar'
3	3	----> complete -c 'ar' -f -a '(_carapace_callback ar)'
1	1	----> complete -e 'arch_archives'
3	3	----> complete -c 'arch_archives' -f -a '(_carapace_callback arch_archives)'
2	2	----> complete -e 'arch_namespace'
4	4	----> complete -c 'arch_namespace' -f -a '(_carapace_callback arch_namespace)'
2	2	----> complete -e 'arecord'
4	4	----> complete -c 'arecord' -f -a '(_carapace_callback arecord)'
2	2	----> complete -e 'arg_compile'
4	4	----> complete -c 'arg_compile' -f -a '(_carapace_callback arg_compile)'
2	2	----> complete -e 'arguments'
4	4	----> complete -c 'arguments' -f -a '(_carapace_callback arguments)'
1	1	----> complete -e 'aria2c'
3	3	----> complete -c 'aria2c' -f -a '(_carapace_callback aria2c)'
1	1	----> complete -e 'arrays'
3	3	----> complete -c 'arrays' -f -a '(_carapace_callback arrays)'
2	2	----> complete -e 'artisan'
4	4	----> complete -c 'artisan' -f -a '(_carapace_callback artisan)'
2	2	----> complete -e 'asciinema'
3	3	----> complete -c 'asciinema' -f -a '(_carapace_callback asciinema)'
1	1	----> complete -e 'assign'
3	3	----> complete -c 'assign' -f -a '(_carapace_callback assign)'
2	2	----> complete -e 'attr'
4	4	----> complete -c 'attr' -f -a '(_carapace_callback attr)'
1	1	----> complete -e 'augeas'
3	3	----> complete -c 'augeas' -f -a '(_carapace_callback augeas)'
1	1	----> complete -e 'auto-apt'
4	4	----> complete -c 'auto-apt' -f -a '(_carapace_callback auto-apt)'
2	2	----> complete -e 'autocd'
5	5	----> complete -c 'autocd' -f -a '(_carapace_callback autocd)'
2	2	----> complete -e 'autoconf'
4	4	----> complete -c 'autoconf' -f -a '(_carapace_callback autoconf)'
1	1	----> complete -e 'avahi'
3	3	----> complete -c 'avahi' -f -a '(_carapace_callback avahi)'
1	1	----> complete -e 'avdmanager'
4	4	----> complete -c 'avdmanager' -f -a '(_carapace_callback avdmanager)'
2	2	----> complete -e 'awk'
3	3	----> complete -c 'awk' -f -a '(_carapace_callback awk)'
1	1	----> complete -e 'aws'
3	3	----> complete -c 'aws' -f -a '(_carapace_callback aws)'
1	1	----> complete -e 'axi-cache'
4	4	----> complete -c 'axi-cache' -f -a '(_carapace_callback axi-cache)'
2	2	----> complete -e 'az'
4	4	----> complete -c 'az' -f -a '(_carapace_callback az)'
1	1	----> complete -e 'baobab'
3	3	----> complete -c 'baobab' -f -a '(_carapace_callback baobab)'
1	1	----> complete -e 'base32'
3	3	----> complete -c 'base32' -f -a '(_carapace_callback base32)'
1	1	----> complete -e 'base64'
4	4	----> complete -c 'base64' -f -a '(_carapace_callback base64)'
2	2	----> complete -e 'basename'
4	4	----> complete -c 'basename' -f -a '(_carapace_callback basename)'
2	2	----> complete -e 'basenc'
4	4	----> complete -c 'basenc' -f -a '(_carapace_callback basenc)'
1	1	----> complete -e 'bash'
3	3	----> complete -c 'bash' -f -a '(_carapace_callback bash)'
1	1	----> complete -e 'bash-language-server'
4	4	----> complete -c 'bash-language-server' -f -a '(_carapace_callback bash-language-server)'
2	2	----> complete -e 'bash_completions'
4	4	----> complete -c 'bash_completions' -f -a '(_carapace_callback bash_completions)'
2	2	----> complete -e 'bat'
3	3	----> complete -c 'bat' -f -a '(_carapace_callback bat)'
1	1	----> complete -e 'batdiff'
3	3	----> complete -c 'batdiff' -f -a '(_carapace_callback batdiff)'
2	2	----> complete -e 'batgrep'
4	4	----> complete -c 'batgrep' -f -a '(_carapace_callback batgrep)'
1	1	----> complete -e 'batman'
3	3	----> complete -c 'batman' -f -a '(_carapace_callback batman)'
2	2	----> complete -e 'bats'
3	3	----> complete -c 'bats' -f -a '(_carapace_callback bats)'
1	1	----> complete -e 'baudrates'
3	3	----> complete -c 'baudrates' -f -a '(_carapace_callback baudrates)'
2	2	----> complete -e 'baz'
3	3	----> complete -c 'baz' -f -a '(_carapace_callback baz)'
1	1	----> complete -e 'bc'
3	3	----> complete -c 'bc' -f -a '(_carapace_callback bc)'
1	1	----> complete -e 'be_name'
3	3	----> complete -c 'be_name' -f -a '(_carapace_callback be_name)'
2	2	----> complete -e 'beadm'
3	3	----> complete -c 'beadm' -f -a '(_carapace_callback beadm)'
1	1	----> complete -e 'beep'
4	4	----> complete -c 'beep' -f -a '(_carapace_callback beep)'
1	1	----> complete -e 'benthos'
3	3	----> complete -c 'benthos' -f -a '(_carapace_callback benthos)'
2	2	----> complete -e 'bibtex'
5	5	----> complete -c 'bibtex' -f -a '(_carapace_callback bibtex)'
2	2	----> complete -e 'bind_addresses'
4	4	----> complete -c 'bind_addresses' -f -a '(_carapace_callback bind_addresses)'
1	1	----> complete -e 'bittorrent'
4	4	----> complete -c 'bittorrent' -f -a '(_carapace_callback bittorrent)'
1	1	----> complete -e 'black'
3	3	----> complete -c 'black' -f -a '(_carapace_callback black)'
2	2	----> complete -e 'bloop'
4	4	----> complete -c 'bloop' -f -a '(_carapace_callback bloop)'
1	1	----> complete -e 'bluetoothctl'
4	4	----> complete -c 'bluetoothctl' -f -a '(_carapace_callback bluetoothctl)'
2	2	----> complete -e 'bogofilter'
4	4	----> complete -c 'bogofilter' -f -a '(_carapace_callback bogofilter)'
2	2	----> complete -e 'boundary'
4	4	----> complete -c 'boundary' -f -a '(_carapace_callback boundary)'
2	2	----> complete -e 'bpf_filters'
3	3	----> complete -c 'bpf_filters' -f -a '(_carapace_callback bpf_filters)'
1	1	----> complete -e 'bpython'
3	3	----> complete -c 'bpython' -f -a '(_carapace_callback bpython)'
2	2	----> complete -e 'brace_parameter'
4	4	----> complete -c 'brace_parameter' -f -a '(_carapace_callback brace_parameter)'
1	1	----> complete -e 'brctl'
3	3	----> complete -c 'brctl' -f -a '(_carapace_callback brctl)'
2	2	----> complete -e 'brew'
4	4	----> complete -c 'brew' -f -a '(_carapace_callback brew)'
2	2	----> complete -e 'brotli'
3	3	----> complete -c 'brotli' -f -a '(_carapace_callback brotli)'
2	2	----> complete -e 'bru'
3	3	----> complete -c 'bru' -f -a '(_carapace_callback bru)'
1	1	----> complete -e 'bsd_disks'
4	4	----> complete -c 'bsd_disks' -f -a '(_carapace_callback bsd_disks)'
1	1	----> complete -e 'bsd_pkg'
3	3	----> complete -c 'bsd_pkg' -f -a '(_carapace_callback bsd_pkg)'
1	1	----> complete -e 'bsdconfig'
3	3	----> complete -c 'bsdconfig' -f -a '(_carapace_callback bsdconfig)'
1	1	----> complete -e 'bsdinstall'
4	4	----> complete -c 'bsdinstall' -f -a '(_carapace_callback bsdinstall)'
2	2	----> complete -e 'btop'
3	3	----> complete -c 'btop' -f -a '(_carapace_callback btop)'
1	1	----> complete -e 'bts'
4	4	----> complete -c 'bts' -f -a '(_carapace_callback bts)'
1	1	----> complete -e 'bug'
3	3	----> complete -c 'bug' -f -a '(_carapace_callback bug)'
2	2	----> complete -e 'bun'
4	4	----> complete -c 'bun' -f -a '(_carapace_callback bun)'
1	1	----> complete -e 'bunx'
3	3	----> complete -c 'bunx' -f -a '(_carapace_callback bunx)'
1	1	----> complete -e 'cache_invalid'
4	4	----> complete -c 'cache_invalid' -f -a '(_carapace_callback cache_invalid)'
1	1	----> complete -e 'cal'
3	3	----> complete -c 'cal' -f -a '(_carapace_callback cal)'
2	2	----> complete -e 'calibre'
4	4	----> complete -c 'calibre' -f -a '(_carapace_callback calibre)'
2	2	----> complete -e 'call_function'
4	4	----> complete -c 'call_function' -f -a '(_carapace_callback call_function)'
2	2	----> complete -e 'call_program'
3	3	----> complete -c 'call_program' -f -a '(_carapace_callback call_program)'
1	1	----> complete -e 'canonical_paths'
3	3	----> complete -c 'canonical_paths' -f -a '(_carapace_callback canonical_paths)'
1	1	----> complete -e 'capabilities'
4	4	----> complete -c 'capabilities' -f -a '(_carapace_callback capabilities)'
1	1	----> complete -e 'capslock'
3	3	----> complete -c 'capslock' -f -a '(_carapace_callback capslock)'
1	1	----> complete -e 'carapace'
4	4	----> complete -c 'carapace' -f -a '(_carapace_callback carapace)'
1	1	----> complete -e 'cargo'
3	3	----> complete -c 'cargo' -f -a '(_carapace_callback cargo)'
1	1	----> complete -e 'cargo-clippy'
4	4	----> complete -c 'cargo-clippy' -f -a '(_carapace_callback cargo-clippy)'
1	1	----> complete -e 'cargo-fmt'
4	4	----> complete -c 'cargo-fmt' -f -a '(_carapace_callback cargo-fmt)'
2	2	----> complete -e 'cargo-metadata'
4	4	----> complete -c 'cargo-metadata' -f -a '(_carapace_callback cargo-metadata)'
2	2	----> complete -e 'cargo-rm'
4	4	----> complete -c 'cargo-rm' -f -a '(_carapace_callback cargo-rm)'
2	2	----> complete -e 'cargo-set-version'
4	4	----> complete -c 'cargo-set-version' -f -a '(_carapace_callback cargo-set-version)'
2	2	----> complete -e 'cargo-upgrade'
4	4	----> complete -c 'cargo-upgrade' -f -a '(_carapace_callback cargo-upgrade)'
1	1	----> complete -e 'cargo-watch'
4	4	----> complete -c 'cargo-watch' -f -a '(_carapace_callback cargo-watch)'
2	2	----> complete -e 'cat'
4	4	----> complete -c 'cat' -f -a '(_carapace_callback cat)'
2	2	----> complete -e 'ccal'
4	4	----> complete -c 'ccal' -f -a '(_carapace_callback ccal)'
2	2	----> complete -e 'cdbs-edit-patch'
5	5	----> complete -c 'cdbs-edit-patch' -f -a '(_carapace_callback cdbs-edit-patch)'
2	2	----> complete -e 'cdcd'
4	4	----> complete -c 'cdcd' -f -a '(_carapace_callback cdcd)'
2	2	----> complete -e 'cdr'
4	4	----> complete -c 'cdr' -f -a '(_carapace_callback cdr)'
1	1	----> complete -e 'cdrdao'
4	4	----> complete -c 'cdrdao' -f -a '(_carapace_callback cdrdao)'
2	2	----> complete -e 'cfdisk'
3	3	----> complete -c 'cfdisk' -f -a '(_carapace_callback cfdisk)'
1	1	----> complete -e 'charm'
4	4	----> complete -c 'charm' -f -a '(_carapace_callback charm)'
2	2	----> complete -e 'chattr'
3	3	----> complete -c 'chattr' -f -a '(_carapace_callback chattr)'
1	1	----> complete -e 'chcon'
4	4	----> complete -c 'chcon' -f -a '(_carapace_callback chcon)'
1	1	----> complete -e 'chcpu'
3	3	----> complete -c 'chcpu' -f -a '(_carapace_callback chcpu)'
1	1	----> complete -e 'cheese'
3	3	----> complete -c 'cheese' -f -a '(_carapace_callback cheese)'
1	1	----> complete -e 'chflags'
4	4	----> complete -c 'chflags' -f -a '(_carapace_callback chflags)'
2	2	----> complete -e 'chgrp'
3	3	----> complete -c 'chgrp' -f -a '(_carapace_callback chgrp)'
1	1	----> complete -e 'chkconfig'
4	4	----> complete -c 'chkconfig' -f -a '(_carapace_callback chkconfig)'
2	2	----> complete -e 'chmod'
3	3	----> complete -c 'chmod' -f -a '(_carapace_callback chmod)'
1	1	----> complete -e 'choom'
4	4	----> complete -c 'choom' -f -a '(_carapace_callback choom)'
1	1	----> complete -e 'chown'
3	3	----> complete -c 'chown' -f -a '(_carapace_callback chown)'
2	2	----> complete -e 'chpasswd'
3	3	----> complete -c 'chpasswd' -f -a '(_carapace_callback chpasswd)'
1	1	----> complete -e 'chroma'
3	3	----> complete -c 'chroma' -f -a '(_carapace_callback chroma)'
2	2	----> complete -e 'chromium'
3	3	----> complete -c 'chromium' -f -a '(_carapace_callback chromium)'
1	1	----> complete -e 'chroot'
3	3	----> complete -c 'chroot' -f -a '(_carapace_callback chroot)'
2	2	----> complete -e 'chrt'
3	3	----> complete -c 'chrt' -f -a '(_carapace_callback chrt)'
1	1	----> complete -e 'chsh'
4	4	----> complete -c 'chsh' -f -a '(_carapace_callback chsh)'
1	1	----> complete -e 'circleci'
3	3	----> complete -c 'circleci' -f -a '(_carapace_callback circleci)'
2	2	----> complete -e 'cksum'
3	3	----> complete -c 'cksum' -f -a '(_carapace_callback cksum)'
1	1	----> complete -e 'clamav-config'
4	4	----> complete -c 'clamav-config' -f -a '(_carapace_callback clamav-config)'
1	1	----> complete -e 'clamav-milter'
4	4	----> complete -c 'clamav-milter' -f -a '(_carapace_callback clamav-milter)'
2	2	----> complete -e 'clambc'
3	3	----> complete -c 'clambc' -f -a '(_carapace_callback clambc)'
1	1	----> complete -e 'clamconf'
3	3	----> complete -c 'clamconf' -f -a '(_carapace_callback clamconf)'
2	2	----> complete -e 'clamd'
4	4	----> complete -c 'clamd' -f -a '(_carapace_callback clamd)'
1	1	----> complete -e 'clamdscan'
3	3	----> complete -c 'clamdscan' -f -a '(_carapace_callback clamdscan)'
1	1	----> complete -e 'clamdtop'
4	4	----> complete -c 'clamdtop' -f -a '(_carapace_callback clamdtop)'
1	1	----> complete -e 'clamonacc'
3	3	----> complete -c 'clamonacc' -f -a '(_carapace_callback clamonacc)'
1	1	----> complete -e 'clamscan'
4	4	----> complete -c 'clamscan' -f -a '(_carapace_callback clamscan)'
2	2	----> complete -e 'clamsubmit'
4	4	----> complete -c 'clamsubmit' -f -a '(_carapace_callback clamsubmit)'
1	1	----> complete -e 'clay'
3	3	----> complete -c 'clay' -f -a '(_carapace_callback clay)'
1	1	----> complete -e 'cmdambivalent'
4	4	----> complete -c 'cmdambivalent' -f -a '(_carapace_callback cmdambivalent)'
1	1	----> complete -e 'cmdstring'
4	4	----> complete -c 'cmdstring' -f -a '(_carapace_callback cmdstring)'
2	2	----> complete -e 'cmp'
3	3	----> complete -c 'cmp' -f -a '(_carapace_callback cmp)'
1	1	----> complete -e 'cmus'
3	3	----> complete -c 'cmus' -f -a '(_carapace_callback cmus)'
1	1	----> complete -e 'code'
4	4	----> complete -c 'code' -f -a '(_carapace_callback code)'
1	1	----> complete -e 'code-insiders'
3	3	----> complete -c 'code-insiders' -f -a '(_carapace_callback code-insiders)'
1	1	----> complete -e 'codecov'
3	3	----> complete -c 'codecov' -f -a '(_carapace_callback codecov)'
2	2	----> complete -e 'column'
3	3	----> complete -c 'column' -f -a '(_carapace_callback column)'
1	1	----> complete -e 'combination'
4	4	----> complete -c 'combination' -f -a '(_carapace_callback combination)'
1	1	----> complete -e 'comm'
3	3	----> complete -c 'comm' -f -a '(_carapace_callback comm)'
1	1	----> complete -e 'compress'
3	3	----> complete -c 'compress' -f -a '(_carapace_callback compress)'
2	2	----> complete -e 'conda'
3	3	----> complete -c 'conda' -f -a '(_carapace_callback conda)'
1	1	----> complete -e 'conda-content-trust'
4	4	----> complete -c 'conda-content-trust' -f -a '(_carapace_callback conda-content-trust)'
1	1	----> complete -e 'conda-env'
4	4	----> complete -c 'conda-env' -f -a '(_carapace_callback conda-env)'
2	2	----> complete -e 'condition'
4	4	----> complete -c 'condition' -f -a '(_carapace_callback condition)'
1	1	----> complete -e 'conky'
3	3	----> complete -c 'conky' -f -a '(_carapace_callback conky)'
1	1	----> complete -e 'consul'
4	4	----> complete -c 'consul' -f -a '(_carapace_callback consul)'
1	1	----> complete -e 'coreadm'
3	3	----> complete -c 'coreadm' -f -a '(_carapace_callback coreadm)'
2	2	----> complete -e 'coredumpctl'
4	4	----> complete -c 'coredumpctl' -f -a '(_carapace_callback coredumpctl)'
2	2	----> complete -e 'correct'
4	4	----> complete -c 'correct' -f -a '(_carapace_callback correct)'
1	1	----> complete -e 'correct_filename'
3	3	----> complete -c 'correct_filename' -f -a '(_carapace_callback correct_filename)'
1	1	----> complete -e 'correct_word'
3	3	----> complete -c 'correct_word' -f -a '(_carapace_callback correct_word)'
1	1	----> complete -e 'cp'
3	3	----> complete -c 'cp' -f -a '(_carapace_callback cp)'
2	2	----> complete -e 'cpio'
3	3	----> complete -c 'cpio' -f -a '(_carapace_callback cpio)'
1	1	----> complete -e 'cplay'
4	4	----> complete -c 'cplay' -f -a '(_carapace_callback cplay)'
1	1	----> complete -e 'crontab'
3	3	----> complete -c 'crontab' -f -a '(_carapace_callback crontab)'
2	2	----> complete -e 'cscope'
3	3	----> complete -c 'cscope' -f -a '(_carapace_callback cscope)'
2	2	----> complete -e 'csplit'
3	3	----> complete -c 'csplit' -f -a '(_carapace_callback csplit)'
1	1	----> complete -e 'cssh'
4	4	----> complete -c 'cssh' -f -a '(_carapace_callback cssh)'
1	1	----> complete -e 'csup'
4	4	----> complete -c 'csup' -f -a '(_carapace_callback csup)'
2	2	----> complete -e 'csview'
4	4	----> complete -c 'csview' -f -a '(_carapace_callback csview)'
2	2	----> complete -e 'ctags'
5	5	----> complete -c 'ctags' -f -a '(_carapace_callback ctags)'
1	1	----> complete -e 'ctags_tags'
4	4	----> complete -c 'ctags_tags' -f -a '(_carapace_callback ctags_tags)'
2	2	----> complete -e 'cu'
3	3	----> complete -c 'cu' -f -a '(_carapace_callback cu)'
1	1	----> complete -e 'cura'
3	3	----> complete -c 'cura' -f -a '(_carapace_callback cura)'
1	1	----> complete -e 'curl'
3	3	----> complete -c 'curl' -f -a '(_carapace_callback curl)'
2	2	----> complete -e 'cut'
3	3	----> complete -c 'cut' -f -a '(_carapace_callback cut)'
1	1	----> complete -e 'cvsup'
5	5	----> complete -c 'cvsup' -f -a '(_carapace_callback cvsup)'
1	1	----> complete -e 'cygcheck'
3	3	----> complete -c 'cygcheck' -f -a '(_carapace_callback cygcheck)'
1	1	----> complete -e 'cygrunsrv'
4	4	----> complete -c 'cygrunsrv' -f -a '(_carapace_callback cygrunsrv)'
2	2	----> complete -e 'cygserver'
3	3	----> complete -c 'cygserver' -f -a '(_carapace_callback cygserver)'
1	1	----> complete -e 'dagger'
3	3	----> complete -c 'dagger' -f -a '(_carapace_callback dagger)'
2	2	----> complete -e 'dak'
3	3	----> complete -c 'dak' -f -a '(_carapace_callback dak)'
1	1	----> complete -e 'darktable'
4	4	----> complete -c 'darktable' -f -a '(_carapace_callback darktable)'
2	2	----> complete -e 'darktable-cli'
5	5	----> complete -c 'darktable-cli' -f -a '(_carapace_callback darktable-cli)'
1	1	----> complete -e 'dart'
4	4	----> complete -c 'dart' -f -a '(_carapace_callback dart)'
1	1	----> complete -e 'date'
3	3	----> complete -c 'date' -f -a '(_carapace_callback date)'
2	2	----> complete -e 'date_formats'
4	4	----> complete -c 'date_formats' -f -a '(_carapace_callback date_formats)'
1	1	----> complete -e 'dates'
3	3	----> complete -c 'dates' -f -a '(_carapace_callback dates)'
1	1	----> complete -e 'dbt'
3	3	----> complete -c 'dbt' -f -a '(_carapace_callback dbt)'
1	1	----> complete -e 'dbus'
3	3	----> complete -c 'dbus' -f -a '(_carapace_callback dbus)'
1	1	----> complete -e 'dc'
3	3	----> complete -c 'dc' -f -a '(_carapace_callback dc)'
2	2	----> complete -e 'dchroot'
3	3	----> complete -c 'dchroot' -f -a '(_carapace_callback dchroot)'
1	1	----> complete -e 'dchroot-dsa'
3	3	----> complete -c 'dchroot-dsa' -f -a '(_carapace_callback dchroot-dsa)'
1	1	----> complete -e 'dcop'
3	3	----> complete -c 'dcop' -f -a '(_carapace_callback dcop)'
2	2	----> complete -e 'dcut'
3	3	----> complete -c 'dcut' -f -a '(_carapace_callback dcut)'
1	1	----> complete -e 'dd'
3	3	----> complete -c 'dd' -f -a '(_carapace_callback dd)'
1	1	----> complete -e 'deadcode'
3	3	----> complete -c 'deadcode' -f -a '(_carapace_callback deadcode)'
1	1	----> complete -e 'deb_architectures'
4	4	----> complete -c 'deb_architectures' -f -a '(_carapace_callback deb_architectures)'
1	1	----> complete -e 'deb_codenames'
3	3	----> complete -c 'deb_codenames' -f -a '(_carapace_callback deb_codenames)'
1	1	----> complete -e 'deb_files'
3	3	----> complete -c 'deb_files' -f -a '(_carapace_callback deb_files)'
1	1	----> complete -e 'deb_packages'
4	4	----> complete -c 'deb_packages' -f -a '(_carapace_callback deb_packages)'
2	2	----> complete -e 'debbugs_bugnumber'
4	4	----> complete -c 'debbugs_bugnumber' -f -a '(_carapace_callback debbugs_bugnumber)'
2	2	----> complete -e 'debchange'
4	4	----> complete -c 'debchange' -f -a '(_carapace_callback debchange)'
1	1	----> complete -e 'debcheckout'
3	3	----> complete -c 'debcheckout' -f -a '(_carapace_callback debcheckout)'
1	1	----> complete -e 'debdiff'
3	3	----> complete -c 'debdiff' -f -a '(_carapace_callback debdiff)'
1	1	----> complete -e 'debfoster'
4	4	----> complete -c 'debfoster' -f -a '(_carapace_callback debfoster)'
1	1	----> complete -e 'deborphan'
3	3	----> complete -c 'deborphan' -f -a '(_carapace_callback deborphan)'
1	1	----> complete -e 'debsign'
4	4	----> complete -c 'debsign' -f -a '(_carapace_callback debsign)'
2	2	----> complete -e 'debsnap'
5	5	----> complete -c 'debsnap' -f -a '(_carapace_callback debsnap)'
1	1	----> complete -e 'debuild'
3	3	----> complete -c 'debuild' -f -a '(_carapace_callback debuild)'
2	2	----> complete -e 'default'
4	4	----> complete -c 'default' -f -a '(_carapace_callback default)'
1	1	----> complete -e 'delimiters'
3	3	----> complete -c 'delimiters' -f -a '(_carapace_callback delimiters)'
1	1	----> complete -e 'delta'
5	5	----> complete -c 'delta' -f -a '(_carapace_callback delta)'
2	2	----> complete -e 'deno'
4	4	----> complete -c 'deno' -f -a '(_carapace_callback deno)'
2	2	----> complete -e 'describe'
3	3	----> complete -c 'describe' -f -a '(_carapace_callback describe)'
1	1	----> complete -e 'description'
3	3	----> complete -c 'description' -f -a '(_carapace_callback description)'
1	1	----> complete -e 'devbox'
4	4	----> complete -c 'devbox' -f -a '(_carapace_callback devbox)'
1	1	----> complete -e 'devtodo'
3	3	----> complete -c 'devtodo' -f -a '(_carapace_callback devtodo)'
1	1	----> complete -e 'df'
3	3	----> complete -c 'df' -f -a '(_carapace_callback df)'
1	1	----> complete -e 'dfc'
3	3	----> complete -c 'dfc' -f -a '(_carapace_callback dfc)'
2	2	----> complete -e 'dhcpinfo'
3	3	----> complete -c 'dhcpinfo' -f -a '(_carapace_callback dhcpinfo)'
1	1	----> complete -e 'dict'
3	3	----> complete -c 'dict' -f -a '(_carapace_callback dict)'
2	2	----> complete -e 'dict_words'
4	4	----> complete -c 'dict_words' -f -a '(_carapace_callback dict_words)'
1	1	----> complete -e 'diff'
3	3	----> complete -c 'diff' -f -a '(_carapace_callback diff)'
2	2	----> complete -e 'diff3'
4	4	----> complete -c 'diff3' -f -a '(_carapace_callback diff3)'
1	1	----> complete -e 'diff_options'
3	3	----> complete -c 'diff_options' -f -a '(_carapace_callback diff_options)'
1	1	----> complete -e 'diffstat'
4	4	----> complete -c 'diffstat' -f -a '(_carapace_callback diffstat)'
2	2	----> complete -e 'dig'
3	3	----> complete -c 'dig' -f -a '(_carapace_callback dig)'
1	1	----> complete -e 'dir'
3	3	----> complete -c 'dir' -f -a '(_carapace_callback dir)'
2	2	----> complete -e 'dir_list'
4	4	----> complete -c 'dir_list' -f -a '(_carapace_callback dir_list)'
1	1	----> complete -e 'dircolors'
3	3	----> complete -c 'dircolors' -f -a '(_carapace_callback dircolors)'
1	1	----> complete -e 'directories'
4	4	----> complete -c 'directories' -f -a '(_carapace_callback directories)'
2	2	----> complete -e 'directory_stack'
4	4	----> complete -c 'directory_stack' -f -a '(_carapace_callback directory_stack)'
2	2	----> complete -e 'direnv'
4	4	----> complete -c 'direnv' -f -a '(_carapace_callback direnv)'
2	2	----> complete -e 'dirname'
4	4	----> complete -c 'dirname' -f -a '(_carapace_callback dirname)'
1	1	----> complete -e 'dispatch'
3	3	----> complete -c 'dispatch' -f -a '(_carapace_callback dispatch)'
2	2	----> complete -e 'dive'
3	3	----> complete -c 'dive' -f -a '(_carapace_callback dive)'
1	1	----> complete -e 'django'
3	3	----> complete -c 'django' -f -a '(_carapace_callback django)'
2	2	----> complete -e 'dkms'
4	4	----> complete -c 'dkms' -f -a '(_carapace_callback dkms)'
1	1	----> complete -e 'dladm'
3	3	----> complete -c 'dladm' -f -a '(_carapace_callback dladm)'
1	1	----> complete -e 'dlv'
4	4	----> complete -c 'dlv' -f -a '(_carapace_callback dlv)'
2	2	----> complete -e 'dmenu'
3	3	----> complete -c 'dmenu' -f -a '(_carapace_callback dmenu)'
1	1	----> complete -e 'dmesg'
4	4	----> complete -c 'dmesg' -f -a '(_carapace_callback dmesg)'
1	1	----> complete -e 'dms'
3	3	----> complete -c 'dms' -f -a '(_carapace_callback dms)'
2	2	----> complete -e 'dns_types'
4	4	----> complete -c 'dns_types' -f -a '(_carapace_callback dns_types)'
2	2	----> complete -e 'dnsmasq'
3	3	----> complete -c 'dnsmasq' -f -a '(_carapace_callback dnsmasq)'
1	1	----> complete -e 'doas'
3	3	----> complete -c 'doas' -f -a '(_carapace_callback doas)'
1	1	----> complete -e 'docker'
3	3	----> complete -c 'docker' -f -a '(_carapace_callback docker)'
2	2	----> complete -e 'docker-buildx'
4	4	----> complete -c 'docker-buildx' -f -a '(_carapace_callback docker-buildx)'
1	1	----> complete -e 'docker-compose'
3	3	----> complete -c 'docker-compose' -f -a '(_carapace_callback docker-compose)'
1	1	----> complete -e 'docker-scan'
3	3	----> complete -c 'docker-scan' -f -a '(_carapace_callback docker-scan)'
1	1	----> complete -e 'dockerd'
3	3	----> complete -c 'dockerd' -f -a '(_carapace_callback dockerd)'
1	1	----> complete -e 'doctl'
3	3	----> complete -c 'doctl' -f -a '(_carapace_callback doctl)'
2	2	----> complete -e 'doing'
3	3	----> complete -c 'doing' -f -a '(_carapace_callback doing)'
1	1	----> complete -e 'domains'
3	3	----> complete -c 'domains' -f -a '(_carapace_callback domains)'
2	2	----> complete -e 'dos2unix'
4	4	----> complete -c 'dos2unix' -f -a '(_carapace_callback dos2unix)'
1	1	----> complete -e 'downgrade'
3	3	----> complete -c 'downgrade' -f -a '(_carapace_callback downgrade)'
2	2	----> complete -e 'dpatch-edit-patch'
4	4	----> complete -c 'dpatch-edit-patch' -f -a '(_carapace_callback dpatch-edit-patch)'
1	1	----> complete -e 'dpkg'
4	4	----> complete -c 'dpkg' -f -a '(_carapace_callback dpkg)'
1	1	----> complete -e 'dpkg-buildpackage'
5	5	----> complete -c 'dpkg-buildpackage' -f -a '(_carapace_callback dpkg-buildpackage)'
1	1	----> complete -e 'dpkg-cross'
4	4	----> complete -c 'dpkg-cross' -f -a '(_carapace_callback dpkg-cross)'
2	2	----> complete -e 'dpkg-repack'
4	4	----> complete -c 'dpkg-repack' -f -a '(_carapace_callback dpkg-repack)'
2	2	----> complete -e 'dpkg_source'
4	4	----> complete -c 'dpkg_source' -f -a '(_carapace_callback dpkg_source)'
1	1	----> complete -e 'dput'
4	4	----> complete -c 'dput' -f -a '(_carapace_callback dput)'
1	1	----> complete -e 'drill'
3	3	----> complete -c 'drill' -f -a '(_carapace_callback drill)'
1	1	----> complete -e 'dropbox'
4	4	----> complete -c 'dropbox' -f -a '(_carapace_callback dropbox)'
2	2	----> complete -e 'dscverify'
4	4	----> complete -c 'dscverify' -f -a '(_carapace_callback dscverify)'
1	1	----> complete -e 'dsh'
3	3	----> complete -c 'dsh' -f -a '(_carapace_callback dsh)'
2	2	----> complete -e 'dtrace'
3	3	----> complete -c 'dtrace' -f -a '(_carapace_callback dtrace)'
1	1	----> complete -e 'dtruss'
3	3	----> complete -c 'dtruss' -f -a '(_carapace_callback dtruss)'
1	1	----> complete -e 'du'
4	4	----> complete -c 'du' -f -a '(_carapace_callback du)'
1	1	----> complete -e 'dumpadm'
3	3	----> complete -c 'dumpadm' -f -a '(_carapace_callback dumpadm)'
1	1	----> complete -e 'dumper'
3	3	----> complete -c 'dumper' -f -a '(_carapace_callback dumper)'
2	2	----> complete -e 'dupload'
4	4	----> complete -c 'dupload' -f -a '(_carapace_callback dupload)'
1	1	----> complete -e 'dvi'
3	3	----> complete -c 'dvi' -f -a '(_carapace_callback dvi)'
2	2	----> complete -e 'dynamic_directory_name'
5	5	----> complete -c 'dynamic_directory_name' -f -a '(_carapace_callback dynamic_directory_name)'
1	1	----> complete -e 'e2label'
4	4	----> complete -c 'e2label' -f -a '(_carapace_callback e2label)'
2	2	----> complete -e 'ebook-convert'
4	4	----> complete -c 'ebook-convert' -f -a '(_carapace_callback ebook-convert)'
2	2	----> complete -e 'ecasound'
3	3	----> complete -c 'ecasound' -f -a '(_carapace_callback ecasound)'
1	1	----> complete -e 'ed'
3	3	----> complete -c 'ed' -f -a '(_carapace_callback ed)'
1	1	----> complete -e 'egrep'
4	4	----> complete -c 'egrep' -f -a '(_carapace_callback egrep)'
1	1	----> complete -e 'electron'
3	3	----> complete -c 'electron' -f -a '(_carapace_callback electron)'
1	1	----> complete -e 'elfdump'
4	4	----> complete -c 'elfdump' -f -a '(_carapace_callback elfdump)'
1	1	----> complete -e 'elinks'
4	4	----> complete -c 'elinks' -f -a '(_carapace_callback elinks)'
1	1	----> complete -e 'elvish'
3	3	----> complete -c 'elvish' -f -a '(_carapace_callback elvish)'
2	2	----> complete -e 'email_addresses'
4	4	----> complete -c 'email_addresses' -f -a '(_carapace_callback email_addresses)'
2	2	----> complete -e 'enscript'
3	3	----> complete -c 'enscript' -f -a '(_carapace_callback enscript)'
1	1	----> complete -e 'env'
3	3	----> complete -c 'env' -f -a '(_carapace_callback env)'
1	1	----> complete -e 'envsubst'
3	3	----> complete -c 'envsubst' -f -a '(_carapace_callback envsubst)'
2	2	----> complete -e 'eog'
3	3	----> complete -c 'eog' -f -a '(_carapace_callback eog)'
1	1	----> complete -e 'equal'
4	4	----> complete -c 'equal' -f -a '(_carapace_callback equal)'
1	1	----> complete -e 'espeak'
3	3	----> complete -c 'espeak' -f -a '(_carapace_callback espeak)'
2	2	----> complete -e 'etags'
3	3	----> complete -c 'etags' -f -a '(_carapace_callback etags)'
1	1	----> complete -e 'exa'
4	4	----> complete -c 'exa' -f -a '(_carapace_callback exa)'
1	1	----> complete -e 'expand'
3	3	----> complete -c 'expand' -f -a '(_carapace_callback expand)'
2	2	----> complete -e 'expand_alias'
4	4	----> complete -c 'expand_alias' -f -a '(_carapace_callback expand_alias)'
2	2	----> complete -e 'expand_word'
4	4	----> complete -c 'expand_word' -f -a '(_carapace_callback expand_word)'
1	1	----> complete -e 'expr'
3	3	----> complete -c 'expr' -f -a '(_carapace_callback expr)'
1	1	----> complete -e 'extensions'
4	4	----> complete -c 'extensions' -f -a '(_carapace_callback extensions)'
2	2	----> complete -e 'external_pwds'
4	4	----> complete -c 'external_pwds' -f -a '(_carapace_callback external_pwds)'
1	1	----> complete -e 'eza'
3	3	----> complete -c 'eza' -f -a '(_carapace_callback eza)'
2	2	----> complete -e 'faas-cli'
3	3	----> complete -c 'faas-cli' -f -a '(_carapace_callback faas-cli)'
1	1	----> complete -e 'factor'
3	3	----> complete -c 'factor' -f -a '(_carapace_callback factor)'
2	2	----> complete -e 'fakechroot'
4	4	----> complete -c 'fakechroot' -f -a '(_carapace_callback fakechroot)'
2	2	----> complete -e 'fakeroot'
4	4	----> complete -c 'fakeroot' -f -a '(_carapace_callback fakeroot)'
1	1	----> complete -e 'fastfetch'
3	3	----> complete -c 'fastfetch' -f -a '(_carapace_callback fastfetch)'
1	1	----> complete -e 'fbsd_architectures'
4	4	----> complete -c 'fbsd_architectures' -f -a '(_carapace_callback fbsd_architectures)'
1	1	----> complete -e 'fbsd_device_types'
9	9	----> complete -c 'fbsd_device_types' -f -a '(_carapace_callback fbsd_device_types)'
1	1	----> complete -e 'fc-cache'
3	3	----> complete -c 'fc-cache' -f -a '(_carapace_callback fc-cache)'
1	1	----> complete -e 'fc-cat'
3	3	----> complete -c 'fc-cat' -f -a '(_carapace_callback fc-cat)'
2	2	----> complete -e 'fc-conflist'
4	4	----> complete -c 'fc-conflist' -f -a '(_carapace_callback fc-conflist)'
2	2	----> complete -e 'fc-list'
3	3	----> complete -c 'fc-list' -f -a '(_carapace_callback fc-list)'
1	1	----> complete -e 'fd'
4	4	----> complete -c 'fd' -f -a '(_carapace_callback fd)'
2	2	----> complete -e 'fdisk'
4	4	----> complete -c 'fdisk' -f -a '(_carapace_callback fdisk)'
1	1	----> complete -e 'fetch'
4	4	----> complete -c 'fetch' -f -a '(_carapace_callback fetch)'
2	2	----> complete -e 'fetchmail'
3	3	----> complete -c 'fetchmail' -f -a '(_carapace_callback fetchmail)'
1	1	----> complete -e 'ffmpeg'
3	3	----> complete -c 'ffmpeg' -f -a '(_carapace_callback ffmpeg)'
2	2	----> complete -e 'fgrep'
3	3	----> complete -c 'fgrep' -f -a '(_carapace_callback fgrep)'
1	1	----> complete -e 'file'
4	4	----> complete -c 'file' -f -a '(_carapace_callback file)'
1	1	----> complete -e 'file_descriptors'
4	4	----> complete -c 'file_descriptors' -f -a '(_carapace_callback file_descriptors)'
2	2	----> complete -e 'file_flags'
3	3	----> complete -c 'file_flags' -f -a '(_carapace_callback file_flags)'
3	3	----> complete -e 'file_modes'
4	4	----> complete -c 'file_modes' -f -a '(_carapace_callback file_modes)'
2	2	----> complete -e 'file_systems'
4	4	----> complete -c 'file_systems' -f -a '(_carapace_callback file_systems)'
1	1	----> complete -e 'fileicon'
3	3	----> complete -c 'fileicon' -f -a '(_carapace_callback fileicon)'
1	1	----> complete -e 'files'
4	4	----> complete -c 'files' -f -a '(_carapace_callback files)'
2	2	----> complete -e 'find'
3	3	----> complete -c 'find' -f -a '(_carapace_callback find)'
2	2	----> complete -e 'find_net_interfaces'
4	4	----> complete -c 'find_net_interfaces' -f -a '(_carapace_callback find_net_interfaces)'
1	1	----> complete -e 'findmnt'
3	3	----> complete -c 'findmnt' -f -a '(_carapace_callback findmnt)'
1	1	----> complete -e 'finger'
4	4	----> complete -c 'finger' -f -a '(_carapace_callback finger)'
1	1	----> complete -e 'fink'
3	3	----> complete -c 'fink' -f -a '(_carapace_callback fink)'
2	2	----> complete -e 'firefox'
3	3	----> complete -c 'firefox' -f -a '(_carapace_callback firefox)'
1	1	----> complete -e 'first'
4	4	----> complete -c 'first' -f -a '(_carapace_callback first)'
1	1	----> complete -e 'fish'
4	4	----> complete -c 'fish' -f -a '(_carapace_callback fish)'
2	2	----> complete -e 'flatpak'
3	3	----> complete -c 'flatpak' -f -a '(_carapace_callback flatpak)'
1	1	----> complete -e 'flex'
4	4	----> complete -c 'flex' -f -a '(_carapace_callback flex)'
2	2	----> complete -e 'floppy'
4	4	----> complete -c 'floppy' -f -a '(_carapace_callback floppy)'
1	1	----> complete -e 'flowadm'
3	3	----> complete -c 'flowadm' -f -a '(_carapace_callback flowadm)'
1	1	----> complete -e 'flutter'
4	4	----> complete -c 'flutter' -f -a '(_carapace_callback flutter)'
1	1	----> complete -e 'fmadm'
3	3	----> complete -c 'fmadm' -f -a '(_carapace_callback fmadm)'
2	2	----> complete -e 'fmt'
3	3	----> complete -c 'fmt' -f -a '(_carapace_callback fmt)'
1	1	----> complete -e 'fnm'
4	4	----> complete -c 'fnm' -f -a '(_carapace_callback fnm)'
1	1	----> complete -e 'fold'
3	3	----> complete -c 'fold' -f -a '(_carapace_callback fold)'
1	1	----> complete -e 'foot'
3	3	----> complete -c 'foot' -f -a '(_carapace_callback foot)'
2	2	----> complete -e 'free'
3	3	----> complete -c 'free' -f -a '(_carapace_callback free)'
1	1	----> complete -e 'freebsd-update'
4	4	----> complete -c 'freebsd-update' -f -a '(_carapace_callback freebsd-update)'
1	1	----> complete -e 'freeze'
4	4	----> complete -c 'freeze' -f -a '(_carapace_callback freeze)'
2	2	----> complete -e 'fs_usage'
3	3	----> complete -c 'fs_usage' -f -a '(_carapace_callback fs_usage)'
1	1	----> complete -e 'fsh'
3	3	----> complete -c 'fsh' -f -a '(_carapace_callback fsh)'
1	1	----> complete -e 'fstat'
3	3	----> complete -c 'fstat' -f -a '(_carapace_callback fstat)'
1	1	----> complete -e 'ftp'
3	3	----> complete -c 'ftp' -f -a '(_carapace_callback ftp)'
2	2	----> complete -e 'ftpd'
3	3	----> complete -c 'ftpd' -f -a '(_carapace_callback ftpd)'
2	2	----> complete -e 'fury'
3	3	----> complete -c 'fury' -f -a '(_carapace_callback fury)'
1	1	----> complete -e 'fuse_arguments'
4	4	----> complete -c 'fuse_arguments' -f -a '(_carapace_callback fuse_arguments)'
2	2	----> complete -e 'fuse_values'
4	4	----> complete -c 'fuse_values' -f -a '(_carapace_callback fuse_values)'
2	2	----> complete -e 'fw_update'
3	3	----> complete -c 'fw_update' -f -a '(_carapace_callback fw_update)'
1	1	----> complete -e 'fzf'
3	3	----> complete -c 'fzf' -f -a '(_carapace_callback fzf)'
2	2	----> complete -e 'gatsby'
3	3	----> complete -c 'gatsby' -f -a '(_carapace_callback gatsby)'
2	2	----> complete -e 'gcloud'
3	3	----> complete -c 'gcloud' -f -a '(_carapace_callback gcloud)'
1	1	----> complete -e 'gcore'
4	4	----> complete -c 'gcore' -f -a '(_carapace_callback gcore)'
1	1	----> complete -e 'gdb'
3	3	----> complete -c 'gdb' -f -a '(_carapace_callback gdb)'
2	2	----> complete -e 'gdown'
4	4	----> complete -c 'gdown' -f -a '(_carapace_callback gdown)'
1	1	----> complete -e 'gdu'
4	4	----> complete -c 'gdu' -f -a '(_carapace_callback gdu)'
1	1	----> complete -e 'geany'
3	3	----> complete -c 'geany' -f -a '(_carapace_callback geany)'
2	2	----> complete -e 'generic'
3	3	----> complete -c 'generic' -f -a '(_carapace_callback generic)'
1	1	----> complete -e 'genisoimage'
4	4	----> complete -c 'genisoimage' -f -a '(_carapace_callback genisoimage)'
2	2	----> complete -e 'get-env'
3	3	----> complete -c 'get-env' -f -a '(_carapace_callback get-env)'
1	1	----> complete -e 'getclip'
3	3	----> complete -c 'getclip' -f -a '(_carapace_callback getclip)'
1	1	----> complete -e 'getconf'
3	3	----> complete -c 'getconf' -f -a '(_carapace_callback getconf)'
2	2	----> complete -e 'getent'
3	3	----> complete -c 'getent' -f -a '(_carapace_callback getent)'
1	1	----> complete -e 'getfacl'
3	3	----> complete -c 'getfacl' -f -a '(_carapace_callback getfacl)'
2	2	----> complete -e 'getmail'
3	3	----> complete -c 'getmail' -f -a '(_carapace_callback getmail)'
1	1	----> complete -e 'getopt'
3	3	----> complete -c 'getopt' -f -a '(_carapace_callback getopt)'
1	1	----> complete -e 'gftp'
3	3	----> complete -c 'gftp' -f -a '(_carapace_callback gftp)'
1	1	----> complete -e 'gh'
3	3	----> complete -c 'gh' -f -a '(_carapace_callback gh)'
2	2	----> complete -e 'gh-copilot'
4	4	----> complete -c 'gh-copilot' -f -a '(_carapace_callback gh-copilot)'
1	1	----> complete -e 'gh-dash'
3	3	----> complete -c 'gh-dash' -f -a '(_carapace_callback gh-dash)'
2	2	----> complete -e 'ghostscript'
4	4	----> complete -c 'ghostscript' -f -a '(_carapace_callback ghostscript)'
1	1	----> complete -e 'ghostty'
3	3	----> complete -c 'ghostty' -f -a '(_carapace_callback ghostty)'
2	2	----> complete -e 'gimp'
3	3	----> complete -c 'gimp' -f -a '(_carapace_callback gimp)'
1	1	----> complete -e 'git'
3	3	----> complete -c 'git' -f -a '(_carapace_callback git)'
1	1	----> complete -e 'git-abort'
4	4	----> complete -c 'git-abort' -f -a '(_carapace_callback git-abort)'
2	2	----> complete -e 'git-alias'
3	3	----> complete -c 'git-alias' -f -a '(_carapace_callback git-alias)'
1	1	----> complete -e 'git-archive-file'
4	4	----> complete -c 'git-archive-file' -f -a '(_carapace_callback git-archive-file)'
1	1	----> complete -e 'git-authors'
4	4	----> complete -c 'git-authors' -f -a '(_carapace_callback git-authors)'
2	2	----> complete -e 'git-browse'
3	3	----> complete -c 'git-browse' -f -a '(_carapace_callback git-browse)'
1	1	----> complete -e 'git-browse-ci'
4	4	----> complete -c 'git-browse-ci' -f -a '(_carapace_callback git-browse-ci)'
1	1	----> complete -e 'git-buildpackage'
3	3	----> complete -c 'git-buildpackage' -f -a '(_carapace_callback git-buildpackage)'
1	1	----> complete -e 'git-clang-format'
4	4	----> complete -c 'git-clang-format' -f -a '(_carapace_callback git-clang-format)'
1	1	----> complete -e 'git-clear'
4	4	----> complete -c 'git-clear' -f -a '(_carapace_callback git-clear)'
1	1	----> complete -e 'git-clear-soft'
4	4	----> complete -c 'git-clear-soft' -f -a '(_carapace_callback git-clear-soft)'
1	1	----> complete -e 'git-coauthor'
3	3	----> complete -c 'git-coauthor' -f -a '(_carapace_callback git-coauthor)'
1	1	----> complete -e 'git-extras'
3	3	----> complete -c 'git-extras' -f -a '(_carapace_callback git-extras)'
2	2	----> complete -e 'git-info'
4	4	----> complete -c 'git-info' -f -a '(_carapace_callback git-info)'
1	1	----> complete -e 'git-standup'
3	3	----> complete -c 'git-standup' -f -a '(_carapace_callback git-standup)'
1	1	----> complete -e 'git-unlock'
4	4	----> complete -c 'git-unlock' -f -a '(_carapace_callback git-unlock)'
2	2	----> complete -e 'git-utimes'
4	4	----> complete -c 'git-utimes' -f -a '(_carapace_callback git-utimes)'
2	2	----> complete -e 'gitk'
3	3	----> complete -c 'gitk' -f -a '(_carapace_callback gitk)'
1	1	----> complete -e 'gitui'
4	4	----> complete -c 'gitui' -f -a '(_carapace_callback gitui)'
2	2	----> complete -e 'glab'
4	4	----> complete -c 'glab' -f -a '(_carapace_callback glab)'
1	1	----> complete -e 'global'
4	4	----> complete -c 'global' -f -a '(_carapace_callback global)'
1	1	----> complete -e 'global_tags'
4	4	----> complete -c 'global_tags' -f -a '(_carapace_callback global_tags)'
1	1	----> complete -e 'globflags'
5	5	----> complete -c 'globflags' -f -a '(_carapace_callback globflags)'
2	2	----> complete -e 'globqual_delims'
4	4	----> complete -c 'globqual_delims' -f -a '(_carapace_callback globqual_delims)'
1	1	----> complete -e 'globquals'
3	3	----> complete -c 'globquals' -f -a '(_carapace_callback globquals)'
1	1	----> complete -e 'glow'
4	4	----> complete -c 'glow' -f -a '(_carapace_callback glow)'
1	1	----> complete -e 'gm'
3	3	----> complete -c 'gm' -f -a '(_carapace_callback gm)'
1	1	----> complete -e 'gnome-gv'
3	3	----> complete -c 'gnome-gv' -f -a '(_carapace_callback gnome-gv)'
1	1	----> complete -e 'gnome-keyring'
4	4	----> complete -c 'gnome-keyring' -f -a '(_carapace_callback gnome-keyring)'
2	2	----> complete -e 'gnome-keyring-daemon'
5	5	----> complete -c 'gnome-keyring-daemon' -f -a '(_carapace_callback gnome-keyring-daemon)'
1	1	----> complete -e 'gnome-maps'
3	3	----> complete -c 'gnome-maps' -f -a '(_carapace_callback gnome-maps)'
2	2	----> complete -e 'gnome-terminal'
4	4	----> complete -c 'gnome-terminal' -f -a '(_carapace_callback gnome-terminal)'
1	1	----> complete -e 'gnu_generic'
4	4	----> complete -c 'gnu_generic' -f -a '(_carapace_callback gnu_generic)'
2	2	----> complete -e 'gnupod'
3	3	----> complete -c 'gnupod' -f -a '(_carapace_callback gnupod)'
1	1	----> complete -e 'gnutls'
3	3	----> complete -c 'gnutls' -f -a '(_carapace_callback gnutls)'
1	1	----> complete -e 'go'
3	3	----> complete -c 'go' -f -a '(_carapace_callback go)'
1	1	----> complete -e 'go-carpet'
4	4	----> complete -c 'go-carpet' -f -a '(_carapace_callback go-carpet)'
2	2	----> complete -e 'go-tool-asm'
4	4	----> complete -c 'go-tool-asm' -f -a '(_carapace_callback go-tool-asm)'
2	2	----> complete -e 'go-tool-buildid'
4	4	----> complete -c 'go-tool-buildid' -f -a '(_carapace_callback go-tool-buildid)'
2	2	----> complete -e 'go-tool-cgo'
4	4	----> complete -c 'go-tool-cgo' -f -a '(_carapace_callback go-tool-cgo)'
2	2	----> complete -e 'go-tool-compile'
4	4	----> complete -c 'go-tool-compile' -f -a '(_carapace_callback go-tool-compile)'
2	2	----> complete -e 'go-tool-covdata'
4	4	----> complete -c 'go-tool-covdata' -f -a '(_carapace_callback go-tool-covdata)'
2	2	----> complete -e 'go-tool-cover'
4	4	----> complete -c 'go-tool-cover' -f -a '(_carapace_callback go-tool-cover)'
2	2	----> complete -e 'go-tool-dist'
3	3	----> complete -c 'go-tool-dist' -f -a '(_carapace_callback go-tool-dist)'
1	1	----> complete -e 'go-tool-doc'
3	3	----> complete -c 'go-tool-doc' -f -a '(_carapace_callback go-tool-doc)'
1	1	----> complete -e 'go-tool-fix'
3	3	----> complete -c 'go-tool-fix' -f -a '(_carapace_callback go-tool-fix)'
1	1	----> complete -e 'go-tool-link'
4	4	----> complete -c 'go-tool-link' -f -a '(_carapace_callback go-tool-link)'
2	2	----> complete -e 'go-tool-mockgen'
4	4	----> complete -c 'go-tool-mockgen' -f -a '(_carapace_callback go-tool-mockgen)'
2	2	----> complete -e 'go-tool-nm'
4	4	----> complete -c 'go-tool-nm' -f -a '(_carapace_callback go-tool-nm)'
2	2	----> complete -e 'go-tool-objdump'
4	4	----> complete -c 'go-tool-objdump' -f -a '(_carapace_callback go-tool-objdump)'
1	1	----> complete -e 'go-tool-pack'
3	3	----> complete -c 'go-tool-pack' -f -a '(_carapace_callback go-tool-pack)'
1	1	----> complete -e 'gocyclo'
4	4	----> complete -c 'gocyclo' -f -a '(_carapace_callback gocyclo)'
2	2	----> complete -e 'gofmt'
3	3	----> complete -c 'gofmt' -f -a '(_carapace_callback gofmt)'
1	1	----> complete -e 'goimports'
4	4	----> complete -c 'goimports' -f -a '(_carapace_callback goimports)'
2	2	----> complete -e 'golangci-lint'
4	4	----> complete -c 'golangci-lint' -f -a '(_carapace_callback golangci-lint)'
1	1	----> complete -e 'gonew'
3	3	----> complete -c 'gonew' -f -a '(_carapace_callback gonew)'
2	2	----> complete -e 'google-chrome'
4	4	----> complete -c 'google-chrome' -f -a '(_carapace_callback google-chrome)'
1	1	----> complete -e 'gopls'
3	3	----> complete -c 'gopls' -f -a '(_carapace_callback gopls)'
2	2	----> complete -e 'goreleaser'
4	4	----> complete -c 'goreleaser' -f -a '(_carapace_callback goreleaser)'
1	1	----> complete -e 'goweight'
3	3	----> complete -c 'goweight' -f -a '(_carapace_callback goweight)'
1	1	----> complete -e 'gparted'
4	4	----> complete -c 'gparted' -f -a '(_carapace_callback gparted)'
2	2	----> complete -e 'gpasswd'
3	3	----> complete -c 'gpasswd' -f -a '(_carapace_callback gpasswd)'
1	1	----> complete -e 'gpg'
3	3	----> complete -c 'gpg' -f -a '(_carapace_callback gpg)'
1	1	----> complete -e 'gpg-agent'
4	4	----> complete -c 'gpg-agent' -f -a '(_carapace_callback gpg-agent)'
1	1	----> complete -e 'gqview'
3	3	----> complete -c 'gqview' -f -a '(_carapace_callback gqview)'
1	1	----> complete -e 'gradle'
4	4	----> complete -c 'gradle' -f -a '(_carapace_callback gradle)'
2	2	----> complete -e 'graphicsmagick'
4	4	----> complete -c 'graphicsmagick' -f -a '(_carapace_callback graphicsmagick)'
1	1	----> complete -e 'grep'
3	3	----> complete -c 'grep' -f -a '(_carapace_callback grep)'
2	2	----> complete -e 'grep-excuses'
4	4	----> complete -c 'grep-excuses' -f -a '(_carapace_callback grep-excuses)'
1	1	----> complete -e 'groff'
3	3	----> complete -c 'groff' -f -a '(_carapace_callback groff)'
1	1	----> complete -e 'groupadd'
4	4	----> complete -c 'groupadd' -f -a '(_carapace_callback groupadd)'
2	2	----> complete -e 'groupdel'
5	5	----> complete -c 'groupdel' -f -a '(_carapace_callback groupdel)'
2	2	----> complete -e 'groupmems'
4	4	----> complete -c 'groupmems' -f -a '(_carapace_callback groupmems)'
2	2	----> complete -e 'groupmod'
4	4	----> complete -c 'groupmod' -f -a '(_carapace_callback groupmod)'
1	1	----> complete -e 'groups'
4	4	----> complete -c 'groups' -f -a '(_carapace_callback groups)'
1	1	----> complete -e 'growisofs'
4	4	----> complete -c 'growisofs' -f -a '(_carapace_callback growisofs)'
2	2	----> complete -e 'grype'
5	5	----> complete -c 'grype' -f -a '(_carapace_callback grype)'
2	2	----> complete -e 'gsa'
3	3	----> complete -c 'gsa' -f -a '(_carapace_callback gsa)'
1	1	----> complete -e 'gstat'
3	3	----> complete -c 'gstat' -f -a '(_carapace_callback gstat)'
2	2	----> complete -e 'guard'
3	3	----> complete -c 'guard' -f -a '(_carapace_callback guard)'
1	1	----> complete -e 'guilt'
3	3	----> complete -c 'guilt' -f -a '(_carapace_callback guilt)'
2	2	----> complete -e 'gulp'
3	3	----> complete -c 'gulp' -f -a '(_carapace_callback gulp)'
1	1	----> complete -e 'gum'
4	4	----> complete -c 'gum' -f -a '(_carapace_callback gum)'
1	1	----> complete -e 'gunzip'
3	3	----> complete -c 'gunzip' -f -a '(_carapace_callback gunzip)'
2	2	----> complete -e 'gzip'
3	3	----> complete -c 'gzip' -f -a '(_carapace_callback gzip)'
1	1	----> complete -e 'halt'
3	3	----> complete -c 'halt' -f -a '(_carapace_callback halt)'
2	2	----> complete -e 'have_glob_qual'
4	4	----> complete -c 'have_glob_qual' -f -a '(_carapace_callback have_glob_qual)'
1	1	----> complete -e 'hdiutil'
4	4	----> complete -c 'hdiutil' -f -a '(_carapace_callback hdiutil)'
2	2	----> complete -e 'head'
3	3	----> complete -c 'head' -f -a '(_carapace_callback head)'
1	1	----> complete -e 'helix'
4	4	----> complete -c 'helix' -f -a '(_carapace_callback helix)'
1	1	----> complete -e 'helm'
3	3	----> complete -c 'helm' -f -a '(_carapace_callback helm)'
2	2	----> complete -e 'helmsman'
4	4	----> complete -c 'helmsman' -f -a '(_carapace_callback helmsman)'
1	1	----> complete -e 'hexchat'
3	3	----> complete -c 'hexchat' -f -a '(_carapace_callback hexchat)'
1	1	----> complete -e 'hexdump'
4	4	----> complete -c 'hexdump' -f -a '(_carapace_callback hexdump)'
2	2	----> complete -e 'history_complete_word'
4	4	----> complete -c 'history_complete_word' -f -a '(_carapace_callback history_complete_word)'
1	1	----> complete -e 'history_modifiers'
3	3	----> complete -c 'history_modifiers' -f -a '(_carapace_callback history_modifiers)'
1	1	----> complete -e 'host'
3	3	----> complete -c 'host' -f -a '(_carapace_callback host)'
2	2	----> complete -e 'hostid'
3	3	----> complete -c 'hostid' -f -a '(_carapace_callback hostid)'
1	1	----> complete -e 'hostname'
3	3	----> complete -c 'hostname' -f -a '(_carapace_callback hostname)'
2	2	----> complete -e 'hosts'
3	3	----> complete -c 'hosts' -f -a '(_carapace_callback hosts)'
2	2	----> complete -e 'htop'
5	5	----> complete -c 'htop' -f -a '(_carapace_callback htop)'
2	2	----> complete -e 'http'
3	3	----> complete -c 'http' -f -a '(_carapace_callback http)'
1	1	----> complete -e 'https'
4	4	----> complete -c 'https' -f -a '(_carapace_callback https)'
2	2	----> complete -e 'hugetop'
3	3	----> complete -c 'hugetop' -f -a '(_carapace_callback hugetop)'
1	1	----> complete -e 'hugo'
4	4	----> complete -c 'hugo' -f -a '(_carapace_callback hugo)'
2	2	----> complete -e 'hurl'
3	3	----> complete -c 'hurl' -f -a '(_carapace_callback hurl)'
1	1	----> complete -e 'hwinfo'
4	4	----> complete -c 'hwinfo' -f -a '(_carapace_callback hwinfo)'
1	1	----> complete -e 'hx'
3	3	----> complete -c 'hx' -f -a '(_carapace_callback hx)'
1	1	----> complete -e 'i3'
4	4	----> complete -c 'i3' -f -a '(_carapace_callback i3)'
2	2	----> complete -e 'i3-scrot'
3	3	----> complete -c 'i3-scrot' -f -a '(_carapace_callback i3-scrot)'
1	1	----> complete -e 'i3exit'
3	3	----> complete -c 'i3exit' -f -a '(_carapace_callback i3exit)'
1	1	----> complete -e 'i3lock'
4	4	----> complete -c 'i3lock' -f -a '(_carapace_callback i3lock)'
1	1	----> complete -e 'i3status'
3	3	----> complete -c 'i3status' -f -a '(_carapace_callback i3status)'
1	1	----> complete -e 'i3status-rs'
4	4	----> complete -c 'i3status-rs' -f -a '(_carapace_callback i3status-rs)'
2	2	----> complete -e 'iconvconfig'
4	4	----> complete -c 'iconvconfig' -f -a '(_carapace_callback iconvconfig)'
1	1	----> complete -e 'id'
3	3	----> complete -c 'id' -f -a '(_carapace_callback id)'
1	1	----> complete -e 'ignored'
3	3	----> complete -c 'ignored' -f -a '(_carapace_callback ignored)'
2	2	----> complete -e 'imagemagick'
4	4	----> complete -c 'imagemagick' -f -a '(_carapace_callback imagemagick)'
1	1	----> complete -e 'imv'
3	3	----> complete -c 'imv' -f -a '(_carapace_callback imv)'
1	1	----> complete -e 'in_vared'
4	4	----> complete -c 'in_vared' -f -a '(_carapace_callback in_vared)'
2	2	----> complete -e 'inetadm'
3	3	----> complete -c 'inetadm' -f -a '(_carapace_callback inetadm)'
1	1	----> complete -e 'init_d'
4	4	----> complete -c 'init_d' -f -a '(_carapace_callback init_d)'
2	2	----> complete -e 'initctl'
3	3	----> complete -c 'initctl' -f -a '(_carapace_callback initctl)'
1	1	----> complete -e 'inkscape'
3	3	----> complete -c 'inkscape' -f -a '(_carapace_callback inkscape)'
1	1	----> complete -e 'inshellisense'
4	4	----> complete -c 'inshellisense' -f -a '(_carapace_callback inshellisense)'
1	1	----> complete -e 'install'
4	4	----> complete -c 'install' -f -a '(_carapace_callback install)'
1	1	----> complete -e 'ion'
4	4	----> complete -c 'ion' -f -a '(_carapace_callback ion)'
1	1	----> complete -e 'ionice'
4	4	----> complete -c 'ionice' -f -a '(_carapace_callback ionice)'
2	2	----> complete -e 'iostat'
4	4	----> complete -c 'iostat' -f -a '(_carapace_callback iostat)'
1	1	----> complete -e 'ipadm'
4	4	----> complete -c 'ipadm' -f -a '(_carapace_callback ipadm)'
1	1	----> complete -e 'ipfw'
3	3	----> complete -c 'ipfw' -f -a '(_carapace_callback ipfw)'
1	1	----> complete -e 'ipsec'
3	3	----> complete -c 'ipsec' -f -a '(_carapace_callback ipsec)'
1	1	----> complete -e 'irssi'
6	6	----> complete -c 'irssi' -f -a '(_carapace_callback irssi)'
1	1	----> complete -e 'ispell'
3	3	----> complete -c 'ispell' -f -a '(_carapace_callback ispell)'
2	2	----> complete -e 'iwconfig'
3	3	----> complete -c 'iwconfig' -f -a '(_carapace_callback iwconfig)'
1	1	----> complete -e 'jail'
3	3	----> complete -c 'jail' -f -a '(_carapace_callback jail)'
1	1	----> complete -e 'jails'
4	4	----> complete -c 'jails' -f -a '(_carapace_callback jails)'
2	2	----> complete -e 'jar'
3	3	----> complete -c 'jar' -f -a '(_carapace_callback jar)'
2	2	----> complete -e 'java'
4	4	----> complete -c 'java' -f -a '(_carapace_callback java)'
1	1	----> complete -e 'java_class'
3	3	----> complete -c 'java_class' -f -a '(_carapace_callback java_class)'
1	1	----> complete -e 'javac'
4	4	----> complete -c 'javac' -f -a '(_carapace_callback javac)'
1	1	----> complete -e 'jexec'
3	3	----> complete -c 'jexec' -f -a '(_carapace_callback jexec)'
2	2	----> complete -e 'jj'
3	3	----> complete -c 'jj' -f -a '(_carapace_callback jj)'
1	1	----> complete -e 'jls'
4	4	----> complete -c 'jls' -f -a '(_carapace_callback jls)'
1	1	----> complete -e 'jobs_bg'
3	3	----> complete -c 'jobs_bg' -f -a '(_carapace_callback jobs_bg)'
1	1	----> complete -e 'jobs_builtin'
4	4	----> complete -c 'jobs_builtin' -f -a '(_carapace_callback jobs_builtin)'
1	1	----> complete -e 'jobs_fg'
3	3	----> complete -c 'jobs_fg' -f -a '(_carapace_callback jobs_fg)'
1	1	----> complete -e 'joe'
4	4	----> complete -c 'joe' -f -a '(_carapace_callback joe)'
1	1	----> complete -e 'join'
3	3	----> complete -c 'join' -f -a '(_carapace_callback join)'
1	1	----> complete -e 'jot'
4	4	----> complete -c 'jot' -f -a '(_carapace_callback jot)'
2	2	----> complete -e 'journalctl'
3	3	----> complete -c 'journalctl' -f -a '(_carapace_callback journalctl)'
1	1	----> complete -e 'jq'
3	3	----> complete -c 'jq' -f -a '(_carapace_callback jq)'
2	2	----> complete -e 'julia'
4	4	----> complete -c 'julia' -f -a '(_carapace_callback julia)'
1	1	----> complete -e 'just'
4	4	----> complete -c 'just' -f -a '(_carapace_callback just)'
1	1	----> complete -e 'kak'
4	4	----> complete -c 'kak' -f -a '(_carapace_callback kak)'
2	2	----> complete -e 'kak-lsp'
3	3	----> complete -c 'kak-lsp' -f -a '(_carapace_callback kak-lsp)'
1	1	----> complete -e 'kdeconnect'
3	3	----> complete -c 'kdeconnect' -f -a '(_carapace_callback kdeconnect)'
2	2	----> complete -e 'kdump'
4	4	----> complete -c 'kdump' -f -a '(_carapace_callback kdump)'
1	1	----> complete -e 'kfmclient'
3	3	----> complete -c 'kfmclient' -f -a '(_carapace_callback kfmclient)'
1	1	----> complete -e 'kill'
3	3	----> complete -c 'kill' -f -a '(_carapace_callback kill)'
2	2	----> complete -e 'killall'
4	4	----> complete -c 'killall' -f -a '(_carapace_callback killall)'
2	2	----> complete -e 'kitten'
3	3	----> complete -c 'kitten' -f -a '(_carapace_callback kitten)'
1	1	----> complete -e 'kitty'
3	3	----> complete -c 'kitty' -f -a '(_carapace_callback kitty)'
2	2	----> complete -e 'kld'
4	4	----> complete -c 'kld' -f -a '(_carapace_callback kld)'
1	1	----> complete -e 'kmonad'
3	3	----> complete -c 'kmonad' -f -a '(_carapace_callback kmonad)'
2	2	----> complete -e 'knock'
4	4	----> complete -c 'knock' -f -a '(_carapace_callback knock)'
1	1	----> complete -e 'kompose'
3	3	----> complete -c 'kompose' -f -a '(_carapace_callback kompose)'
1	1	----> complete -e 'kotlin'
4	4	----> complete -c 'kotlin' -f -a '(_carapace_callback kotlin)'
2	2	----> complete -e 'kotlinc'
3	3	----> complete -c 'kotlinc' -f -a '(_carapace_callback kotlinc)'
1	1	----> complete -e 'kpartx'
4	4	----> complete -c 'kpartx' -f -a '(_carapace_callback kpartx)'
2	2	----> complete -e 'ktlint'
3	3	----> complete -c 'ktlint' -f -a '(_carapace_callback ktlint)'
1	1	----> complete -e 'ktrace'
3	3	----> complete -c 'ktrace' -f -a '(_carapace_callback ktrace)'
2	2	----> complete -e 'ktrace_points'
4	4	----> complete -c 'ktrace_points' -f -a '(_carapace_callback ktrace_points)'
2	2	----> complete -e 'kubeadm'
3	3	----> complete -c 'kubeadm' -f -a '(_carapace_callback kubeadm)'
1	1	----> complete -e 'kubectl'
3	3	----> complete -c 'kubectl' -f -a '(_carapace_callback kubectl)'
2	2	----> complete -e 'kubeseal'
4	4	----> complete -c 'kubeseal' -f -a '(_carapace_callback kubeseal)'
2	2	----> complete -e 'kvno'
3	3	----> complete -c 'kvno' -f -a '(_carapace_callback kvno)'
1	1	----> complete -e 'last'
3	3	----> complete -c 'last' -f -a '(_carapace_callback last)'
2	2	----> complete -e 'lastb'
4	4	----> complete -c 'lastb' -f -a '(_carapace_callback lastb)'
1	1	----> complete -e 'lastlog'
3	3	----> complete -c 'lastlog' -f -a '(_carapace_callback lastlog)'
2	2	----> complete -e 'lazygit'
4	4	----> complete -c 'lazygit' -f -a '(_carapace_callback lazygit)'
2	2	----> complete -e 'ld_debug'
4	4	----> complete -c 'ld_debug' -f -a '(_carapace_callback ld_debug)'
1	1	----> complete -e 'ldap'
4	4	----> complete -c 'ldap' -f -a '(_carapace_callback ldap)'
2	2	----> complete -e 'ldconfig'
4	4	----> complete -c 'ldconfig' -f -a '(_carapace_callback ldconfig)'
1	1	----> complete -e 'ldd'
4	4	----> complete -c 'ldd' -f -a '(_carapace_callback ldd)'
2	2	----> complete -e 'lf'
3	3	----> complete -c 'lf' -f -a '(_carapace_callback lf)'
1	1	----> complete -e 'lha'
4	4	----> complete -c 'lha' -f -a '(_carapace_callback lha)'
1	1	----> complete -e 'libvirt'
4	4	----> complete -c 'libvirt' -f -a '(_carapace_callback libvirt)'
1	1	----> complete -e 'light'
4	4	----> complete -c 'light' -f -a '(_carapace_callback light)'
2	2	----> complete -e 'lightdm'
4	4	----> complete -c 'lightdm' -f -a '(_carapace_callback lightdm)'
2	2	----> complete -e 'lighttpd'
5	5	----> complete -c 'lighttpd' -f -a '(_carapace_callback lighttpd)'
2	2	----> complete -e 'limits'
4	4	----> complete -c 'limits' -f -a '(_carapace_callback limits)'
2	2	----> complete -e 'link'
3	3	----> complete -c 'link' -f -a '(_carapace_callback link)'
1	1	----> complete -e 'links'
3	3	----> complete -c 'links' -f -a '(_carapace_callback links)'
2	2	----> complete -e 'lintian'
3	3	----> complete -c 'lintian' -f -a '(_carapace_callback lintian)'
1	1	----> complete -e 'list'
4	4	----> complete -c 'list' -f -a '(_carapace_callback list)'
2	2	----> complete -e 'list_files'
4	4	----> complete -c 'list_files' -f -a '(_carapace_callback list_files)'
1	1	----> complete -e 'lldb'
3	3	----> complete -c 'lldb' -f -a '(_carapace_callback lldb)'
1	1	----> complete -e 'ln'
3	3	----> complete -c 'ln' -f -a '(_carapace_callback ln)'
1	1	----> complete -e 'lnav'
4	4	----> complete -c 'lnav' -f -a '(_carapace_callback lnav)'
1	1	----> complete -e 'lncrawl'
3	3	----> complete -c 'lncrawl' -f -a '(_carapace_callback lncrawl)'
1	1	----> complete -e 'locale'
4	4	----> complete -c 'locale' -f -a '(_carapace_callback locale)'
1	1	----> complete -e 'localectl'
3	3	----> complete -c 'localectl' -f -a '(_carapace_callback localectl)'
1	1	----> complete -e 'localedef'
3	3	----> complete -c 'localedef' -f -a '(_carapace_callback localedef)'
2	2	----> complete -e 'locales'
3	3	----> complete -c 'locales' -f -a '(_carapace_callback locales)'
1	1	----> complete -e 'logger'
3	3	----> complete -c 'logger' -f -a '(_carapace_callback logger)'
2	2	----> complete -e 'logical_volumes'
4	4	----> complete -c 'logical_volumes' -f -a '(_carapace_callback logical_volumes)'
2	2	----> complete -e 'login_classes'
5	5	----> complete -c 'login_classes' -f -a '(_carapace_callback login_classes)'
1	1	----> complete -e 'logname'
4	4	----> complete -c 'logname' -f -a '(_carapace_callback logname)'
1	1	----> complete -e 'look'
3	3	----> complete -c 'look' -f -a '(_carapace_callback look)'
2	2	----> complete -e 'ls'
3	3	----> complete -c 'ls' -f -a '(_carapace_callback ls)'
1	1	----> complete -e 'lsattr'
4	4	----> complete -c 'lsattr' -f -a '(_carapace_callback lsattr)'
2	2	----> complete -e 'lsb_release'
4	4	----> complete -c 'lsb_release' -f -a '(_carapace_callback lsb_release)'
2	2	----> complete -e 'lsblk'
3	3	----> complete -c 'lsblk' -f -a '(_carapace_callback lsblk)'
1	1	----> complete -e 'lscfg'
3	3	----> complete -c 'lscfg' -f -a '(_carapace_callback lscfg)'
2	2	----> complete -e 'lsclocks'
4	4	----> complete -c 'lsclocks' -f -a '(_carapace_callback lsclocks)'
1	1	----> complete -e 'lscpu'
3	3	----> complete -c 'lscpu' -f -a '(_carapace_callback lscpu)'
1	1	----> complete -e 'lsdev'
3	3	----> complete -c 'lsdev' -f -a '(_carapace_callback lsdev)'
1	1	----> complete -e 'lsfd'
3	3	----> complete -c 'lsfd' -f -a '(_carapace_callback lsfd)'
2	2	----> complete -e 'lsirq'
3	3	----> complete -c 'lsirq' -f -a '(_carapace_callback lsirq)'
1	1	----> complete -e 'lslocks'
4	4	----> complete -c 'lslocks' -f -a '(_carapace_callback lslocks)'
1	1	----> complete -e 'lslogins'
3	3	----> complete -c 'lslogins' -f -a '(_carapace_callback lslogins)'
1	1	----> complete -e 'lslv'
3	3	----> complete -c 'lslv' -f -a '(_carapace_callback lslv)'
2	2	----> complete -e 'lsmem'
4	4	----> complete -c 'lsmem' -f -a '(_carapace_callback lsmem)'
1	1	----> complete -e 'lsns'
3	3	----> complete -c 'lsns' -f -a '(_carapace_callback lsns)'
2	2	----> complete -e 'lspv'
3	3	----> complete -c 'lspv' -f -a '(_carapace_callback lspv)'
1	1	----> complete -e 'lsusb'
4	4	----> complete -c 'lsusb' -f -a '(_carapace_callback lsusb)'
1	1	----> complete -e 'lsvg'
3	3	----> complete -c 'lsvg' -f -a '(_carapace_callback lsvg)'
2	2	----> complete -e 'ltrace'
4	4	----> complete -c 'ltrace' -f -a '(_carapace_callback ltrace)'
1	1	----> complete -e 'lua'
3	3	----> complete -c 'lua' -f -a '(_carapace_callback lua)'
2	2	----> complete -e 'luarocks'
3	3	----> complete -c 'luarocks' -f -a '(_carapace_callback luarocks)'
1	1	----> complete -e 'lynx'
4	4	----> complete -c 'lynx' -f -a '(_carapace_callback lynx)'
1	1	----> complete -e 'lzcat'
3	3	----> complete -c 'lzcat' -f -a '(_carapace_callback lzcat)'
2	2	----> complete -e 'lzma'
4	4	----> complete -c 'lzma' -f -a '(_carapace_callback lzma)'
1	1	----> complete -e 'lzop'
3	3	----> complete -c 'lzop' -f -a '(_carapace_callback lzop)'
1	1	----> complete -e 'mac_applications'
3	3	----> complete -c 'mac_applications' -f -a '(_carapace_callback mac_applications)'
1	1	----> complete -e 'mac_files_for_application'
4	4	----> complete -c 'mac_files_for_application' -f -a '(_carapace_callback mac_files_for_application)'
1	1	----> complete -e 'madison'
3	3	----> complete -c 'madison' -f -a '(_carapace_callback madison)'
2	2	----> complete -e 'magick'
3	3	----> complete -c 'magick' -f -a '(_carapace_callback magick)'
1	1	----> complete -e 'mail'
4	4	----> complete -c 'mail' -f -a '(_carapace_callback mail)'
2	2	----> complete -e 'mailboxes'
3	3	----> complete -c 'mailboxes' -f -a '(_carapace_callback mailboxes)'
1	1	----> complete -e 'main_complete'
3	3	----> complete -c 'main_complete' -f -a '(_carapace_callback main_complete)'
1	1	----> complete -e 'make'
3	3	----> complete -c 'make' -f -a '(_carapace_callback make)'
2	2	----> complete -e 'make-kpkg'
4	4	----> complete -c 'make-kpkg' -f -a '(_carapace_callback make-kpkg)'
1	1	----> complete -e 'makepkg'
3	3	----> complete -c 'makepkg' -f -a '(_carapace_callback makepkg)'
1	1	----> complete -e 'man'
4	4	----> complete -c 'man' -f -a '(_carapace_callback man)'
1	1	----> complete -e 'marp'
3	3	----> complete -c 'marp' -f -a '(_carapace_callback marp)'
1	1	----> complete -e 'mat'
3	3	----> complete -c 'mat' -f -a '(_carapace_callback mat)'
1	1	----> complete -e 'mat2'
3	3	----> complete -c 'mat2' -f -a '(_carapace_callback mat2)'
2	2	----> complete -e 'match'
3	3	----> complete -c 'match' -f -a '(_carapace_callback match)'
1	1	----> complete -e 'math'
4	4	----> complete -c 'math' -f -a '(_carapace_callback math)'
1	1	----> complete -e 'math_params'
3	3	----> complete -c 'math_params' -f -a '(_carapace_callback math_params)'
1	1	----> complete -e 'mcomix'
3	3	----> complete -c 'mcomix' -f -a '(_carapace_callback mcomix)'
2	2	----> complete -e 'md5sum'
3	3	----> complete -c 'md5sum' -f -a '(_carapace_callback md5sum)'
1	1	----> complete -e 'mdbook'
4	4	----> complete -c 'mdbook' -f -a '(_carapace_callback mdbook)'
2	2	----> complete -e 'meld'
3	3	----> complete -c 'meld' -f -a '(_carapace_callback meld)'
1	1	----> complete -e 'melt'
5	5	----> complete -c 'melt' -f -a '(_carapace_callback melt)'
2	2	----> complete -e 'members'
4	4	----> complete -c 'members' -f -a '(_carapace_callback members)'
1	1	----> complete -e 'mencal'
3	3	----> complete -c 'mencal' -f -a '(_carapace_callback mencal)'
2	2	----> complete -e 'menu'
3	3	----> complete -c 'menu' -f -a '(_carapace_callback menu)'
1	1	----> complete -e 'mere'
3	3	----> complete -c 'mere' -f -a '(_carapace_callback mere)'
1	1	----> complete -e 'mergechanges'
3	3	----> complete -c 'mergechanges' -f -a '(_carapace_callback mergechanges)'
1	1	----> complete -e 'message'
3	3	----> complete -c 'message' -f -a '(_carapace_callback message)'
1	1	----> complete -e 'mh'
4	4	----> complete -c 'mh' -f -a '(_carapace_callback mh)'
1	1	----> complete -e 'micro'
3	3	----> complete -c 'micro' -f -a '(_carapace_callback micro)'
1	1	----> complete -e 'mii-tool'
3	3	----> complete -c 'mii-tool' -f -a '(_carapace_callback mii-tool)'
1	1	----> complete -e 'mime_types'
3	3	----> complete -c 'mime_types' -f -a '(_carapace_callback mime_types)'
2	2	----> complete -e 'minikube'
3	3	----> complete -c 'minikube' -f -a '(_carapace_callback minikube)'
1	1	----> complete -e 'mitmproxy'
3	3	----> complete -c 'mitmproxy' -f -a '(_carapace_callback mitmproxy)'
1	1	----> complete -e 'mix'
3	3	----> complete -c 'mix' -f -a '(_carapace_callback mix)'
2	2	----> complete -e 'mixerctl'
4	4	----> complete -c 'mixerctl' -f -a '(_carapace_callback mixerctl)'
1	1	----> complete -e 'mkcert'
3	3	----> complete -c 'mkcert' -f -a '(_carapace_callback mkcert)'
1	1	----> complete -e 'mkdir'
3	3	----> complete -c 'mkdir' -f -a '(_carapace_callback mkdir)'
1	1	----> complete -e 'mkfifo'
3	3	----> complete -c 'mkfifo' -f -a '(_carapace_callback mkfifo)'
2	2	----> complete -e 'mkfs'
3	3	----> complete -c 'mkfs' -f -a '(_carapace_callback mkfs)'
1	1	----> complete -e 'mknod'
3	3	----> complete -c 'mknod' -f -a '(_carapace_callback mknod)'
1	1	----> complete -e 'mkshortcut'
4	4	----> complete -c 'mkshortcut' -f -a '(_carapace_callback mkshortcut)'
2	2	----> complete -e 'mkswap'
4	4	----> complete -c 'mkswap' -f -a '(_carapace_callback mkswap)'
2	2	----> complete -e 'mktemp'
3	3	----> complete -c 'mktemp' -f -a '(_carapace_callback mktemp)'
1	1	----> complete -e 'mkzsh'
4	4	----> complete -c 'mkzsh' -f -a '(_carapace_callback mkzsh)'
1	1	----> complete -e 'modinfo'
3	3	----> complete -c 'modinfo' -f -a '(_carapace_callback modinfo)'
1	1	----> complete -e 'modprobe'
4	4	----> complete -c 'modprobe' -f -a '(_carapace_callback modprobe)'
2	2	----> complete -e 'module'
3	3	----> complete -c 'module' -f -a '(_carapace_callback module)'
1	1	----> complete -e 'module-assistant'
5	5	----> complete -c 'module-assistant' -f -a '(_carapace_callback module-assistant)'
2	2	----> complete -e 'module_math_func'
4	4	----> complete -c 'module_math_func' -f -a '(_carapace_callback module_math_func)'
2	2	----> complete -e 'modutils'
4	4	----> complete -c 'modutils' -f -a '(_carapace_callback modutils)'
1	1	----> complete -e 'molecule'
3	3	----> complete -c 'molecule' -f -a '(_carapace_callback molecule)'
1	1	----> complete -e 'mondo'
3	3	----> complete -c 'mondo' -f -a '(_carapace_callback mondo)'
2	2	----> complete -e 'monotone'
3	3	----> complete -c 'monotone' -f -a '(_carapace_callback monotone)'
1	1	----> complete -e 'moosic'
4	4	----> complete -c 'moosic' -f -a '(_carapace_callback moosic)'
1	1	----> complete -e 'more'
3	3	----> complete -c 'more' -f -a '(_carapace_callback more)'
2	2	----> complete -e 'mosh'
3	3	----> complete -c 'mosh' -f -a '(_carapace_callback mosh)'
1	1	----> complete -e 'most_recent_file'
3	3	----> complete -c 'most_recent_file' -f -a '(_carapace_callback most_recent_file)'
1	1	----> complete -e 'mount'
4	4	----> complete -c 'mount' -f -a '(_carapace_callback mount)'
2	2	----> complete -e 'mousepad'
4	4	----> complete -c 'mousepad' -f -a '(_carapace_callback mousepad)'
1	1	----> complete -e 'mozilla'
4	4	----> complete -c 'mozilla' -f -a '(_carapace_callback mozilla)'
1	1	----> complete -e 'mpv'
4	4	----> complete -c 'mpv' -f -a '(_carapace_callback mpv)'
2	2	----> complete -e 'mt'
3	3	----> complete -c 'mt' -f -a '(_carapace_callback mt)'
1	1	----> complete -e 'mtools'
3	3	----> complete -c 'mtools' -f -a '(_carapace_callback mtools)'
1	1	----> complete -e 'multi_parts'
4	4	----> complete -c 'multi_parts' -f -a '(_carapace_callback multi_parts)'
2	2	----> complete -e 'mv'
3	3	----> complete -c 'mv' -f -a '(_carapace_callback mv)'
1	1	----> complete -e 'mvn'
3	3	----> complete -c 'mvn' -f -a '(_carapace_callback mvn)'
2	2	----> complete -e 'my_accounts'
4	4	----> complete -c 'my_accounts' -f -a '(_carapace_callback my_accounts)'
1	1	----> complete -e 'myrepos'
4	4	----> complete -c 'myrepos' -f -a '(_carapace_callback myrepos)'
2	2	----> complete -e 'mysql_utils'
3	3	----> complete -c 'mysql_utils' -f -a '(_carapace_callback mysql_utils)'
1	1	----> complete -e 'mysqldiff'
3	3	----> complete -c 'mysqldiff' -f -a '(_carapace_callback mysqldiff)'
1	1	----> complete -e 'nano'
4	4	----> complete -c 'nano' -f -a '(_carapace_callback nano)'
1	1	----> complete -e 'nautilus'
4	4	----> complete -c 'nautilus' -f -a '(_carapace_callback nautilus)'
2	2	----> complete -e 'nbsd_architectures'
5	5	----> complete -c 'nbsd_architectures' -f -a '(_carapace_callback nbsd_architectures)'
1	1	----> complete -e 'nc'
4	4	----> complete -c 'nc' -f -a '(_carapace_callback nc)'
2	2	----> complete -e 'ncdu'
3	3	----> complete -c 'ncdu' -f -a '(_carapace_callback ncdu)'
1	1	----> complete -e 'ncftp'
3	3	----> complete -c 'ncftp' -f -a '(_carapace_callback ncftp)'
2	2	----> complete -e 'nedit'
3	3	----> complete -c 'nedit' -f -a '(_carapace_callback nedit)'
1	1	----> complete -e 'neomutt'
4	4	----> complete -c 'neomutt' -f -a '(_carapace_callback neomutt)'
2	2	----> complete -e 'net_interfaces'
4	4	----> complete -c 'net_interfaces' -f -a '(_carapace_callback net_interfaces)'
2	2	----> complete -e 'netcat'
3	3	----> complete -c 'netcat' -f -a '(_carapace_callback netcat)'
1	1	----> complete -e 'netscape'
3	3	----> complete -c 'netscape' -f -a '(_carapace_callback netscape)'
2	2	----> complete -e 'netstat'
4	4	----> complete -c 'netstat' -f -a '(_carapace_callback netstat)'
2	2	----> complete -e 'networkmanager'
4	4	----> complete -c 'networkmanager' -f -a '(_carapace_callback networkmanager)'
2	2	----> complete -e 'networksetup'
4	4	----> complete -c 'networksetup' -f -a '(_carapace_callback networksetup)'
2	2	----> complete -e 'newman'
3	3	----> complete -c 'newman' -f -a '(_carapace_callback newman)'
1	1	----> complete -e 'newrelic'
3	3	----> complete -c 'newrelic' -f -a '(_carapace_callback newrelic)'
2	2	----> complete -e 'newsgroups'
4	4	----> complete -c 'newsgroups' -f -a '(_carapace_callback newsgroups)'
1	1	----> complete -e 'next_label'
3	3	----> complete -c 'next_label' -f -a '(_carapace_callback next_label)'
1	1	----> complete -e 'next_tags'
3	3	----> complete -c 'next_tags' -f -a '(_carapace_callback next_tags)'
2	2	----> complete -e 'nfpm'
3	3	----> complete -c 'nfpm' -f -a '(_carapace_callback nfpm)'
1	1	----> complete -e 'ng'
3	3	----> complete -c 'ng' -f -a '(_carapace_callback ng)'
2	2	----> complete -e 'nginx'
3	3	----> complete -c 'nginx' -f -a '(_carapace_callback nginx)'
1	1	----> complete -e 'ngrep'
4	4	----> complete -c 'ngrep' -f -a '(_carapace_callback ngrep)'
1	1	----> complete -e 'nice'
3	3	----> complete -c 'nice' -f -a '(_carapace_callback nice)'
2	2	----> complete -e 'nilaway'
3	3	----> complete -c 'nilaway' -f -a '(_carapace_callback nilaway)'
1	1	----> complete -e 'nix'
4	4	----> complete -c 'nix' -f -a '(_carapace_callback nix)'
2	2	----> complete -e 'nix-build'
3	3	----> complete -c 'nix-build' -f -a '(_carapace_callback nix-build)'
2	2	----> complete -e 'nix-channel'
4	4	----> complete -c 'nix-channel' -f -a '(_carapace_callback nix-channel)'
2	2	----> complete -e 'nix-instantiate'
4	4	----> complete -c 'nix-instantiate' -f -a '(_carapace_callback nix-instantiate)'
2	2	----> complete -e 'nix-shell'
3	3	----> complete -c 'nix-shell' -f -a '(_carapace_callback nix-shell)'
1	1	----> complete -e 'nixos-rebuild'
3	3	----> complete -c 'nixos-rebuild' -f -a '(_carapace_callback nixos-rebuild)'
1	1	----> complete -e 'nkf'
3	3	----> complete -c 'nkf' -f -a '(_carapace_callback nkf)'
1	1	----> complete -e 'nl'
4	4	----> complete -c 'nl' -f -a '(_carapace_callback nl)'
2	2	----> complete -e 'nmcli'
3	3	----> complete -c 'nmcli' -f -a '(_carapace_callback nmcli)'
1	1	----> complete -e 'node'
3	3	----> complete -c 'node' -f -a '(_carapace_callback node)'
2	2	----> complete -e 'nohup'
3	3	----> complete -c 'nohup' -f -a '(_carapace_callback nohup)'
1	1	----> complete -e 'nomad'
4	4	----> complete -c 'nomad' -f -a '(_carapace_callback nomad)'
1	1	----> complete -e 'normal'
3	3	----> complete -c 'normal' -f -a '(_carapace_callback normal)'
3	3	----> complete -e 'nothing'
4	4	----> complete -c 'nothing' -f -a '(_carapace_callback nothing)'
1	1	----> complete -e 'npm'
3	3	----> complete -c 'npm' -f -a '(_carapace_callback npm)'
1	1	----> complete -e 'nproc'
4	4	----> complete -c 'nproc' -f -a '(_carapace_callback nproc)'
1	1	----> complete -e 'nsenter'
3	3	----> complete -c 'nsenter' -f -a '(_carapace_callback nsenter)'
1	1	----> complete -e 'nslookup'
4	4	----> complete -c 'nslookup' -f -a '(_carapace_callback nslookup)'
1	1	----> complete -e 'ntpd'
3	3	----> complete -c 'ntpd' -f -a '(_carapace_callback ntpd)'
1	1	----> complete -e 'nu'
4	4	----> complete -c 'nu' -f -a '(_carapace_callback nu)'
1	1	----> complete -e 'numbers'
3	3	----> complete -c 'numbers' -f -a '(_carapace_callback numbers)'
1	1	----> complete -e 'numfmt'
4	4	----> complete -c 'numfmt' -f -a '(_carapace_callback numfmt)'
1	1	----> complete -e 'nvim'
3	3	----> complete -c 'nvim' -f -a '(_carapace_callback nvim)'
1	1	----> complete -e 'object_classes'
4	4	----> complete -c 'object_classes' -f -a '(_carapace_callback object_classes)'
1	1	----> complete -e 'object_files'
4	4	----> complete -c 'object_files' -f -a '(_carapace_callback object_files)'
2	2	----> complete -e 'obsd_architectures'
4	4	----> complete -c 'obsd_architectures' -f -a '(_carapace_callback obsd_architectures)'
2	2	----> complete -e 'od'
3	3	----> complete -c 'od' -f -a '(_carapace_callback od)'
1	1	----> complete -e 'oldlist'
3	3	----> complete -c 'oldlist' -f -a '(_carapace_callback oldlist)'
1	1	----> complete -e 'ollama'
4	4	----> complete -c 'ollama' -f -a '(_carapace_callback ollama)'
1	1	----> complete -e 'open'
3	3	----> complete -c 'open' -f -a '(_carapace_callback open)'
1	1	----> complete -e 'openscad'
3	3	----> complete -c 'openscad' -f -a '(_carapace_callback openscad)'
2	2	----> complete -e 'openstack'
4	4	----> complete -c 'openstack' -f -a '(_carapace_callback openstack)'
1	1	----> complete -e 'options'
3	3	----> complete -c 'options' -f -a '(_carapace_callback options)'
2	2	----> complete -e 'options_set'
4	4	----> complete -c 'options_set' -f -a '(_carapace_callback options_set)'
2	2	----> complete -e 'options_unset'
4	4	----> complete -c 'options_unset' -f -a '(_carapace_callback options_unset)'
2	2	----> complete -e 'optipng'
4	4	----> complete -c 'optipng' -f -a '(_carapace_callback optipng)'
2	2	----> complete -e 'opustools'
3	3	----> complete -c 'opustools' -f -a '(_carapace_callback opustools)'
1	1	----> complete -e 'osascript'
3	3	----> complete -c 'osascript' -f -a '(_carapace_callback osascript)'
1	1	----> complete -e 'osc'
3	3	----> complete -c 'osc' -f -a '(_carapace_callback osc)'
1	1	----> complete -e 'other_accounts'
4	4	----> complete -c 'other_accounts' -f -a '(_carapace_callback other_accounts)'
2	2	----> complete -e 'pack'
3	3	----> complete -c 'pack' -f -a '(_carapace_callback pack)'
2	2	----> complete -e 'packer'
4	4	----> complete -c 'packer' -f -a '(_carapace_callback packer)'
1	1	----> complete -e 'pacman'
3	3	----> complete -c 'pacman' -f -a '(_carapace_callback pacman)'
2	2	----> complete -e 'pacman-conf'
4	4	----> complete -c 'pacman-conf' -f -a '(_carapace_callback pacman-conf)'
2	2	----> complete -e 'pacman-db-upgrade'
4	4	----> complete -c 'pacman-db-upgrade' -f -a '(_carapace_callback pacman-db-upgrade)'
2	2	----> complete -e 'pacman-key'
3	3	----> complete -c 'pacman-key' -f -a '(_carapace_callback pacman-key)'
1	1	----> complete -e 'pacman-mirrors'
4	4	----> complete -c 'pacman-mirrors' -f -a '(_carapace_callback pacman-mirrors)'
2	2	----> complete -e 'palemoon'
3	3	----> complete -c 'palemoon' -f -a '(_carapace_callback palemoon)'
1	1	----> complete -e 'pamac'
3	3	----> complete -c 'pamac' -f -a '(_carapace_callback pamac)'
1	1	----> complete -e 'pandoc'
3	3	----> complete -c 'pandoc' -f -a '(_carapace_callback pandoc)'
2	2	----> complete -e 'parameter'
4	4	----> complete -c 'parameter' -f -a '(_carapace_callback parameter)'
1	1	----> complete -e 'parameters'
3	3	----> complete -c 'parameters' -f -a '(_carapace_callback parameters)'
1	1	----> complete -e 'paru'
4	4	----> complete -c 'paru' -f -a '(_carapace_callback paru)'
1	1	----> complete -e 'pass'
3	3	----> complete -c 'pass' -f -a '(_carapace_callback pass)'
2	2	----> complete -e 'passwd'
3	3	----> complete -c 'passwd' -f -a '(_carapace_callback passwd)'
1	1	----> complete -e 'paste'
3	3	----> complete -c 'paste' -f -a '(_carapace_callback paste)'
1	1	----> complete -e 'patch'
3	3	----> complete -c 'patch' -f -a '(_carapace_callback patch)'
1	1	----> complete -e 'patchutils'
4	4	----> complete -c 'patchutils' -f -a '(_carapace_callback patchutils)'
2	2	----> complete -e 'path_commands'
4	4	----> complete -c 'path_commands' -f -a '(_carapace_callback path_commands)'
2	2	----> complete -e 'path_files'
4	4	----> complete -c 'path_files' -f -a '(_carapace_callback path_files)'
1	1	----> complete -e 'pathchk'
3	3	----> complete -c 'pathchk' -f -a '(_carapace_callback pathchk)'
2	2	----> complete -e 'patool'
4	4	----> complete -c 'patool' -f -a '(_carapace_callback patool)'
2	2	----> complete -e 'pax'
3	3	----> complete -c 'pax' -f -a '(_carapace_callback pax)'
1	1	----> complete -e 'pbcopy'
3	3	----> complete -c 'pbcopy' -f -a '(_carapace_callback pbcopy)'
1	1	----> complete -e 'pbm'
4	4	----> complete -c 'pbm' -f -a '(_carapace_callback pbm)'
2	2	----> complete -e 'pbuilder'
3	3	----> complete -c 'pbuilder' -f -a '(_carapace_callback pbuilder)'
1	1	----> complete -e 'pcmanfm'
3	3	----> complete -c 'pcmanfm' -f -a '(_carapace_callback pcmanfm)'
2	2	----> complete -e 'pdf'
3	3	----> complete -c 'pdf' -f -a '(_carapace_callback pdf)'
1	1	----> complete -e 'pdftk'
4	4	----> complete -c 'pdftk' -f -a '(_carapace_callback pdftk)'
2	2	----> complete -e 'perf'
3	3	----> complete -c 'perf' -f -a '(_carapace_callback perf)'
1	1	----> complete -e 'perforce'
3	3	----> complete -c 'perforce' -f -a '(_carapace_callback perforce)'
2	2	----> complete -e 'perl_basepods'
4	4	----> complete -c 'perl_basepods' -f -a '(_carapace_callback perl_basepods)'
2	2	----> complete -e 'perl_modules'
4	4	----> complete -c 'perl_modules' -f -a '(_carapace_callback perl_modules)'
2	2	----> complete -e 'perldoc'
4	4	----> complete -c 'perldoc' -f -a '(_carapace_callback perldoc)'
2	2	----> complete -e 'pfexec'
6	6	----> complete -c 'pfexec' -f -a '(_carapace_callback pfexec)'
1	1	----> complete -e 'pgids'
3	3	----> complete -c 'pgids' -f -a '(_carapace_callback pgids)'
2	2	----> complete -e 'pgrep'
3	3	----> complete -c 'pgrep' -f -a '(_carapace_callback pgrep)'
1	1	----> complete -e 'php'
4	4	----> complete -c 'php' -f -a '(_carapace_callback php)'
2	2	----> complete -e 'physical_volumes'
4	4	----> complete -c 'physical_volumes' -f -a '(_carapace_callback physical_volumes)'
2	2	----> complete -e 'picard'
4	4	----> complete -c 'picard' -f -a '(_carapace_callback picard)'
1	1	----> complete -e 'pick_variant'
3	3	----> complete -c 'pick_variant' -f -a '(_carapace_callback pick_variant)'
1	1	----> complete -e 'picocom'
4	4	----> complete -c 'picocom' -f -a '(_carapace_callback picocom)'
2	2	----> complete -e 'pidof'
3	3	----> complete -c 'pidof' -f -a '(_carapace_callback pidof)'
1	1	----> complete -e 'pids'
3	3	----> complete -c 'pids' -f -a '(_carapace_callback pids)'
1	1	----> complete -e 'pidwait'
4	4	----> complete -c 'pidwait' -f -a '(_carapace_callback pidwait)'
2	2	----> complete -e 'pigz'
3	3	----> complete -c 'pigz' -f -a '(_carapace_callback pigz)'
1	1	----> complete -e 'ping'
3	3	----> complete -c 'ping' -f -a '(_carapace_callback ping)'
1	1	----> complete -e 'pinky'
3	3	----> complete -c 'pinky' -f -a '(_carapace_callback pinky)'
2	2	----> complete -e 'pip'
3	3	----> complete -c 'pip' -f -a '(_carapace_callback pip)'
1	1	----> complete -e 'piuparts'
3	3	----> complete -c 'piuparts' -f -a '(_carapace_callback piuparts)'
1	1	----> complete -e 'pkg'
3	3	----> complete -c 'pkg' -f -a '(_carapace_callback pkg)'
1	1	----> complete -e 'pkg5'
3	3	----> complete -c 'pkg5' -f -a '(_carapace_callback pkg5)'
2	2	----> complete -e 'pkg_instance'
4	4	----> complete -c 'pkg_instance' -f -a '(_carapace_callback pkg_instance)'
2	2	----> complete -e 'pkgin'
3	3	----> complete -c 'pkgin' -f -a '(_carapace_callback pkgin)'
1	1	----> complete -e 'pkgsite'
3	3	----> complete -c 'pkgsite' -f -a '(_carapace_callback pkgsite)'
2	2	----> complete -e 'pkgtool'
3	3	----> complete -c 'pkgtool' -f -a '(_carapace_callback pkgtool)'
1	1	----> complete -e 'pkill'
4	4	----> complete -c 'pkill' -f -a '(_carapace_callback pkill)'
1	1	----> complete -e 'pmap'
3	3	----> complete -c 'pmap' -f -a '(_carapace_callback pmap)'
1	1	----> complete -e 'pnpm'
3	3	----> complete -c 'pnpm' -f -a '(_carapace_callback pnpm)'
1	1	----> complete -e 'podman'
3	3	----> complete -c 'podman' -f -a '(_carapace_callback podman)'
2	2	----> complete -e 'portaudit'
3	3	----> complete -c 'portaudit' -f -a '(_carapace_callback portaudit)'
1	1	----> complete -e 'portlint'
4	4	----> complete -c 'portlint' -f -a '(_carapace_callback portlint)'
2	2	----> complete -e 'portsnap'
3	3	----> complete -c 'portsnap' -f -a '(_carapace_callback portsnap)'
1	1	----> complete -e 'postfix'
4	4	----> complete -c 'postfix' -f -a '(_carapace_callback postfix)'
2	2	----> complete -e 'postgresql'
3	3	----> complete -c 'postgresql' -f -a '(_carapace_callback postgresql)'
1	1	----> complete -e 'postscript'
3	3	----> complete -c 'postscript' -f -a '(_carapace_callback postscript)'
1	1	----> complete -e 'powerd'
4	4	----> complete -c 'powerd' -f -a '(_carapace_callback powerd)'
1	1	----> complete -e 'poweroff'
3	3	----> complete -c 'poweroff' -f -a '(_carapace_callback poweroff)'
2	2	----> complete -e 'powertop'
3	3	----> complete -c 'powertop' -f -a '(_carapace_callback powertop)'
1	1	----> complete -e 'pprof'
3	3	----> complete -c 'pprof' -f -a '(_carapace_callback pprof)'
2	2	----> complete -e 'pr'
3	3	----> complete -c 'pr' -f -a '(_carapace_callback pr)'
1	1	----> complete -e 'precommand'
4	4	----> complete -c 'precommand' -f -a '(_carapace_callback precommand)'
1	1	----> complete -e 'prefix'
3	3	----> complete -c 'prefix' -f -a '(_carapace_callback prefix)'
1	1	----> complete -e 'present'
3	3	----> complete -c 'present' -f -a '(_carapace_callback present)'
1	1	----> complete -e 'prettybat'
3	3	----> complete -c 'prettybat' -f -a '(_carapace_callback prettybat)'
2	2	----> complete -e 'prettyping'
5	5	----> complete -c 'prettyping' -f -a '(_carapace_callback prettyping)'
2	2	----> complete -e 'printenv'
4	4	----> complete -c 'printenv' -f -a '(_carapace_callback printenv)'
1	1	----> complete -e 'printers'
4	4	----> complete -c 'printers' -f -a '(_carapace_callback printers)'
2	2	----> complete -e 'process_names'
4	4	----> complete -c 'process_names' -f -a '(_carapace_callback process_names)'
2	2	----> complete -e 'procs'
4	4	----> complete -c 'procs' -f -a '(_carapace_callback procs)'
1	1	----> complete -e 'procstat'
3	3	----> complete -c 'procstat' -f -a '(_carapace_callback procstat)'
1	1	----> complete -e 'prompt'
4	4	----> complete -c 'prompt' -f -a '(_carapace_callback prompt)'
1	1	----> complete -e 'prove'
3	3	----> complete -c 'prove' -f -a '(_carapace_callback prove)'
2	2	----> complete -e 'prstat'
4	4	----> complete -c 'prstat' -f -a '(_carapace_callback prstat)'
2	2	----> complete -e 'ps'
3	3	----> complete -c 'ps' -f -a '(_carapace_callback ps)'
1	1	----> complete -e 'ps1234'
4	4	----> complete -c 'ps1234' -f -a '(_carapace_callback ps1234)'
2	2	----> complete -e 'pscp'
3	3	----> complete -c 'pscp' -f -a '(_carapace_callback pscp)'
1	1	----> complete -e 'pspdf'
3	3	----> complete -c 'pspdf' -f -a '(_carapace_callback pspdf)'
2	2	----> complete -e 'psutils'
4	4	----> complete -c 'psutils' -f -a '(_carapace_callback psutils)'
1	1	----> complete -e 'ptree'
3	3	----> complete -c 'ptree' -f -a '(_carapace_callback ptree)'
2	2	----> complete -e 'ptx'
3	3	----> complete -c 'ptx' -f -a '(_carapace_callback ptx)'
1	1	----> complete -e 'pulumi'
4	4	----> complete -c 'pulumi' -f -a '(_carapace_callback pulumi)'
1	1	----> complete -e 'pump'
4	4	----> complete -c 'pump' -f -a '(_carapace_callback pump)'
1	1	----> complete -e 'putclip'
4	4	----> complete -c 'putclip' -f -a '(_carapace_callback putclip)'
2	2	----> complete -e 'pwd'
3	3	----> complete -c 'pwd' -f -a '(_carapace_callback pwd)'
1	1	----> complete -e 'pwdx'
3	3	----> complete -c 'pwdx' -f -a '(_carapace_callback pwdx)'
2	2	----> complete -e 'pwgen'
3	3	----> complete -c 'pwgen' -f -a '(_carapace_callback pwgen)'
1	1	----> complete -e 'pydoc'
4	4	----> complete -c 'pydoc' -f -a '(_carapace_callback pydoc)'
1	1	----> complete -e 'python'
3	3	----> complete -c 'python' -f -a '(_carapace_callback python)'
2	2	----> complete -e 'python_modules'
4	4	----> complete -c 'python_modules' -f -a '(_carapace_callback python_modules)'
2	2	----> complete -e 'qemu'
3	3	----> complete -c 'qemu' -f -a '(_carapace_callback qemu)'
1	1	----> complete -e 'qiv'
3	3	----> complete -c 'qiv' -f -a '(_carapace_callback qiv)'
2	2	----> complete -e 'qmk'
3	3	----> complete -c 'qmk' -f -a '(_carapace_callback qmk)'
1	1	----> complete -e 'qrencode'
4	4	----> complete -c 'qrencode' -f -a '(_carapace_callback qrencode)'
2	2	----> complete -e 'qtplay'
3	3	----> complete -c 'qtplay' -f -a '(_carapace_callback qtplay)'
1	1	----> complete -e 'qutebrowser'
4	4	----> complete -c 'qutebrowser' -f -a '(_carapace_callback qutebrowser)'
2	2	----> complete -e 'rake'
3	3	----> complete -c 'rake' -f -a '(_carapace_callback rake)'
1	1	----> complete -e 'ramalama'
3	3	----> complete -c 'ramalama' -f -a '(_carapace_callback ramalama)'
2	2	----> complete -e 'ranger'
3	3	----> complete -c 'ranger' -f -a '(_carapace_callback ranger)'
1	1	----> complete -e 'ranlib'
3	3	----> complete -c 'ranlib' -f -a '(_carapace_callback ranlib)'
1	1	----> complete -e 'rar'
4	4	----> complete -c 'rar' -f -a '(_carapace_callback rar)'
1	1	----> complete -e 'rcs'
3	3	----> complete -c 'rcs' -f -a '(_carapace_callback rcs)'
2	2	----> complete -e 'rdesktop'
3	3	----> complete -c 'rdesktop' -f -a '(_carapace_callback rdesktop)'
1	1	----> complete -e 'read_comp'
3	3	----> complete -c 'read_comp' -f -a '(_carapace_callback read_comp)'
2	2	----> complete -e 'readlink'
3	3	----> complete -c 'readlink' -f -a '(_carapace_callback readlink)'
1	1	----> complete -e 'readshortcut'
3	3	----> complete -c 'readshortcut' -f -a '(_carapace_callback readshortcut)'
1	1	----> complete -e 'reboot'
4	4	----> complete -c 'reboot' -f -a '(_carapace_callback reboot)'
1	1	----> complete -e 'rebootin'
4	4	----> complete -c 'rebootin' -f -a '(_carapace_callback rebootin)'
2	2	----> complete -e 'redirect'
4	4	----> complete -c 'redirect' -f -a '(_carapace_callback redirect)'
2	2	----> complete -e 'redis-cli'
4	4	----> complete -c 'redis-cli' -f -a '(_carapace_callback redis-cli)'
2	2	----> complete -e 'regex_arguments'
4	4	----> complete -c 'regex_arguments' -f -a '(_carapace_callback regex_arguments)'
1	1	----> complete -e 'regex_words'
4	4	----> complete -c 'regex_words' -f -a '(_carapace_callback regex_words)'
2	2	----> complete -e 'remote_files'
4	4	----> complete -c 'remote_files' -f -a '(_carapace_callback remote_files)'
2	2	----> complete -e 'reprepro'
5	5	----> complete -c 'reprepro' -f -a '(_carapace_callback reprepro)'
1	1	----> complete -e 'requested'
3	3	----> complete -c 'requested' -f -a '(_carapace_callback requested)'
2	2	----> complete -e 'restic'
3	3	----> complete -c 'restic' -f -a '(_carapace_callback restic)'
1	1	----> complete -e 'resume-cli'
3	3	----> complete -c 'resume-cli' -f -a '(_carapace_callback resume-cli)'
1	1	----> complete -e 'retrieve_cache'
4	4	----> complete -c 'retrieve_cache' -f -a '(_carapace_callback retrieve_cache)'
1	1	----> complete -e 'retrieve_mac_apps'
4	4	----> complete -c 'retrieve_mac_apps' -f -a '(_carapace_callback retrieve_mac_apps)'
1	1	----> complete -e 'rg'
4	4	----> complete -c 'rg' -f -a '(_carapace_callback rg)'
2	2	----> complete -e 'ri'
3	3	----> complete -c 'ri' -f -a '(_carapace_callback ri)'
1	1	----> complete -e 'rifle'
3	3	----> complete -c 'rifle' -f -a '(_carapace_callback rifle)'
2	2	----> complete -e 'ripsecrets'
4	4	----> complete -c 'ripsecrets' -f -a '(_carapace_callback ripsecrets)'
1	1	----> complete -e 'rlogin'
3	3	----> complete -c 'rlogin' -f -a '(_carapace_callback rlogin)'
1	1	----> complete -e 'rm'
4	4	----> complete -c 'rm' -f -a '(_carapace_callback rm)'
1	1	----> complete -e 'rmdir'
3	3	----> complete -c 'rmdir' -f -a '(_carapace_callback rmdir)'
1	1	----> complete -e 'rmmod'
4	4	----> complete -c 'rmmod' -f -a '(_carapace_callback rmmod)'
2	2	----> complete -e 'route'
3	3	----> complete -c 'route' -f -a '(_carapace_callback route)'
1	1	----> complete -e 'routing_domains'
3	3	----> complete -c 'routing_domains' -f -a '(_carapace_callback routing_domains)'
1	1	----> complete -e 'routing_tables'
3	3	----> complete -c 'routing_tables' -f -a '(_carapace_callback routing_tables)'
1	1	----> complete -e 'rrdtool'
3	3	----> complete -c 'rrdtool' -f -a '(_carapace_callback rrdtool)'
2	2	----> complete -e 'rsync'
3	3	----> complete -c 'rsync' -f -a '(_carapace_callback rsync)'
1	1	----> complete -e 'rubber'
5	5	----> complete -c 'rubber' -f -a '(_carapace_callback rubber)'
1	1	----> complete -e 'run-help'
3	3	----> complete -c 'run-help' -f -a '(_carapace_callback run-help)'
1	1	----> complete -e 'run0'
3	3	----> complete -c 'run0' -f -a '(_carapace_callback run0)'
2	2	----> complete -e 'runit'
4	4	----> complete -c 'runit' -f -a '(_carapace_callback runit)'
2	2	----> complete -e 'rust-analyzer'
5	5	----> complete -c 'rust-analyzer' -f -a '(_carapace_callback rust-analyzer)'
1	1	----> complete -e 'rustc'
3	3	----> complete -c 'rustc' -f -a '(_carapace_callback rustc)'
1	1	----> complete -e 'rustdoc'
3	3	----> complete -c 'rustdoc' -f -a '(_carapace_callback rustdoc)'
1	1	----> complete -e 'rustup'
4	4	----> complete -c 'rustup' -f -a '(_carapace_callback rustup)'
1	1	----> complete -e 'samba'
5	5	----> complete -c 'samba' -f -a '(_carapace_callback samba)'
2	2	----> complete -e 'savecore'
4	4	----> complete -c 'savecore' -f -a '(_carapace_callback savecore)'
1	1	----> complete -e 'saw'
3	3	----> complete -c 'saw' -f -a '(_carapace_callback saw)'
2	2	----> complete -e 'say'
3	3	----> complete -c 'say' -f -a '(_carapace_callback say)'
1	1	----> complete -e 'sbuild'
3	3	----> complete -c 'sbuild' -f -a '(_carapace_callback sbuild)'
2	2	----> complete -e 'sc_usage'
3	3	----> complete -c 'sc_usage' -f -a '(_carapace_callback sc_usage)'
2	2	----> complete -e 'sccs'
3	3	----> complete -c 'sccs' -f -a '(_carapace_callback sccs)'
1	1	----> complete -e 'schedtool'
3	3	----> complete -c 'schedtool' -f -a '(_carapace_callback schedtool)'
1	1	----> complete -e 'schroot'
3	3	----> complete -c 'schroot' -f -a '(_carapace_callback schroot)'
2	2	----> complete -e 'scl'
4	4	----> complete -c 'scl' -f -a '(_carapace_callback scl)'
1	1	----> complete -e 'scp'
3	3	----> complete -c 'scp' -f -a '(_carapace_callback scp)'
1	1	----> complete -e 'script'
4	4	----> complete -c 'script' -f -a '(_carapace_callback script)'
2	2	----> complete -e 'scriptlive'
3	3	----> complete -c 'scriptlive' -f -a '(_carapace_callback scriptlive)'
1	1	----> complete -e 'scriptreplay'
3	3	----> complete -c 'scriptreplay' -f -a '(_carapace_callback scriptreplay)'
1	1	----> complete -e 'scrot'
3	3	----> complete -c 'scrot' -f -a '(_carapace_callback scrot)'
1	1	----> complete -e 'scselect'
3	3	----> complete -c 'scselect' -f -a '(_carapace_callback scselect)'
1	1	----> complete -e 'scutil'
3	3	----> complete -c 'scutil' -f -a '(_carapace_callback scutil)'
1	1	----> complete -e 'sd'
3	3	----> complete -c 'sd' -f -a '(_carapace_callback sd)'
1	1	----> complete -e 'sdkmanager'
5	5	----> complete -c 'sdkmanager' -f -a '(_carapace_callback sdkmanager)'
1	1	----> complete -e 'seafile'
3	3	----> complete -c 'seafile' -f -a '(_carapace_callback seafile)'
2	2	----> complete -e 'sed'
4	4	----> complete -c 'sed' -f -a '(_carapace_callback sed)'
2	2	----> complete -e 'selinux_contexts'
4	4	----> complete -c 'selinux_contexts' -f -a '(_carapace_callback selinux_contexts)'
2	2	----> complete -e 'selinux_roles'
4	4	----> complete -c 'selinux_roles' -f -a '(_carapace_callback selinux_roles)'
2	2	----> complete -e 'selinux_types'
4	4	----> complete -c 'selinux_types' -f -a '(_carapace_callback selinux_types)'
2	2	----> complete -e 'selinux_users'
4	4	----> complete -c 'selinux_users' -f -a '(_carapace_callback selinux_users)'
2	2	----> complete -e 'semver'
3	3	----> complete -c 'semver' -f -a '(_carapace_callback semver)'
1	1	----> complete -e 'sep_parts'
4	4	----> complete -c 'sep_parts' -f -a '(_carapace_callback sep_parts)'
2	2	----> complete -e 'seq'
3	3	----> complete -c 'seq' -f -a '(_carapace_callback seq)'
1	1	----> complete -e 'sequence'
3	3	----> complete -c 'sequence' -f -a '(_carapace_callback sequence)'
1	1	----> complete -e 'serie'
3	3	----> complete -c 'serie' -f -a '(_carapace_callback serie)'
2	2	----> complete -e 'services'
3	3	----> complete -c 'services' -f -a '(_carapace_callback services)'
1	1	----> complete -e 'set-env'
3	3	----> complete -c 'set-env' -f -a '(_carapace_callback set-env)'
1	1	----> complete -e 'set_command'
4	4	----> complete -c 'set_command' -f -a '(_carapace_callback set_command)'
2	2	----> complete -e 'setpriv'
4	4	----> complete -c 'setpriv' -f -a '(_carapace_callback setpriv)'
1	1	----> complete -e 'setup'
3	3	----> complete -c 'setup' -f -a '(_carapace_callback setup)'
1	1	----> complete -e 'sftp'
4	4	----> complete -c 'sftp' -f -a '(_carapace_callback sftp)'
2	2	----> complete -e 'sh'
3	3	----> complete -c 'sh' -f -a '(_carapace_callback sh)'
1	1	----> complete -e 'sha1sum'
3	3	----> complete -c 'sha1sum' -f -a '(_carapace_callback sha1sum)'
1	1	----> complete -e 'sha224sum'
3	3	----> complete -c 'sha224sum' -f -a '(_carapace_callback sha224sum)'
1	1	----> complete -e 'sha256sum'
4	4	----> complete -c 'sha256sum' -f -a '(_carapace_callback sha256sum)'
2	2	----> complete -e 'sha384sum'
4	4	----> complete -c 'sha384sum' -f -a '(_carapace_callback sha384sum)'
1	1	----> complete -e 'sha512sum'
3	3	----> complete -c 'sha512sum' -f -a '(_carapace_callback sha512sum)'
1	1	----> complete -e 'shasum'
4	4	----> complete -c 'shasum' -f -a '(_carapace_callback shasum)'
1	1	----> complete -e 'showkey'
3	3	----> complete -c 'showkey' -f -a '(_carapace_callback showkey)'
2	2	----> complete -e 'showmount'
5	5	----> complete -c 'showmount' -f -a '(_carapace_callback showmount)'
1	1	----> complete -e 'shred'
3	3	----> complete -c 'shred' -f -a '(_carapace_callback shred)'
1	1	----> complete -e 'shuf'
4	4	----> complete -c 'shuf' -f -a '(_carapace_callback shuf)'
1	1	----> complete -e 'shutdown'
3	3	----> complete -c 'shutdown' -f -a '(_carapace_callback shutdown)'
1	1	----> complete -e 'signals'
3	3	----> complete -c 'signals' -f -a '(_carapace_callback signals)'
2	2	----> complete -e 'sisu'
3	3	----> complete -c 'sisu' -f -a '(_carapace_callback sisu)'
1	1	----> complete -e 'skhd'
4	4	----> complete -c 'skhd' -f -a '(_carapace_callback skhd)'
2	2	----> complete -e 'slabtop'
3	3	----> complete -c 'slabtop' -f -a '(_carapace_callback slabtop)'
1	1	----> complete -e 'sleep'
4	4	----> complete -c 'sleep' -f -a '(_carapace_callback sleep)'
1	1	----> complete -e 'slides'
3	3	----> complete -c 'slides' -f -a '(_carapace_callback slides)'
1	1	----> complete -e 'slrn'
4	4	----> complete -c 'slrn' -f -a '(_carapace_callback slrn)'
1	1	----> complete -e 'smartmontools'
4	4	----> complete -c 'smartmontools' -f -a '(_carapace_callback smartmontools)'
2	2	----> complete -e 'smit'
3	3	----> complete -c 'smit' -f -a '(_carapace_callback smit)'
1	1	----> complete -e 'snoop'
3	3	----> complete -c 'snoop' -f -a '(_carapace_callback snoop)'
2	2	----> complete -e 'socket'
3	3	----> complete -c 'socket' -f -a '(_carapace_callback socket)'
1	1	----> complete -e 'sockstat'
3	3	----> complete -c 'sockstat' -f -a '(_carapace_callback sockstat)'
2	2	----> complete -e 'soft'
3	3	----> complete -c 'soft' -f -a '(_carapace_callback soft)'
1	1	----> complete -e 'softwareupdate'
3	3	----> complete -c 'softwareupdate' -f -a '(_carapace_callback softwareupdate)'
1	1	----> complete -e 'sort'
3	3	----> complete -c 'sort' -f -a '(_carapace_callback sort)'
1	1	----> complete -e 'spamassassin'
3	3	----> complete -c 'spamassassin' -f -a '(_carapace_callback spamassassin)'
1	1	----> complete -e 'speedtest-cli'
4	4	----> complete -c 'speedtest-cli' -f -a '(_carapace_callback speedtest-cli)'
1	1	----> complete -e 'split'
4	4	----> complete -c 'split' -f -a '(_carapace_callback split)'
1	1	----> complete -e 'sqlite'
3	3	----> complete -c 'sqlite' -f -a '(_carapace_callback sqlite)'
1	1	----> complete -e 'sqlite3'
5	5	----> complete -c 'sqlite3' -f -a '(_carapace_callback sqlite3)'
2	2	----> complete -e 'sqsh'
3	3	----> complete -c 'sqsh' -f -a '(_carapace_callback sqsh)'
1	1	----> complete -e 'ss'
3	3	----> complete -c 'ss' -f -a '(_carapace_callback ss)'
2	2	----> complete -e 'ssh'
3	3	----> complete -c 'ssh' -f -a '(_carapace_callback ssh)'
1	1	----> complete -e 'ssh-agent'
3	3	----> complete -c 'ssh-agent' -f -a '(_carapace_callback ssh-agent)'
1	1	----> complete -e 'ssh-copy-id'
4	4	----> complete -c 'ssh-copy-id' -f -a '(_carapace_callback ssh-copy-id)'
2	2	----> complete -e 'ssh-keygen'
4	4	----> complete -c 'ssh-keygen' -f -a '(_carapace_callback ssh-keygen)'
2	2	----> complete -e 'ssh_hosts'
3	3	----> complete -c 'ssh_hosts' -f -a '(_carapace_callback ssh_hosts)'
1	1	----> complete -e 'st'
3	3	----> complete -c 'st' -f -a '(_carapace_callback st)'
2	2	----> complete -e 'starship'
3	3	----> complete -c 'starship' -f -a '(_carapace_callback starship)'
1	1	----> complete -e 'stat'
3	3	----> complete -c 'stat' -f -a '(_carapace_callback stat)'
2	2	----> complete -e 'staticcheck'
4	4	----> complete -c 'staticcheck' -f -a '(_carapace_callback staticcheck)'
1	1	----> complete -e 'stdbuf'
3	3	----> complete -c 'stdbuf' -f -a '(_carapace_callback stdbuf)'
2	2	----> complete -e 'stgit'
4	4	----> complete -c 'stgit' -f -a '(_carapace_callback stgit)'
2	2	----> complete -e 'store_cache'
4	4	----> complete -c 'store_cache' -f -a '(_carapace_callback store_cache)'
2	2	----> complete -e 'strings'
3	3	----> complete -c 'strings' -f -a '(_carapace_callback strings)'
1	1	----> complete -e 'strip'
4	4	----> complete -c 'strip' -f -a '(_carapace_callback strip)'
2	2	----> complete -e 'stty'
3	3	----> complete -c 'stty' -f -a '(_carapace_callback stty)'
2	2	----> complete -e 'su'
3	3	----> complete -c 'su' -f -a '(_carapace_callback su)'
1	1	----> complete -e 'sub_commands'
3	3	----> complete -c 'sub_commands' -f -a '(_carapace_callback sub_commands)'
1	1	----> complete -e 'sublimetext'
3	3	----> complete -c 'sublimetext' -f -a '(_carapace_callback sublimetext)'
2	2	----> complete -e 'subscript'
4	4	----> complete -c 'subscript' -f -a '(_carapace_callback subscript)'
1	1	----> complete -e 'subversion'
3	3	----> complete -c 'subversion' -f -a '(_carapace_callback subversion)'
1	1	----> complete -e 'sudo'
4	4	----> complete -c 'sudo' -f -a '(_carapace_callback sudo)'
1	1	----> complete -e 'sudoedit'
3	3	----> complete -c 'sudoedit' -f -a '(_carapace_callback sudoedit)'
2	2	----> complete -e 'sudoreplay'
3	3	----> complete -c 'sudoreplay' -f -a '(_carapace_callback sudoreplay)'
1	1	----> complete -e 'suffix_alias_files'
5	5	----> complete -c 'suffix_alias_files' -f -a '(_carapace_callback suffix_alias_files)'
2	2	----> complete -e 'sulogin'
3	3	----> complete -c 'sulogin' -f -a '(_carapace_callback sulogin)'
1	1	----> complete -e 'sum'
3	3	----> complete -c 'sum' -f -a '(_carapace_callback sum)'
2	2	----> complete -e 'supervisorctl'
4	4	----> complete -c 'supervisorctl' -f -a '(_carapace_callback supervisorctl)'
2	2	----> complete -e 'supervisord'
4	4	----> complete -c 'supervisord' -f -a '(_carapace_callback supervisord)'
2	2	----> complete -e 'surfraw'
3	3	----> complete -c 'surfraw' -f -a '(_carapace_callback surfraw)'
1	1	----> complete -e 'svcadm'
3	3	----> complete -c 'svcadm' -f -a '(_carapace_callback svcadm)'
2	2	----> complete -e 'svccfg'
3	3	----> complete -c 'svccfg' -f -a '(_carapace_callback svccfg)'
1	1	----> complete -e 'svcprop'
4	4	----> complete -c 'svcprop' -f -a '(_carapace_callback svcprop)'
1	1	----> complete -e 'svcs'
3	3	----> complete -c 'svcs' -f -a '(_carapace_callback svcs)'
1	1	----> complete -e 'svcs_fmri'
4	4	----> complete -c 'svcs_fmri' -f -a '(_carapace_callback svcs_fmri)'
2	2	----> complete -e 'svg-term'
3	3	----> complete -c 'svg-term' -f -a '(_carapace_callback svg-term)'
1	1	----> complete -e 'svgcleaner'
3	3	----> complete -c 'svgcleaner' -f -a '(_carapace_callback svgcleaner)'
1	1	----> complete -e 'svn-buildpackage'
3	3	----> complete -c 'svn-buildpackage' -f -a '(_carapace_callback svn-buildpackage)'
1	1	----> complete -e 'sw_vers'
3	3	----> complete -c 'sw_vers' -f -a '(_carapace_callback sw_vers)'
1	1	----> complete -e 'swaks'
3	3	----> complete -c 'swaks' -f -a '(_carapace_callback swaks)'
1	1	----> complete -e 'swanctl'
3	3	----> complete -c 'swanctl' -f -a '(_carapace_callback swanctl)'
2	2	----> complete -e 'sway'
3	3	----> complete -c 'sway' -f -a '(_carapace_callback sway)'
1	1	----> complete -e 'swaybar'
4	4	----> complete -c 'swaybar' -f -a '(_carapace_callback swaybar)'
2	2	----> complete -e 'swaybg'
3	3	----> complete -c 'swaybg' -f -a '(_carapace_callback swaybg)'
1	1	----> complete -e 'swayidle'
4	4	----> complete -c 'swayidle' -f -a '(_carapace_callback swayidle)'
2	2	----> complete -e 'swaylock'
3	3	----> complete -c 'swaylock' -f -a '(_carapace_callback swaylock)'
1	1	----> complete -e 'swaymsg'
4	4	----> complete -c 'swaymsg' -f -a '(_carapace_callback swaymsg)'
1	1	----> complete -e 'swaynag'
3	3	----> complete -c 'swaynag' -f -a '(_carapace_callback swaynag)'
2	2	----> complete -e 'swift'
3	3	----> complete -c 'swift' -f -a '(_carapace_callback swift)'
1	1	----> complete -e 'syft'
5	5	----> complete -c 'syft' -f -a '(_carapace_callback syft)'
1	1	----> complete -e 'sync'
3	3	----> complete -c 'sync' -f -a '(_carapace_callback sync)'
2	2	----> complete -e 'sys_calls'
4	4	----> complete -c 'sys_calls' -f -a '(_carapace_callback sys_calls)'
1	1	----> complete -e 'sysclean'
3	3	----> complete -c 'sysclean' -f -a '(_carapace_callback sysclean)'
2	2	----> complete -e 'sysctl'
3	3	----> complete -c 'sysctl' -f -a '(_carapace_callback sysctl)'
1	1	----> complete -e 'sysmerge'
3	3	----> complete -c 'sysmerge' -f -a '(_carapace_callback sysmerge)'
1	1	----> complete -e 'syspatch'
3	3	----> complete -c 'syspatch' -f -a '(_carapace_callback syspatch)'
1	1	----> complete -e 'sysrc'
4	4	----> complete -c 'sysrc' -f -a '(_carapace_callback sysrc)'
1	1	----> complete -e 'sysstat'
3	3	----> complete -c 'sysstat' -f -a '(_carapace_callback sysstat)'
2	2	----> complete -e 'systat'
3	3	----> complete -c 'systat' -f -a '(_carapace_callback systat)'
1	1	----> complete -e 'system_profiler'
3	3	----> complete -c 'system_profiler' -f -a '(_carapace_callback system_profiler)'
1	1	----> complete -e 'systemctl'
3	3	----> complete -c 'systemctl' -f -a '(_carapace_callback systemctl)'
2	2	----> complete -e 'systemd-analyze'
4	4	----> complete -c 'systemd-analyze' -f -a '(_carapace_callback systemd-analyze)'
2	2	----> complete -e 'sysupgrade'
4	4	----> complete -c 'sysupgrade' -f -a '(_carapace_callback sysupgrade)'
1	1	----> complete -e 'tac'
3	3	----> complete -c 'tac' -f -a '(_carapace_callback tac)'
2	2	----> complete -e 'tags'
3	3	----> complete -c 'tags' -f -a '(_carapace_callback tags)'
2	2	----> complete -e 'tail'
3	3	----> complete -c 'tail' -f -a '(_carapace_callback tail)'
1	1	----> complete -e 'tar'
3	3	----> complete -c 'tar' -f -a '(_carapace_callback tar)'
1	1	----> complete -e 'tar_archive'
3	3	----> complete -c 'tar_archive' -f -a '(_carapace_callback tar_archive)'
1	1	----> complete -e 'tardy'
4	4	----> complete -c 'tardy' -f -a '(_carapace_callback tardy)'
1	1	----> complete -e 'task'
4	4	----> complete -c 'task' -f -a '(_carapace_callback task)'
1	1	----> complete -e 'tcpsys'
3	3	----> complete -c 'tcpsys' -f -a '(_carapace_callback tcpsys)'
1	1	----> complete -e 'tcptraceroute'
4	4	----> complete -c 'tcptraceroute' -f -a '(_carapace_callback tcptraceroute)'
2	2	----> complete -e 'tea'
3	3	----> complete -c 'tea' -f -a '(_carapace_callback tea)'
1	1	----> complete -e 'tealdeer'
3	3	----> complete -c 'tealdeer' -f -a '(_carapace_callback tealdeer)'
2	2	----> complete -e 'tee'
3	3	----> complete -c 'tee' -f -a '(_carapace_callback tee)'
1	1	----> complete -e 'telnet'
3	3	----> complete -c 'telnet' -f -a '(_carapace_callback telnet)'
1	1	----> complete -e 'templ'
4	4	----> complete -c 'templ' -f -a '(_carapace_callback templ)'
2	2	----> complete -e 'terminals'
4	4	----> complete -c 'terminals' -f -a '(_carapace_callback terminals)'
2	2	----> complete -e 'termux-apt-repo'
5	5	----> complete -c 'termux-apt-repo' -f -a '(_carapace_callback termux-apt-repo)'
2	2	----> complete -e 'terraform'
4	4	----> complete -c 'terraform' -f -a '(_carapace_callback terraform)'
2	2	----> complete -e 'terraform-ls'
4	4	----> complete -c 'terraform-ls' -f -a '(_carapace_callback terraform-ls)'
3	3	----> complete -e 'terragrunt'
4	4	----> complete -c 'terragrunt' -f -a '(_carapace_callback terragrunt)'
1	1	----> complete -e 'terramate'
4	4	----> complete -c 'terramate' -f -a '(_carapace_callback terramate)'
1	1	----> complete -e 'tesseract'
3	3	----> complete -c 'tesseract' -f -a '(_carapace_callback tesseract)'
1	1	----> complete -e 'texi'
3	3	----> complete -c 'texi' -f -a '(_carapace_callback texi)'
1	1	----> complete -e 'texinfo'
3	3	----> complete -c 'texinfo' -f -a '(_carapace_callback texinfo)'
1	1	----> complete -e 'tidy'
3	3	----> complete -c 'tidy' -f -a '(_carapace_callback tidy)'
1	1	----> complete -e 'tiff'
3	3	----> complete -c 'tiff' -f -a '(_carapace_callback tiff)'
1	1	----> complete -e 'tig'
3	3	----> complete -c 'tig' -f -a '(_carapace_callback tig)'
2	2	----> complete -e 'tilde'
3	3	----> complete -c 'tilde' -f -a '(_carapace_callback tilde)'
1	1	----> complete -e 'tilde_files'
3	3	----> complete -c 'tilde_files' -f -a '(_carapace_callback tilde_files)'
1	1	----> complete -e 'time_zone'
3	3	----> complete -c 'time_zone' -f -a '(_carapace_callback time_zone)'
2	2	----> complete -e 'timeout'
4	4	----> complete -c 'timeout' -f -a '(_carapace_callback timeout)'
1	1	----> complete -e 'tin'
3	3	----> complete -c 'tin' -f -a '(_carapace_callback tin)'
1	1	----> complete -e 'tinygo'
4	4	----> complete -c 'tinygo' -f -a '(_carapace_callback tinygo)'
2	2	----> complete -e 'tla'
4	4	----> complete -c 'tla' -f -a '(_carapace_callback tla)'
1	1	----> complete -e 'tldr'
3	3	----> complete -c 'tldr' -f -a '(_carapace_callback tldr)'
1	1	----> complete -e 'tload'
4	4	----> complete -c 'tload' -f -a '(_carapace_callback tload)'
1	1	----> complete -e 'tmate'
3	3	----> complete -c 'tmate' -f -a '(_carapace_callback tmate)'
1	1	----> complete -e 'tmux'
3	3	----> complete -c 'tmux' -f -a '(_carapace_callback tmux)'
2	2	----> complete -e 'todo.sh'
5	5	----> complete -c 'todo.sh' -f -a '(_carapace_callback todo.sh)'
2	2	----> complete -e 'tofu'
3	3	----> complete -c 'tofu' -f -a '(_carapace_callback tofu)'
1	1	----> complete -e 'toilet'
7	7	----> complete -c 'toilet' -f -a '(_carapace_callback toilet)'
1	1	----> complete -e 'toit.lsp'
4	4	----> complete -c 'toit.lsp' -f -a '(_carapace_callback toit.lsp)'
2	2	----> complete -e 'toit.pkg'
4	4	----> complete -c 'toit.pkg' -f -a '(_carapace_callback toit.pkg)'
1	1	----> complete -e 'toolchain-source'
3	3	----> complete -c 'toolchain-source' -f -a '(_carapace_callback toolchain-source)'
1	1	----> complete -e 'top'
3	3	----> complete -c 'top' -f -a '(_carapace_callback top)'
2	2	----> complete -e 'topgit'
4	4	----> complete -c 'topgit' -f -a '(_carapace_callback topgit)'
2	2	----> complete -e 'tor-browser'
4	4	----> complete -c 'tor-browser' -f -a '(_carapace_callback tor-browser)'
2	2	----> complete -e 'tor-gencert'
3	3	----> complete -c 'tor-gencert' -f -a '(_carapace_callback tor-gencert)'
1	1	----> complete -e 'tor-print-ed-signing-cert'
4	4	----> complete -c 'tor-print-ed-signing-cert' -f -a '(_carapace_callback tor-print-ed-signing-cert)'
1	1	----> complete -e 'tor-resolve'
3	3	----> complete -c 'tor-resolve' -f -a '(_carapace_callback tor-resolve)'
1	1	----> complete -e 'torsocks'
4	4	----> complete -c 'torsocks' -f -a '(_carapace_callback torsocks)'
2	2	----> complete -e 'totd'
4	4	----> complete -c 'totd' -f -a '(_carapace_callback totd)'
2	2	----> complete -e 'touch'
4	4	----> complete -c 'touch' -f -a '(_carapace_callback touch)'
2	2	----> complete -e 'tox'
4	4	----> complete -c 'tox' -f -a '(_carapace_callback tox)'
1	1	----> complete -e 'tpb'
3	3	----> complete -c 'tpb' -f -a '(_carapace_callback tpb)'
1	1	----> complete -e 'tput'
3	3	----> complete -c 'tput' -f -a '(_carapace_callback tput)'
2	2	----> complete -e 'tr'
5	5	----> complete -c 'tr' -f -a '(_carapace_callback tr)'
2	2	----> complete -e 'traefik'
4	4	----> complete -c 'traefik' -f -a '(_carapace_callback traefik)'
2	2	----> complete -e 'transmission'
4	4	----> complete -c 'transmission' -f -a '(_carapace_callback transmission)'
2	2	----> complete -e 'transmission-cli'
4	4	----> complete -c 'transmission-cli' -f -a '(_carapace_callback transmission-cli)'
1	1	----> complete -e 'transmission-create'
3	3	----> complete -c 'transmission-create' -f -a '(_carapace_callback transmission-create)'
1	1	----> complete -e 'transmission-daemon'
4	4	----> complete -c 'transmission-daemon' -f -a '(_carapace_callback transmission-daemon)'
2	2	----> complete -e 'transmission-edit'
4	4	----> complete -c 'transmission-edit' -f -a '(_carapace_callback transmission-edit)'
1	1	----> complete -e 'transmission-remote'
3	3	----> complete -c 'transmission-remote' -f -a '(_carapace_callback transmission-remote)'
1	1	----> complete -e 'transmission-show'
3	3	----> complete -c 'transmission-show' -f -a '(_carapace_callback transmission-show)'
1	1	----> complete -e 'tree'
4	4	----> complete -c 'tree' -f -a '(_carapace_callback tree)'
2	2	----> complete -e 'truncate'
4	4	----> complete -c 'truncate' -f -a '(_carapace_callback truncate)'
1	1	----> complete -e 'truss'
3	3	----> complete -c 'truss' -f -a '(_carapace_callback truss)'
1	1	----> complete -e 'ts'
3	3	----> complete -c 'ts' -f -a '(_carapace_callback ts)'
1	1	----> complete -e 'tsc'
3	3	----> complete -c 'tsc' -f -a '(_carapace_callback tsc)'
2	2	----> complete -e 'tsh'
4	4	----> complete -c 'tsh' -f -a '(_carapace_callback tsh)'
1	1	----> complete -e 'tshark'
3	3	----> complete -c 'tshark' -f -a '(_carapace_callback tshark)'
1	1	----> complete -e 'tsort'
3	3	----> complete -c 'tsort' -f -a '(_carapace_callback tsort)'
2	2	----> complete -e 'tty'
3	3	----> complete -c 'tty' -f -a '(_carapace_callback tty)'
1	1	----> complete -e 'ttyd'
3	3	----> complete -c 'ttyd' -f -a '(_carapace_callback ttyd)'
2	2	----> complete -e 'ttys'
3	3	----> complete -c 'ttys' -f -a '(_carapace_callback ttys)'
1	1	----> complete -e 'tune2fs'
4	4	----> complete -c 'tune2fs' -f -a '(_carapace_callback tune2fs)'
2	2	----> complete -e 'turbo'
3	3	----> complete -c 'turbo' -f -a '(_carapace_callback turbo)'
1	1	----> complete -e 'twidge'
3	3	----> complete -c 'twidge' -f -a '(_carapace_callback twidge)'
2	2	----> complete -e 'twisted'
3	3	----> complete -c 'twisted' -f -a '(_carapace_callback twisted)'
1	1	----> complete -e 'ufw'
3	3	----> complete -c 'ufw' -f -a '(_carapace_callback ufw)'
2	2	----> complete -e 'uml'
3	3	----> complete -c 'uml' -f -a '(_carapace_callback uml)'
1	1	----> complete -e 'umount'
4	4	----> complete -c 'umount' -f -a '(_carapace_callback umount)'
2	2	----> complete -e 'umountable'
4	4	----> complete -c 'umountable' -f -a '(_carapace_callback umountable)'
1	1	----> complete -e 'unace'
3	3	----> complete -c 'unace' -f -a '(_carapace_callback unace)'
2	2	----> complete -e 'uname'
4	4	----> complete -c 'uname' -f -a '(_carapace_callback uname)'
2	2	----> complete -e 'unbrotli'
3	3	----> complete -c 'unbrotli' -f -a '(_carapace_callback unbrotli)'
2	2	----> complete -e 'unexpand'
6	6	----> complete -c 'unexpand' -f -a '(_carapace_callback unexpand)'
2	2	----> complete -e 'uniq'
3	3	----> complete -c 'uniq' -f -a '(_carapace_callback uniq)'
1	1	----> complete -e 'unison'
3	3	----> complete -c 'unison' -f -a '(_carapace_callback unison)'
2	2	----> complete -e 'units'
4	4	----> complete -c 'units' -f -a '(_carapace_callback units)'
1	1	----> complete -e 'unlink'
3	3	----> complete -c 'unlink' -f -a '(_carapace_callback unlink)'
1	1	----> complete -e 'unlzma'
4	4	----> complete -c 'unlzma' -f -a '(_carapace_callback unlzma)'
1	1	----> complete -e 'unpigz'
3	3	----> complete -c 'unpigz' -f -a '(_carapace_callback unpigz)'
2	2	----> complete -e 'unset-env'
3	3	----> complete -c 'unset-env' -f -a '(_carapace_callback unset-env)'
1	1	----> complete -e 'unshare'
3	3	----> complete -c 'unshare' -f -a '(_carapace_callback unshare)'
2	2	----> complete -e 'unxz'
3	3	----> complete -c 'unxz' -f -a '(_carapace_callback unxz)'
1	1	----> complete -e 'unzip'
4	4	----> complete -c 'unzip' -f -a '(_carapace_callback unzip)'
1	1	----> complete -e 'update-alternatives'
4	4	----> complete -c 'update-alternatives' -f -a '(_carapace_callback update-alternatives)'
2	2	----> complete -e 'update-rc.d'
4	4	----> complete -c 'update-rc.d' -f -a '(_carapace_callback update-rc.d)'
1	1	----> complete -e 'upower'
3	3	----> complete -c 'upower' -f -a '(_carapace_callback upower)'
1	1	----> complete -e 'uptime'
3	3	----> complete -c 'uptime' -f -a '(_carapace_callback uptime)'
1	1	----> complete -e 'upx'
4	4	----> complete -c 'upx' -f -a '(_carapace_callback upx)'
1	1	----> complete -e 'urls'
3	3	----> complete -c 'urls' -f -a '(_carapace_callback urls)'
2	2	----> complete -e 'urpmi'
3	3	----> complete -c 'urpmi' -f -a '(_carapace_callback urpmi)'
1	1	----> complete -e 'urxvt'
3	3	----> complete -c 'urxvt' -f -a '(_carapace_callback urxvt)'
1	1	----> complete -e 'usbconfig'
4	4	----> complete -c 'usbconfig' -f -a '(_carapace_callback usbconfig)'
2	2	----> complete -e 'uscan'
3	3	----> complete -c 'uscan' -f -a '(_carapace_callback uscan)'
1	1	----> complete -e 'user_admin'
3	3	----> complete -c 'user_admin' -f -a '(_carapace_callback user_admin)'
2	2	----> complete -e 'user_at_host'
3	3	----> complete -c 'user_at_host' -f -a '(_carapace_callback user_at_host)'
1	1	----> complete -e 'user_expand'
3	3	----> complete -c 'user_expand' -f -a '(_carapace_callback user_expand)'
2	2	----> complete -e 'user_math_func'
4	4	----> complete -c 'user_math_func' -f -a '(_carapace_callback user_math_func)'
2	2	----> complete -e 'useradd'
4	4	----> complete -c 'useradd' -f -a '(_carapace_callback useradd)'
2	2	----> complete -e 'userdel'
5	5	----> complete -c 'userdel' -f -a '(_carapace_callback userdel)'
2	2	----> complete -e 'usermod'
3	3	----> complete -c 'usermod' -f -a '(_carapace_callback usermod)'
1	1	----> complete -e 'users'
3	3	----> complete -c 'users' -f -a '(_carapace_callback users)'
1	1	----> complete -e 'users_on'
4	4	----> complete -c 'users_on' -f -a '(_carapace_callback users_on)'
2	2	----> complete -e 'vagrant'
4	4	----> complete -c 'vagrant' -f -a '(_carapace_callback vagrant)'
2	2	----> complete -e 'value'
3	3	----> complete -c 'value' -f -a '(_carapace_callback value)'
1	1	----> complete -e 'values'
4	4	----> complete -c 'values' -f -a '(_carapace_callback values)'
2	2	----> complete -e 'vars'
3	3	----> complete -c 'vars' -f -a '(_carapace_callback vars)'
1	1	----> complete -e 'vault'
3	3	----> complete -c 'vault' -f -a '(_carapace_callback vault)'
1	1	----> complete -e 'vcs_info'
3	3	----> complete -c 'vcs_info' -f -a '(_carapace_callback vcs_info)'
2	2	----> complete -e 'vcs_info_hooks'
4	4	----> complete -c 'vcs_info_hooks' -f -a '(_carapace_callback vcs_info_hooks)'
2	2	----> complete -e 'vdir'
3	3	----> complete -c 'vdir' -f -a '(_carapace_callback vdir)'
1	1	----> complete -e 'vercel'
4	4	----> complete -c 'vercel' -f -a '(_carapace_callback vercel)'
2	2	----> complete -e 'vhs'
3	3	----> complete -c 'vhs' -f -a '(_carapace_callback vhs)'
1	1	----> complete -e 'vi'
4	4	----> complete -c 'vi' -f -a '(_carapace_callback vi)'
1	1	----> complete -e 'viewnior'
3	3	----> complete -c 'viewnior' -f -a '(_carapace_callback viewnior)'
2	2	----> complete -e 'vim'
4	4	----> complete -c 'vim' -f -a '(_carapace_callback vim)'
1	1	----> complete -e 'visudo'
3	3	----> complete -c 'visudo' -f -a '(_carapace_callback visudo)'
1	1	----> complete -e 'viu'
3	3	----> complete -c 'viu' -f -a '(_carapace_callback viu)'
1	1	----> complete -e 'vivid'
3	3	----> complete -c 'vivid' -f -a '(_carapace_callback vivid)'
1	1	----> complete -e 'vlc'
3	3	----> complete -c 'vlc' -f -a '(_carapace_callback vlc)'
2	2	----> complete -e 'vmstat'
3	3	----> complete -c 'vmstat' -f -a '(_carapace_callback vmstat)'
1	1	----> complete -e 'vnc'
4	4	----> complete -c 'vnc' -f -a '(_carapace_callback vnc)'
2	2	----> complete -e 'volta'
3	3	----> complete -c 'volta' -f -a '(_carapace_callback volta)'
1	1	----> complete -e 'volume_groups'
3	3	----> complete -c 'volume_groups' -f -a '(_carapace_callback volume_groups)'
1	1	----> complete -e 'vorbis'
3	3	----> complete -c 'vorbis' -f -a '(_carapace_callback vorbis)'
1	1	----> complete -e 'vpnc'
4	4	----> complete -c 'vpnc' -f -a '(_carapace_callback vpnc)'
1	1	----> complete -e 'vserver'
3	3	----> complete -c 'vserver' -f -a '(_carapace_callback vserver)'
2	2	----> complete -e 'w'
4	4	----> complete -c 'w' -f -a '(_carapace_callback w)'
1	1	----> complete -e 'w3m'
3	3	----> complete -c 'w3m' -f -a '(_carapace_callback w3m)'
2	2	----> complete -e 'wakeup_capable_devices'
3	3	----> complete -c 'wakeup_capable_devices' -f -a '(_carapace_callback wakeup_capable_devices)'
1	1	----> complete -e 'wanna-build'
3	3	----> complete -c 'wanna-build' -f -a '(_carapace_callback wanna-build)'
1	1	----> complete -e 'wanted'
4	4	----> complete -c 'wanted' -f -a '(_carapace_callback wanted)'
1	1	----> complete -e 'watch'
3	3	----> complete -c 'watch' -f -a '(_carapace_callback watch)'
2	2	----> complete -e 'watch-snoop'
4	4	----> complete -c 'watch-snoop' -f -a '(_carapace_callback watch-snoop)'
2	2	----> complete -e 'watchexec'
4	4	----> complete -c 'watchexec' -f -a '(_carapace_callback watchexec)'
1	1	----> complete -e 'watchgnupg'
3	3	----> complete -c 'watchgnupg' -f -a '(_carapace_callback watchgnupg)'
1	1	----> complete -e 'waypoint'
4	4	----> complete -c 'waypoint' -f -a '(_carapace_callback waypoint)'
1	1	----> complete -e 'wc'
3	3	----> complete -c 'wc' -f -a '(_carapace_callback wc)'
1	1	----> complete -e 'webbrowser'
4	4	----> complete -c 'webbrowser' -f -a '(_carapace_callback webbrowser)'
2	2	----> complete -e 'wezterm'
3	3	----> complete -c 'wezterm' -f -a '(_carapace_callback wezterm)'
1	1	----> complete -e 'wget'
4	4	----> complete -c 'wget' -f -a '(_carapace_callback wget)'
1	1	----> complete -e 'whereis'
3	3	----> complete -c 'whereis' -f -a '(_carapace_callback whereis)'
2	2	----> complete -e 'which'
4	4	----> complete -c 'which' -f -a '(_carapace_callback which)'
1	1	----> complete -e 'who'
3	3	----> complete -c 'who' -f -a '(_carapace_callback who)'
2	2	----> complete -e 'whoami'
4	4	----> complete -c 'whoami' -f -a '(_carapace_callback whoami)'
1	1	----> complete -e 'whois'
3	3	----> complete -c 'whois' -f -a '(_carapace_callback whois)'
2	2	----> complete -e 'widgets'
3	3	----> complete -c 'widgets' -f -a '(_carapace_callback widgets)'
1	1	----> complete -e 'wiggle'
3	3	----> complete -c 'wiggle' -f -a '(_carapace_callback wiggle)'
2	2	----> complete -e 'wine'
3	3	----> complete -c 'wine' -f -a '(_carapace_callback wine)'
1	1	----> complete -e 'wineboot'
3	3	----> complete -c 'wineboot' -f -a '(_carapace_callback wineboot)'
2	2	----> complete -e 'winepath'
4	4	----> complete -c 'winepath' -f -a '(_carapace_callback winepath)'
2	2	----> complete -e 'wineserver'
3	3	----> complete -c 'wineserver' -f -a '(_carapace_callback wineserver)'
1	1	----> complete -e 'winetricks'
3	3	----> complete -c 'winetricks' -f -a '(_carapace_callback winetricks)'
1	1	----> complete -e 'wipefs'
5	5	----> complete -c 'wipefs' -f -a '(_carapace_callback wipefs)'
1	1	----> complete -e 'wire'
3	3	----> complete -c 'wire' -f -a '(_carapace_callback wire)'
1	1	----> complete -e 'wireshark'
3	3	----> complete -c 'wireshark' -f -a '(_carapace_callback wireshark)'
1	1	----> complete -e 'wishlist'
4	4	----> complete -c 'wishlist' -f -a '(_carapace_callback wishlist)'
2	2	----> complete -e 'wl-mirror'
5	5	----> complete -c 'wl-mirror' -f -a '(_carapace_callback wl-mirror)'
2	2	----> complete -e 'woeusb'
5	5	----> complete -c 'woeusb' -f -a '(_carapace_callback woeusb)'
2	2	----> complete -e 'x_arguments'
5	5	----> complete -c 'x_arguments' -f -a '(_carapace_callback x_arguments)'
2	2	----> complete -e 'x_borderwidth'
4	4	----> complete -c 'x_borderwidth' -f -a '(_carapace_callback x_borderwidth)'
1	1	----> complete -e 'x_color'
4	4	----> complete -c 'x_color' -f -a '(_carapace_callback x_color)'
2	2	----> complete -e 'x_colormapid'
4	4	----> complete -c 'x_colormapid' -f -a '(_carapace_callback x_colormapid)'
2	2	----> complete -e 'x_cursor'
4	4	----> complete -c 'x_cursor' -f -a '(_carapace_callback x_cursor)'
2	2	----> complete -e 'x_display'
4	4	----> complete -c 'x_display' -f -a '(_carapace_callback x_display)'
1	1	----> complete -e 'x_extension'
3	3	----> complete -c 'x_extension' -f -a '(_carapace_callback x_extension)'
1	1	----> complete -e 'x_font'
3	3	----> complete -c 'x_font' -f -a '(_carapace_callback x_font)'
2	2	----> complete -e 'x_geometry'
3	3	----> complete -c 'x_geometry' -f -a '(_carapace_callback x_geometry)'
1	1	----> complete -e 'x_keysym'
3	3	----> complete -c 'x_keysym' -f -a '(_carapace_callback x_keysym)'
1	1	----> complete -e 'x_locale'
3	3	----> complete -c 'x_locale' -f -a '(_carapace_callback x_locale)'
1	1	----> complete -e 'x_modifier'
4	4	----> complete -c 'x_modifier' -f -a '(_carapace_callback x_modifier)'
2	2	----> complete -e 'x_name'
3	3	----> complete -c 'x_name' -f -a '(_carapace_callback x_name)'
1	1	----> complete -e 'x_resource'
3	3	----> complete -c 'x_resource' -f -a '(_carapace_callback x_resource)'
2	2	----> complete -e 'x_selection_timeout'
4	4	----> complete -c 'x_selection_timeout' -f -a '(_carapace_callback x_selection_timeout)'
2	2	----> complete -e 'x_title'
4	4	----> complete -c 'x_title' -f -a '(_carapace_callback x_title)'
1	1	----> complete -e 'x_utils'
3	3	----> complete -c 'x_utils' -f -a '(_carapace_callback x_utils)'
2	2	----> complete -e 'x_visual'
5	5	----> complete -c 'x_visual' -f -a '(_carapace_callback x_visual)'
2	2	----> complete -e 'x_window'
3	3	----> complete -c 'x_window' -f -a '(_carapace_callback x_window)'
1	1	----> complete -e 'xargs'
3	3	----> complete -c 'xargs' -f -a '(_carapace_callback xargs)'
1	1	----> complete -e 'xauth'
4	4	----> complete -c 'xauth' -f -a '(_carapace_callback xauth)'
2	2	----> complete -e 'xautolock'
4	4	----> complete -c 'xautolock' -f -a '(_carapace_callback xautolock)'
1	1	----> complete -e 'xbacklight'
3	3	----> complete -c 'xbacklight' -f -a '(_carapace_callback xbacklight)'
1	1	----> complete -e 'xclip'
3	3	----> complete -c 'xclip' -f -a '(_carapace_callback xclip)'
2	2	----> complete -e 'xcode-select'
4	4	----> complete -c 'xcode-select' -f -a '(_carapace_callback xcode-select)'
2	2	----> complete -e 'xdotool'
4	4	----> complete -c 'xdotool' -f -a '(_carapace_callback xdotool)'
1	1	----> complete -e 'xfig'
3	3	----> complete -c 'xfig' -f -a '(_carapace_callback xfig)'
1	1	----> complete -e 'xft_fonts'
3	3	----> complete -c 'xft_fonts' -f -a '(_carapace_callback xft_fonts)'
1	1	----> complete -e 'xh'
4	4	----> complete -c 'xh' -f -a '(_carapace_callback xh)'
1	1	----> complete -e 'xloadimage'
3	3	----> complete -c 'xloadimage' -f -a '(_carapace_callback xloadimage)'
2	2	----> complete -e 'xmlsoft'
3	3	----> complete -c 'xmlsoft' -f -a '(_carapace_callback xmlsoft)'
1	1	----> complete -e 'xmlstarlet'
3	3	----> complete -c 'xmlstarlet' -f -a '(_carapace_callback xmlstarlet)'
1	1	----> complete -e 'xmms2'
4	4	----> complete -c 'xmms2' -f -a '(_carapace_callback xmms2)'
2	2	----> complete -e 'xmodmap'
4	4	----> complete -c 'xmodmap' -f -a '(_carapace_callback xmodmap)'
1	1	----> complete -e 'xonsh'
3	3	----> complete -c 'xonsh' -f -a '(_carapace_callback xonsh)'
1	1	----> complete -e 'xournal'
4	4	----> complete -c 'xournal' -f -a '(_carapace_callback xournal)'
1	1	----> complete -e 'xscreensaver'
4	4	----> complete -c 'xscreensaver' -f -a '(_carapace_callback xscreensaver)'
1	1	----> complete -e 'xset'
3	3	----> complete -c 'xset' -f -a '(_carapace_callback xset)'
2	2	----> complete -e 'xt_arguments'
4	4	----> complete -c 'xt_arguments' -f -a '(_carapace_callback xt_arguments)'
2	2	----> complete -e 'xt_session_id'
4	4	----> complete -c 'xt_session_id' -f -a '(_carapace_callback xt_session_id)'
1	1	----> complete -e 'xv'
4	4	----> complete -c 'xv' -f -a '(_carapace_callback xv)'
1	1	----> complete -e 'xwit'
3	3	----> complete -c 'xwit' -f -a '(_carapace_callback xwit)'
2	2	----> complete -e 'xz'
3	3	----> complete -c 'xz' -f -a '(_carapace_callback xz)'
1	1	----> complete -e 'xzcat'
3	3	----> complete -c 'xzcat' -f -a '(_carapace_callback xzcat)'
2	2	----> complete -e 'yafc'
5	5	----> complete -c 'yafc' -f -a '(_carapace_callback yafc)'
1	1	----> complete -e 'yarn'
3	3	----> complete -c 'yarn' -f -a '(_carapace_callback yarn)'
1	1	----> complete -e 'yast'
3	3	----> complete -c 'yast' -f -a '(_carapace_callback yast)'
2	2	----> complete -e 'yay'
3	3	----> complete -c 'yay' -f -a '(_carapace_callback yay)'
1	1	----> complete -e 'yes'
3	3	----> complete -c 'yes' -f -a '(_carapace_callback yes)'
1	1	----> complete -e 'yj'
3	3	----> complete -c 'yj' -f -a '(_carapace_callback yj)'
2	2	----> complete -e 'yodl'
3	3	----> complete -c 'yodl' -f -a '(_carapace_callback yodl)'
1	1	----> complete -e 'youtube-dl'
3	3	----> complete -c 'youtube-dl' -f -a '(_carapace_callback youtube-dl)'
1	1	----> complete -e 'yp'
5	5	----> complete -c 'yp' -f -a '(_carapace_callback yp)'
2	2	----> complete -e 'yt-dlp'
4	4	----> complete -c 'yt-dlp' -f -a '(_carapace_callback yt-dlp)'
1	1	----> complete -e 'zargs'
3	3	----> complete -c 'zargs' -f -a '(_carapace_callback zargs)'
1	1	----> complete -e 'zathura'
4	4	----> complete -c 'zathura' -f -a '(_carapace_callback zathura)'
2	2	----> complete -e 'zattr'
3	3	----> complete -c 'zattr' -f -a '(_carapace_callback zattr)'
1	1	----> complete -e 'zcalc'
3	3	----> complete -c 'zcalc' -f -a '(_carapace_callback zcalc)'
2	2	----> complete -e 'zcalc_line'
3	3	----> complete -c 'zcalc_line' -f -a '(_carapace_callback zcalc_line)'
1	1	----> complete -e 'zcat'
3	3	----> complete -c 'zcat' -f -a '(_carapace_callback zcat)'
2	2	----> complete -e 'zdump'
3	3	----> complete -c 'zdump' -f -a '(_carapace_callback zdump)'
1	1	----> complete -e 'zeal'
4	4	----> complete -c 'zeal' -f -a '(_carapace_callback zeal)'
2	2	----> complete -e 'zfs_dataset'
4	4	----> complete -c 'zfs_dataset' -f -a '(_carapace_callback zfs_dataset)'
2	2	----> complete -e 'zfs_pool'
4	4	----> complete -c 'zfs_pool' -f -a '(_carapace_callback zfs_pool)'
2	2	----> complete -e 'zftp'
3	3	----> complete -c 'zftp' -f -a '(_carapace_callback zftp)'
1	1	----> complete -e 'zip'
3	3	----> complete -c 'zip' -f -a '(_carapace_callback zip)'
2	2	----> complete -e 'zlogin'
3	3	----> complete -c 'zlogin' -f -a '(_carapace_callback zlogin)'
1	1	----> complete -e 'zmv'
3	3	----> complete -c 'zmv' -f -a '(_carapace_callback zmv)'
1	1	----> complete -e 'zoneadm'
3	3	----> complete -c 'zoneadm' -f -a '(_carapace_callback zoneadm)'
1	1	----> complete -e 'zones'
3	3	----> complete -c 'zones' -f -a '(_carapace_callback zones)'
2	2	----> complete -e 'zoxide'
3	3	----> complete -c 'zoxide' -f -a '(_carapace_callback zoxide)'
1	1	----> complete -e 'zpty'
4	4	----> complete -c 'zpty' -f -a '(_carapace_callback zpty)'
2	2	----> complete -e 'zsh'
3	3	----> complete -c 'zsh' -f -a '(_carapace_callback zsh)'
1	1	----> complete -e 'zsh-mime-handler'
4	4	----> complete -c 'zsh-mime-handler' -f -a '(_carapace_callback zsh-mime-handler)'
2	2	----> complete -e 'zsocket'
4	4	----> complete -c 'zsocket' -f -a '(_carapace_callback zsocket)'
2	2	----> complete -e 'ztodo'
3	3	----> complete -c 'ztodo' -f -a '(_carapace_callback ztodo)'
207	5582	---> export LS_COLORS=$(vivid generate catppuccin-frappe)
4964	4964	----> vivid generate catppuccin-frappe
1	5	----> if not set -q argv[1]...
4	4	-----> not set -q argv[1]
38	406	----> for arg in $argv...
177	263	-----> set -l v (string split -m 1 "=" -- $arg)
86	86	------> string split -m 1 "=" -- $arg
22	105	-----> switch (count $v)...
36	36	------> count $v
3	47	------> if contains -- $v[1] PATH CDPATH MANPATH...
4	4	-------> contains -- $v[1] PATH CDPATH MANPATH
1	1	-------> true
39	39	-------> set -gx $v[1] $v[2]
17	33	--> set -l basename (string replace -r '^.*/' '' -- $file)
16	16	---> string replace -r '^.*/' '' -- $file
5	5	--> contains -- $basename $sourcelist
4	4	--> set sourcelist $sourcelist $basename
24	24	--> test -f $file -a -r $file
159	159	--> source $file
36	50	--> set -l basename (string replace -r '^.*/' '' -- $file)
14	14	---> string replace -r '^.*/' '' -- $file
8	8	--> contains -- $basename $sourcelist
5	5	--> set sourcelist $sourcelist $basename
23	23	--> test -f $file -a -r $file
135	139	--> source $file
4	4	---> function cpa --description "Copies the realpath of specified file"...
20	29	--> set -l basename (string replace -r '^.*/' '' -- $file)
9	9	---> string replace -r '^.*/' '' -- $file
5	5	--> contains -- $basename $sourcelist
4	4	--> set sourcelist $sourcelist $basename
18	18	--> test -f $file -a -r $file
228	233	--> source $file
5	5	---> bind \eo __fish_list_current_token
17	23	--> set -l basename (string replace -r '^.*/' '' -- $file)
6	6	---> string replace -r '^.*/' '' -- $file
5	5	--> contains -- $basename $sourcelist
5	5	--> set sourcelist $sourcelist $basename
19	19	--> test -f $file -a -r $file
80	82	--> source $file
2	2	---> function cwk --description "Setup git worktree and work on issue with claude code"...
18	25	--> set -l basename (string replace -r '^.*/' '' -- $file)
7	7	---> string replace -r '^.*/' '' -- $file
4	4	--> contains -- $basename $sourcelist
4	4	--> set sourcelist $sourcelist $basename
16	16	--> test -f $file -a -r $file
577	710954	--> source $file
1	1	---> function getOutputStr...
1	1	---> function isDarkMode...
1	1	---> function getTheme...
0	0	---> function getTmuxTheme...
0	0	---> function set_tmux_theme...
0	0	---> function gum...
0	0	---> function ccat...
0	0	---> function cat...
1	1	---> function getGlowStyle...
0	0	---> function evalTmuxTheme...
30	703329	---> if [ "$(isDarkMode)" -eq 1 ]...
19	6418	----> [ "$(isDarkMode)" -eq 1 ]
4	6399	-----> isDarkMode
15	6388	------> set output $(getOutputStr)
6	6373	-------> getOutputStr
1	1258	--------> if [ "$(uname)" = Linux ]...
27	1257	---------> [ "$(uname)" = Linux ]
1230	1230	----------> uname
35	5107	--------> set output (defaults read -globalDomain AppleInterfaceStyle &> /dev/null && echo 'dark' || echo 'light')
5066	5066	---------> defaults read -globalDomain AppleInterfaceStyle &> /dev/null
6	6	---------> echo 'light'
2	2	--------> echo $output
3	7	------> if [ "$output" = dark ]...
3	3	-------> [ "$output" = dark ]
1	1	-------> echo 0
9705	9705	----> git config --global delta.features "line-numbers decorations catppuccin-latte"
687023	687023	----> claude config set -g theme light
34	153	----> export AICHAT_LIGHT_THEME=true
3	10	-----> if not set -q argv[1]...
7	7	------> not set -q argv[1]
12	109	-----> for arg in $argv...
54	62	------> set -l v (string split -m 1 "=" -- $arg)
8	8	-------> string split -m 1 "=" -- $arg
19	35	------> switch (count $v)...
5	5	-------> count $v
2	11	-------> if contains -- $v[1] PATH CDPATH MANPATH...
4	4	--------> contains -- $v[1] PATH CDPATH MANPATH
1	1	--------> true
4	4	--------> set -gx $v[1] $v[2]
4	7044	---> evalTmuxTheme
143	7040	----> echo "source $HOME/.config/tmux/catppuccin-$(getTmuxTheme).conf" >~/.config/tmux/tmux.conf.theme
5	6897	-----> getTmuxTheme
2	6892	------> if [ "$(isDarkMode)" -eq 1 ]...
18	6889	-------> [ "$(isDarkMode)" -eq 1 ]
4	6871	--------> isDarkMode
16	6859	---------> set output $(getOutputStr)
14	6843	----------> getOutputStr
1	1373	-----------> if [ "$(uname)" = Linux ]...
27	1372	------------> [ "$(uname)" = Linux ]
1345	1345	-------------> uname
48	5453	-----------> set output (defaults read -globalDomain AppleInterfaceStyle &> /dev/null && echo 'dark' || echo 'light')
5389	5389	------------> defaults read -globalDomain AppleInterfaceStyle &> /dev/null
16	16	------------> echo 'light'
3	3	-----------> echo $output
3	8	---------> if [ "$output" = dark ]...
4	4	----------> [ "$output" = dark ]
1	1	----------> echo 0
1	1	-------> echo latte
29	51	--> set -l basename (string replace -r '^.*/' '' -- $file)
22	22	---> string replace -r '^.*/' '' -- $file
8	8	--> contains -- $basename $sourcelist
5	5	--> set sourcelist $sourcelist $basename
21	21	--> test -f $file -a -r $file
132	352	--> source $file
17	220	---> alias dns-cli "dns-cli -c ~/secrets/dns-cli-config.json"
3	3	----> set -l options h/help s/save
10	10	----> argparse -n alias --max-args=2 $options -- $argv
1	2	----> if set -q _flag_help...
1	1	-----> set -q _flag_help
2	2	----> set -l name
1	1	----> set -l body
1	1	----> set -l prefix
5	13	----> if not set -q argv[1]...
2	2	-----> not set -q argv[1]
1	1	-----> not set -q argv[2]
3	3	-----> set name $argv[1]
2	2	-----> set body $argv[2]
0	6	----> if test -z "$name"...
3	3	-----> test -z "$name"
3	3	-----> test -z "$body"
39	39	----> printf '%s\n' $body | read -l --list words
3	3	----> set -l first_word $words[1]
3	3	----> set -l last_word $words[-1]
3	57	----> if test $first_word = $name...
4	4	-----> test $first_word = $name
2	50	-----> if contains $name (builtin --names)...
37	46	------> contains $name (builtin --names)
9	9	-------> builtin --names
2	2	------> set prefix command
19	24	----> set -l cmd_string (string escape -- "alias $argv")
5	5	-----> string escape -- "alias $argv"
1	1	----> set -l wraps
1	3	----> if test $first_word != $name...
2	2	-----> test $first_word != $name
30	34	----> echo "function $name $wraps --description $cmd_string; $prefix $body \$argv
        end" | source
4	4	-----> function dns-cli  --description 'alias dns-cli dns-cli -c ~/secrets/dns-cli-config.json'...
0	1	----> if set -q _flag_save...
1	1	-----> set -q _flag_save
16	23	--> set -l basename (string replace -r '^.*/' '' -- $file)
7	7	---> string replace -r '^.*/' '' -- $file
5	5	--> contains -- $basename $sourcelist
5	5	--> set sourcelist $sourcelist $basename
18	18	--> test -f $file -a -r $file
407	619	--> source $file
4	4	---> abbr -a dk docker
2	2	---> abbr -a dka 'docker attach'
2	2	---> abbr -a dkb 'docker build'
1	1	---> abbr -a dkd 'docker diff'
1	1	---> abbr -a dkdf 'docker system df'
1	1	---> abbr -a dke 'docker exec'
1	1	---> abbr -a dkei 'docker exec -it'
2	2	---> abbr -a dkh 'docker history'
2	2	---> abbr -a dki 'docker images'
1	1	---> abbr -a dkin 'docker inspect'
1	1	---> abbr -a dkim 'docker import'
2	2	---> abbr -a dkk 'docker kill'
2	2	---> abbr -a dkkh 'docker kill -s HUP'
4	4	---> abbr -a dkl 'docker logs'
1	1	---> abbr -a dkL 'docker logs -f'
1	1	---> abbr -a dkli 'docker login'
2	2	---> abbr -a dklo 'docker logout'
1	1	---> abbr -a dkp 'docker pause'
1	1	---> abbr -a dkP 'docker unpause'
2	2	---> abbr -a dkpl 'docker pull'
1	1	---> abbr -a dkph 'docker push'
2	2	---> abbr -a dkps 'docker ps'
2	2	---> abbr -a dkpsa 'docker ps -a'
1	1	---> abbr -a dkr 'docker run'
1	1	---> abbr -a dkri 'docker run -it --rm'
1	1	---> abbr -a dkrie 'docker run -it --rm --entrypoint /bin/bash'
1	1	---> abbr -a dkRM 'docker system prune'
1	1	---> abbr -a dkrm 'docker rm'
2	2	---> abbr -a dkrmi 'docker rmi'
1	1	---> abbr -a dkrn 'docker rename'
1	1	---> abbr -a dks 'docker start'
1	1	---> abbr -a dkS 'docker restart'
2	2	---> abbr -a dkss 'docker stats'
1	1	---> abbr -a dksv 'docker save'
2	2	---> abbr -a dkt 'docker tag'
2	2	---> abbr -a dktop 'docker top'
1	1	---> abbr -a dkup 'docker update'
1	1	---> abbr -a dkv 'docker version'
1	1	---> abbr -a dkw 'docker wait'
1	1	---> abbr -a dkx 'docker stop'
2	2	---> abbr -a dkstop 'docker stop (docker ps -aq)'
1	1	---> abbr -a dkc 'docker compose'
2	2	---> abbr -a dkcb 'docker compose build'
2	2	---> abbr -a dkcB 'docker compose build --no-cache'
1	1	---> abbr -a dkcd 'docker compose down'
1	1	---> abbr -a dkce 'docker compose exec'
1	1	---> abbr -a dkck 'docker compose kill'
1	1	---> abbr -a dkcl 'docker compose logs'
1	1	---> abbr -a dkcL 'docker compose logs -f'
1	1	---> abbr -a dkcls 'docker compose ps'
2	2	---> abbr -a dkcp 'docker compose pause'
2	2	---> abbr -a dkcP 'docker compose unpause'
1	1	---> abbr -a dkcpl 'docker compose pull'
1	1	---> abbr -a dkcph 'docker compose push'
2	2	---> abbr -a dkcps 'docker compose ps'
2	2	---> abbr -a dkcr 'docker compose run'
2	2	---> abbr -a dkcR 'docker compose run --rm'
1	1	---> abbr -a dkcrm 'docker compose rm'
1	1	---> abbr -a dkcs 'docker compose start'
1	1	---> abbr -a dkcsc 'docker compose scale'
2	2	---> abbr -a dkcS 'docker compose restart'
1	1	---> abbr -a dkcu 'docker compose up'
1	1	---> abbr -a dkcU 'docker compose up -d'
2	2	---> abbr -a dkcv 'docker compose version'
1	1	---> abbr -a dkcx 'docker compose stop'
1	1	---> abbr -a dkC 'docker container'
2	2	---> abbr -a dkCa 'docker container attach'
2	2	---> abbr -a dkCcp 'docker container cp'
1	1	---> abbr -a dkCd 'docker container diff'
3	3	---> abbr -a dkCe 'docker container exec'
2	2	---> abbr -a dkCei 'docker container exec -it'
1	1	---> abbr -a dkCin 'docker container inspect'
1	1	---> abbr -a dkCk 'docker container kill'
2	2	---> abbr -a dkCl 'docker container logs'
1	1	---> abbr -a dkCL 'docker container logs -f'
1	1	---> abbr -a dkCls 'docker container ls'
2	2	---> abbr -a dkCp 'docker container pause'
1	1	---> abbr -a dkCpr 'docker container prune'
1	1	---> abbr -a dkCrn 'docker container rename'
1	1	---> abbr -a dkCS 'docker container restart'
2	2	---> abbr -a dkCrm 'docker container rm'
1	1	---> abbr -a dkCr 'docker container run'
1	1	---> abbr -a dkCri 'docker container run -it --rm'
1	1	---> abbr -a dkCrie 'docker container run -it --rm --entrypoint /bin/bash'
1	1	---> abbr -a dkCs 'docker container start'
2	2	---> abbr -a dkCss 'docker container stats'
2	2	---> abbr -a dkCx 'docker container stop'
1	1	---> abbr -a dkCtop 'docker container top'
1	1	---> abbr -a dkCP 'docker container unpause'
2	2	---> abbr -a dkCup 'docker container update'
2	2	---> abbr -a dkCw 'docker container wait'
2	2	---> abbr -a dkI 'docker image'
1	1	---> abbr -a dkIb 'docker image build'
1	1	---> abbr -a dkIh 'docker image history'
2	2	---> abbr -a dkIim 'docker image import'
1	1	---> abbr -a dkIin 'docker image inspect'
1	1	---> abbr -a dkIls 'docker image ls'
2	2	---> abbr -a dkIpr 'docker image prune'
1	1	---> abbr -a dkIpl 'docker image pull'
1	1	---> abbr -a dkIph 'docker image push'
2	2	---> abbr -a dkIrm 'docker image rm'
1	1	---> abbr -a dkIsv 'docker image save'
1	1	---> abbr -a dkIt 'docker image tag'
2	2	---> abbr -a dkV 'docker volume'
1	1	---> abbr -a dkVin 'docker volume inspect'
1	1	---> abbr -a dkVls 'docker volume ls'
1	1	---> abbr -a dkVpr 'docker volume prune'
2	2	---> abbr -a dkVrm 'docker volume rm'
1	1	---> abbr -a dkN 'docker network'
1	1	---> abbr -a dkNs 'docker network connect'
2	2	---> abbr -a dkNx 'docker network disconnect'
2	2	---> abbr -a dkNin 'docker network inspect'
1	1	---> abbr -a dkNls 'docker network ls'
2	2	---> abbr -a dkNpr 'docker network prune'
1	1	---> abbr -a dkNrm 'docker network rm'
1	1	---> abbr -a dkY 'docker system'
2	2	---> abbr -a dkYdf 'docker system df'
1	1	---> abbr -a dkYpr 'docker system prune'
1	1	---> abbr -a dkK 'docker stack'
2	2	---> abbr -a dkKls 'docker stack ls'
1	1	---> abbr -a dkKps 'docker stack ps'
1	1	---> abbr -a dkKrm 'docker stack rm'
2	2	---> abbr -a dkW 'docker swarm'
3	3	---> abbr -a dkrmC 'docker rm (docker ps -qaf status=exited)'
2	2	---> abbr -a dkrmI 'docker rmi (docker images -qf dangling=true)'
4	4	---> abbr -a dkplI 'docker images --format "{{ .Repository }}" | grep -v "^<none>$" | xargs -L1 docker pull'
2	2	---> abbr -a dkrmV 'docker volume rm (docker volume ls -qf dangling=true)'
1	1	---> abbr -a dkm docker-machine
1	1	---> abbr -a dkma 'docker-machine active'
2	2	---> abbr -a dkmcp 'docker-machine scp'
1	1	---> abbr -a dkmin 'docker-machine inspect'
1	1	---> abbr -a dkmip 'docker-machine ip'
2	2	---> abbr -a dkmk 'docker-machine kill'
2	2	---> abbr -a dkmls 'docker-machine ls'
1	1	---> abbr -a dkmpr 'docker-machine provision'
1	1	---> abbr -a dkmps 'docker-machine ps'
2	2	---> abbr -a dkmrg 'docker-machine regenerate-certs'
1	1	---> abbr -a dkmrm 'docker-machine rm'
1	1	---> abbr -a dkms 'docker-machine start'
2	2	---> abbr -a dkmsh 'docker-machine ssh'
1	1	---> abbr -a dkmst 'docker-machine status'
1	1	---> abbr -a dkmS 'docker-machine restart'
1	1	---> abbr -a dkmu 'docker-machine url'
1	1	---> abbr -a dkmup 'docker-machine upgrade'
1	1	---> abbr -a dkmv 'docker-machine version'
1	1	---> abbr -a dkmx 'docker-machine stop'
18	23	--> set -l basename (string replace -r '^.*/' '' -- $file)
5	5	---> string replace -r '^.*/' '' -- $file
5	5	--> contains -- $basename $sourcelist
5	5	--> set sourcelist $sourcelist $basename
18	18	--> test -f $file -a -r $file
117	4039	--> source $file
4	3922	---> if test (uname) = Darwin...
35	1344	----> test (uname) = Darwin
1309	1309	-----> uname
47	2574	----> export DYLD_FALLBACK_LIBRARY_PATH="$(xcode-select --print-path)/Toolchains/XcodeDefault.xctoolchain/usr/lib/"
2456	2456	-----> xcode-select --print-path
1	4	-----> if not set -q argv[1]...
3	3	------> not set -q argv[1]
7	67	-----> for arg in $argv...
22	28	------> set -l v (string split -m 1 "=" -- $arg)
6	6	-------> string split -m 1 "=" -- $arg
18	32	------> switch (count $v)...
4	4	-------> count $v
2	10	-------> if contains -- $v[1] PATH CDPATH MANPATH...
3	3	--------> contains -- $v[1] PATH CDPATH MANPATH
1	1	--------> true
4	4	--------> set -gx $v[1] $v[2]
16	24	--> set -l basename (string replace -r '^.*/' '' -- $file)
8	8	---> string replace -r '^.*/' '' -- $file
5	5	--> contains -- $basename $sourcelist
5	5	--> set sourcelist $sourcelist $basename
19	19	--> test -f $file -a -r $file
152	159	--> source $file
5	5	---> set -x GID 1000
2	2	---> set -x UID 1000
22	31	--> set -l basename (string replace -r '^.*/' '' -- $file)
9	9	---> string replace -r '^.*/' '' -- $file
8	8	--> contains -- $basename $sourcelist
6	6	--> set sourcelist $sourcelist $basename
22	22	--> test -f $file -a -r $file
247	107900	--> source $file
107646	107653	---> thefuck --alias fk | source
7	7	----> function fk -d "Correct your previous console command"...
32	61	--> set -l basename (string replace -r '^.*/' '' -- $file)
29	29	---> string replace -r '^.*/' '' -- $file
12	12	--> contains -- $basename $sourcelist
7	7	--> set sourcelist $sourcelist $basename
28	28	--> test -f $file -a -r $file
163	420	--> source $file
15	257	---> export PATH="$PATH:$HOME/flutter/bin"
1	4	----> if not set -q argv[1]...
3	3	-----> not set -q argv[1]
10	238	----> for arg in $argv...
31	42	-----> set -l v (string split -m 1 "=" -- $arg)
11	11	------> string split -m 1 "=" -- $arg
17	186	-----> switch (count $v)...
6	6	------> count $v
5	163	------> if contains -- $v[1] PATH CDPATH MANPATH...
3	3	-------> contains -- $v[1] PATH CDPATH MANPATH
28	90	-------> set -l colonized_path (string replace -- "$$v[1]" (string join ":" -- $$v[1]) $v[2])
42	62	--------> string replace -- "$$v[1]" (string join ":" -- $$v[1]) $v[2]
20	20	---------> string join ":" -- $$v[1]
50	65	-------> set -gx $v[1] (string split ":" -- $colonized_path)
15	15	--------> string split ":" -- $colonized_path
18	24	--> set -l basename (string replace -r '^.*/' '' -- $file)
6	6	---> string replace -r '^.*/' '' -- $file
13	13	--> contains -- $basename $sourcelist
5	5	--> set sourcelist $sourcelist $basename
19	19	--> test -f $file -a -r $file
155	3077	--> source $file
2734	2908	---> fzf --fish | source
2	2	----> function fzf_key_bindings...
24	172	----> fzf_key_bindings
27	56	-----> set -l fish_ver (string match -r '^(\d+).(\d+)' $version 2> /dev/null; or echo 0\n0\n0)
29	29	------> string match -r '^(\d+).(\d+)' $version 2> /dev/null
1	27	-----> if test \( "$fish_ver[2]" -lt 3 \) -o \( "$fish_ver[2]" -eq 3 -a "$fish_ver[3]" -lt 1 \)...
14	14	------> test \( "$fish_ver[2]" -lt 3 \) -o \( "$fish_ver[2]" -eq 3 -a "$fish_ver[3]" -lt 1 \)
12	12	------> not type -q fzf
1	1	-----> function __fzf_defaults...
0	0	-----> function __fzfcmd...
4	4	-----> function __fzf_parse_commandline -d 'Parse the current command line token and return split of existing filepath, fzf query, and optional -option= prefix'...
1	1	-----> function fzf-file-widget -d "List files and folders"...
3	3	-----> function fzf-history-widget -d "Show command history"...
36	36	-----> function fzf-cd-widget -d "Change directory"...
5	5	-----> bind \cr fzf-history-widget
2	2	-----> bind -M insert \cr fzf-history-widget
4	8	-----> if not set -q FZF_CTRL_T_COMMAND...
2	2	------> not set -q FZF_CTRL_T_COMMAND
1	1	------> bind \ct fzf-file-widget
1	1	------> bind -M insert \ct fzf-file-widget
1	5	-----> if not set -q FZF_ALT_C_COMMAND...
0	0	------> not set -q FZF_ALT_C_COMMAND
2	2	------> bind \ec fzf-cd-widget
2	2	------> bind -M insert \ec fzf-cd-widget
7	7	---> set -Ux FZF_DEFAULT_OPTS "\
--ansi \
--border rounded \
--color='16,bg+:-1,gutter:-1,prompt:5,pointer:5,marker:6,border:4,label:4,header:italic' \
--marker=' ' \
--no-info \
--no-separator \
--pointer='👉' \
--reverse"
3	3	---> set -Ux FZF_TMUX_OPTS "-p 55%,60%"
4	4	---> set -Ux FZF_CTRL_R_OPTS "\
--border-label=' history ' \
--prompt='  '"
21	28	--> set -l basename (string replace -r '^.*/' '' -- $file)
7	7	---> string replace -r '^.*/' '' -- $file
8	8	--> contains -- $basename $sourcelist
6	6	--> set sourcelist $sourcelist $basename
19	19	--> test -f $file -a -r $file
73	544	--> source $file
1	3	---> if not status is-interactive...
2	2	----> not status is-interactive
4	4	---> set --global _fzf_search_vars_command '_fzf_search_variables (set --show | psub) (set --names | psub)'
18	459	---> fzf_configure_bindings
317	319	----> source /Users/hugo/.config/fish/functions/fzf_configure_bindings.fish
2	2	-----> function fzf_configure_bindings --description "Installs the default key bindings for fzf.fish with user overrides passed as options."...
1	1	----> status is-interactive
4	4	----> set -f options_spec h/help 'directory=?' 'git_log=?' 'git_status=?' 'history=?' 'processes=?' 'variables=?'
19	19	----> argparse --max-args=0 --ignore-unknown $options_spec -- $argv 2>/dev/null
8	98	----> if test $status -ne 0...
3	3	-----> test $status -ne 0
1	1	-----> set --query _flag_help
4	4	-----> set -f key_sequences \e\cf \e\cl \e\cs \cr \e\cp \cv
1	1	-----> set --query _flag_directory
0	0	-----> set --query _flag_git_log
1	1	-----> set --query _flag_git_status
1	1	-----> set --query _flag_history
1	1	-----> set --query _flag_processes
1	1	-----> set --query _flag_variables
0	18	-----> if functions --query _fzf_uninstall_bindings...
18	18	------> functions --query _fzf_uninstall_bindings
12	57	-----> for mode in default insert...
2	2	------> test -n $key_sequences[1]
3	3	------> bind --mode $mode $key_sequences[1] _fzf_search_directory
1	1	------> test -n $key_sequences[2]
3	3	------> bind --mode $mode $key_sequences[2] _fzf_search_git_log
1	1	------> test -n $key_sequences[3]
2	2	------> bind --mode $mode $key_sequences[3] _fzf_search_git_status
1	1	------> test -n $key_sequences[4]
2	2	------> bind --mode $mode $key_sequences[4] _fzf_search_history
1	1	------> test -n $key_sequences[5]
2	2	------> bind --mode $mode $key_sequences[5] _fzf_search_processes
1	1	------> test -n $key_sequences[6]
4	4	------> bind --mode $mode $key_sequences[6] "$_fzf_search_vars_command"
1	1	------> test -n $key_sequences[1]
3	3	------> bind --mode $mode $key_sequences[1] _fzf_search_directory
1	1	------> test -n $key_sequences[2]
3	3	------> bind --mode $mode $key_sequences[2] _fzf_search_git_log
1	1	------> test -n $key_sequences[3]
2	2	------> bind --mode $mode $key_sequences[3] _fzf_search_git_status
1	1	------> test -n $key_sequences[4]
2	2	------> bind --mode $mode $key_sequences[4] _fzf_search_history
1	1	------> test -n $key_sequences[5]
2	2	------> bind --mode $mode $key_sequences[5] _fzf_search_processes
2	2	------> test -n $key_sequences[6]
3	3	------> bind --mode $mode $key_sequences[6] "$_fzf_search_vars_command"
2	2	-----> function _fzf_uninstall_bindings --inherit-variable key_sequences...
1	1	---> function _fzf_uninstall --on-event fzf_uninstall...
4	4	---> abbr fzf-prev 'fzf --preview "bat --color=always --style=numbers --line-range=:500 {}"'
16	22	--> set -l basename (string replace -r '^.*/' '' -- $file)
6	6	---> string replace -r '^.*/' '' -- $file
7	7	--> contains -- $basename $sourcelist
6	6	--> set sourcelist $sourcelist $basename
17	17	--> test -f $file -a -r $file
43	45	--> source $file
2	2	---> function gbage -d "List local branches and display their age"...
15	19	--> set -l basename (string replace -r '^.*/' '' -- $file)
4	4	---> string replace -r '^.*/' '' -- $file
5	5	--> contains -- $basename $sourcelist
6	6	--> set sourcelist $sourcelist $basename
16	16	--> test -f $file -a -r $file
61	63	--> source $file
2	2	---> function gbda -d "Delete all branches merged in current HEAD, including squashed"...
15	19	--> set -l basename (string replace -r '^.*/' '' -- $file)
4	4	---> string replace -r '^.*/' '' -- $file
6	6	--> contains -- $basename $sourcelist
6	6	--> set sourcelist $sourcelist $basename
16	16	--> test -f $file -a -r $file
35	2633	--> source $file
26	2598	---> export GPG_TTY=$(tty)
2507	2507	----> tty
1	3	----> if not set -q argv[1]...
2	2	-----> not set -q argv[1]
8	62	----> for arg in $argv...
19	23	-----> set -l v (string split -m 1 "=" -- $arg)
4	4	------> string split -m 1 "=" -- $arg
19	31	-----> switch (count $v)...
3	3	------> count $v
2	9	------> if contains -- $v[1] PATH CDPATH MANPATH...
2	2	-------> contains -- $v[1] PATH CDPATH MANPATH
2	2	-------> true
3	3	-------> set -gx $v[1] $v[2]
18	25	--> set -l basename (string replace -r '^.*/' '' -- $file)
7	7	---> string replace -r '^.*/' '' -- $file
7	7	--> contains -- $basename $sourcelist
6	6	--> set sourcelist $sourcelist $basename
18	18	--> test -f $file -a -r $file
11	11	--> source $file
15	20	--> set -l basename (string replace -r '^.*/' '' -- $file)
5	5	---> string replace -r '^.*/' '' -- $file
5	5	--> contains -- $basename $sourcelist
6	6	--> set sourcelist $sourcelist $basename
16	16	--> test -f $file -a -r $file
62	63	--> source $file
1	1	---> function brew...
19	23	--> set -l basename (string replace -r '^.*/' '' -- $file)
4	4	---> string replace -r '^.*/' '' -- $file
6	6	--> contains -- $basename $sourcelist
6	6	--> set sourcelist $sourcelist $basename
16	16	--> test -f $file -a -r $file
1165	1501	--> source $file
6	59	---> export JAVA_HOME="/opt/homebrew/opt/openjdk@17"
0	2	----> if not set -q argv[1]...
2	2	-----> not set -q argv[1]
5	51	----> for arg in $argv...
15	18	-----> set -l v (string split -m 1 "=" -- $arg)
3	3	------> string split -m 1 "=" -- $arg
19	28	-----> switch (count $v)...
2	2	------> count $v
1	7	------> if contains -- $v[1] PATH CDPATH MANPATH...
2	2	-------> contains -- $v[1] PATH CDPATH MANPATH
1	1	-------> true
3	3	-------> set -gx $v[1] $v[2]
12	277	---> export PATH="$JAVA_HOME/bin:$PATH"
0	1	----> if not set -q argv[1]...
1	1	-----> not set -q argv[1]
7	264	----> for arg in $argv...
43	53	-----> set -l v (string split -m 1 "=" -- $arg)
10	10	------> string split -m 1 "=" -- $arg
26	204	-----> switch (count $v)...
8	8	------> count $v
3	170	------> if contains -- $v[1] PATH CDPATH MANPATH...
4	4	-------> contains -- $v[1] PATH CDPATH MANPATH
30	97	-------> set -l colonized_path (string replace -- "$$v[1]" (string join ":" -- $$v[1]) $v[2])
45	67	--------> string replace -- "$$v[1]" (string join ":" -- $$v[1]) $v[2]
22	22	---------> string join ":" -- $$v[1]
50	66	-------> set -gx $v[1] (string split ":" -- $colonized_path)
16	16	--------> string split ":" -- $colonized_path
16	24	--> set -l basename (string replace -r '^.*/' '' -- $file)
8	8	---> string replace -r '^.*/' '' -- $file
8	8	--> contains -- $basename $sourcelist
7	7	--> set sourcelist $sourcelist $basename
21	21	--> test -f $file -a -r $file
63	64	--> source $file
1	1	---> function md...
18	26	--> set -l basename (string replace -r '^.*/' '' -- $file)
8	8	---> string replace -r '^.*/' '' -- $file
6	6	--> contains -- $basename $sourcelist
6	6	--> set sourcelist $sourcelist $basename
17	17	--> test -f $file -a -r $file
235	286	--> source $file
6	51	---> export NIX_CONF_DIR=$HOME/.config/nix
0	1	----> if not set -q argv[1]...
1	1	-----> not set -q argv[1]
4	44	----> for arg in $argv...
14	17	-----> set -l v (string split -m 1 "=" -- $arg)
3	3	------> string split -m 1 "=" -- $arg
14	23	-----> switch (count $v)...
2	2	------> count $v
1	7	------> if contains -- $v[1] PATH CDPATH MANPATH...
2	2	-------> contains -- $v[1] PATH CDPATH MANPATH
1	1	-------> true
3	3	-------> set -gx $v[1] $v[2]
14	18	--> set -l basename (string replace -r '^.*/' '' -- $file)
4	4	---> string replace -r '^.*/' '' -- $file
6	6	--> contains -- $basename $sourcelist
6	6	--> set sourcelist $sourcelist $basename
16	16	--> test -f $file -a -r $file
49	49	--> source $file
0	0	---> function selectObsidianAction...
13	17	--> set -l basename (string replace -r '^.*/' '' -- $file)
4	4	---> string replace -r '^.*/' '' -- $file
5	5	--> contains -- $basename $sourcelist
6	6	--> set sourcelist $sourcelist $basename
15	15	--> test -f $file -a -r $file
168	8752	--> source $file
1	1	---> set -q XDG_DATA_HOME
3	3	---> set -gx OMF_PATH "$HOME/.local/share/omf"
318	8580	---> source $OMF_PATH/init.fish
0	2	----> if not set -q OMF_CONFIG...
2	2	-----> not set -q OMF_CONFIG
4	4	----> test -f $OMF_CONFIG/before.init.fish
13	13	----> emit perf:timer:start "Oh My Fish initialisation"
5	5	----> test -f $OMF_CONFIG/theme
242	242	----> read -l theme < $OMF_CONFIG/theme
4	4	----> set -l core_function_path $OMF_PATH/lib{,/git}
429	429	----> set -l theme_function_path {$OMF_CONFIG,$OMF_PATH}/themes*/$theme{,/functions}
36	36	----> set fish_function_path $fish_function_path[1] \
                       $core_function_path \
                       $theme_function_path \
                       $fish_function_path[2..-1]
23	23	----> emit perf:timer:start "Oh My Fish init installed packages"
177	7178	----> require --path {$OMF_PATH,$OMF_CONFIG}/pkg/*
327	328	-----> source /Users/hugo/.local/share/omf/lib/require.fish
1	1	------> function require...
3	3	-----> set packages $argv
0	3	-----> if test -z "$packages"...
3	3	------> test -z "$packages"
0	33	-----> if set index (contains -i -- --no-bundle $packages)...
15	33	------> set index (contains -i -- --no-bundle $packages)
18	18	-------> contains -i -- --no-bundle $packages
1	24	-----> if set index (contains -i -- --path $packages)...
14	17	------> set index (contains -i -- --path $packages)
3	3	-------> contains -i -- --path $packages
3	3	------> set -e packages[$index]
3	3	------> set package_path $packages
223	223	-----> set function_path $package_path/functions*
38	38	-----> set complete_path $package_path/completions*
36	36	-----> set init_path $package_path/init.fish*
145	145	-----> set conf_path $package_path/conf.d/*.fish
3	3	-----> test -n "$function_path"
8	8	-----> set fish_function_path $fish_function_path[1] \
                               $function_path \
                               $fish_function_path[2..-1]
2	2	-----> test -n "$complete_path"
7	7	-----> set fish_complete_path $fish_complete_path[1] \
                               $complete_path \
                               $fish_complete_path[2..-1]
22	5888	-----> for init in $init_path...
20	20	------> emit perf:timer:start $init
2	2	------> set -l IFS '/'
36	36	------> echo $init | read -la components
15	39	------> set path (printf '/%s' $components[1..-2])
24	24	-------> printf '/%s' $components[1..-2]
16	16	------> contains $path $omf_init_path
2	2	------> set package $components[-2]
3	11	------> if not set -q ignore_bundle...
1	1	-------> not set -q ignore_bundle
3	3	-------> set bundle $path/bundle
1	1	-------> set dependencies
1	3	-------> if test -f $bundle...
2	2	--------> test -f $bundle
160	4621	------> source $init $path
4	4	-------> set -l __git_init_path "$path/functions/__git.init.fish"
2	432	-------> if [ -f "$__git_init_path" ]...
6	6	--------> [ -f "$__git_init_path" ]
424	424	--------> source "$__git_init_path"
0	0	---------> function __git.init...
82	4025	-------> __git.init
2	2	--------> function __git.create_abbr -d "Create Git plugin abbreviation"...
1	2	--------> if set -q __git_plugin_initialized...
1	1	---------> set -q __git_plugin_initialized
2	53	--------> __git.create_abbr g          git
3	3	---------> set -l name $argv[1]
3	3	---------> set -l body $argv[2..-1]
24	45	---------> abbr -a -g $name $body
21	21	----------> source /opt/homebrew/Cellar/fish/4.0.2/share/fish/functions/abbr.fish
4	11	--------> __git.create_abbr ga         git add
2	2	---------> set -l name $argv[1]
2	2	---------> set -l body $argv[2..-1]
3	3	---------> abbr -a -g $name $body
4	11	--------> __git.create_abbr gaa        git add --all
2	2	---------> set -l name $argv[1]
2	2	---------> set -l body $argv[2..-1]
3	3	---------> abbr -a -g $name $body
3	10	--------> __git.create_abbr gau        git add --update
2	2	---------> set -l name $argv[1]
2	2	---------> set -l body $argv[2..-1]
3	3	---------> abbr -a -g $name $body
2	9	--------> __git.create_abbr gapa       git add --patch
2	2	---------> set -l name $argv[1]
2	2	---------> set -l body $argv[2..-1]
3	3	---------> abbr -a -g $name $body
2	9	--------> __git.create_abbr gap        git apply
2	2	---------> set -l name $argv[1]
2	2	---------> set -l body $argv[2..-1]
3	3	---------> abbr -a -g $name $body
4	10	--------> __git.create_abbr gb         git branch -vv
1	1	---------> set -l name $argv[1]
2	2	---------> set -l body $argv[2..-1]
3	3	---------> abbr -a -g $name $body
4	10	--------> __git.create_abbr gba        git branch -a -v
1	1	---------> set -l name $argv[1]
2	2	---------> set -l body $argv[2..-1]
3	3	---------> abbr -a -g $name $body
2	13	--------> __git.create_abbr gban       git branch -a -v --no-merged
2	2	---------> set -l name $argv[1]
3	3	---------> set -l body $argv[2..-1]
6	6	---------> abbr -a -g $name $body
3	10	--------> __git.create_abbr gbd        git branch -d
2	2	---------> set -l name $argv[1]
2	2	---------> set -l body $argv[2..-1]
3	3	---------> abbr -a -g $name $body
3	9	--------> __git.create_abbr gbD        git branch -D
2	2	---------> set -l name $argv[1]
2	2	---------> set -l body $argv[2..-1]
2	2	---------> abbr -a -g $name $body
4	11	--------> __git.create_abbr ggsup      git branch --set-upstream-to=origin/\(__git.current_branch\)
2	2	---------> set -l name $argv[1]
2	2	---------> set -l body $argv[2..-1]
3	3	---------> abbr -a -g $name $body
3	11	--------> __git.create_abbr gbl        git blame -b -w
2	2	---------> set -l name $argv[1]
2	2	---------> set -l body $argv[2..-1]
4	4	---------> abbr -a -g $name $body
3	11	--------> __git.create_abbr gbs        git bisect
3	3	---------> set -l name $argv[1]
2	2	---------> set -l body $argv[2..-1]
3	3	---------> abbr -a -g $name $body
3	9	--------> __git.create_abbr gbsb       git bisect bad
2	2	---------> set -l name $argv[1]
1	1	---------> set -l body $argv[2..-1]
3	3	---------> abbr -a -g $name $body
2	9	--------> __git.create_abbr gbsg       git bisect good
2	2	---------> set -l name $argv[1]
2	2	---------> set -l body $argv[2..-1]
3	3	---------> abbr -a -g $name $body
2	9	--------> __git.create_abbr gbsr       git bisect reset
2	2	---------> set -l name $argv[1]
2	2	---------> set -l body $argv[2..-1]
3	3	---------> abbr -a -g $name $body
3	9	--------> __git.create_abbr gbss       git bisect start
1	1	---------> set -l name $argv[1]
2	2	---------> set -l body $argv[2..-1]
3	3	---------> abbr -a -g $name $body
3	9	--------> __git.create_abbr gc         git commit -v
2	2	---------> set -l name $argv[1]
2	2	---------> set -l body $argv[2..-1]
2	2	---------> abbr -a -g $name $body
3	10	--------> __git.create_abbr gc!        git commit -v --amend
2	2	---------> set -l name $argv[1]
2	2	---------> set -l body $argv[2..-1]
3	3	---------> abbr -a -g $name $body
5	11	--------> __git.create_abbr gcn!       git commit -v --no-edit --amend
1	1	---------> set -l name $argv[1]
2	2	---------> set -l body $argv[2..-1]
3	3	---------> abbr -a -g $name $body
3	10	--------> __git.create_abbr gca        git commit -v -a
2	2	---------> set -l name $argv[1]
2	2	---------> set -l body $argv[2..-1]
3	3	---------> abbr -a -g $name $body
2	10	--------> __git.create_abbr gca!       git commit -v -a --amend
2	2	---------> set -l name $argv[1]
3	3	---------> set -l body $argv[2..-1]
3	3	---------> abbr -a -g $name $body
4	11	--------> __git.create_abbr gcan!      git commit -v -a --no-edit --amend
2	2	---------> set -l name $argv[1]
2	2	---------> set -l body $argv[2..-1]
3	3	---------> abbr -a -g $name $body
3	9	--------> __git.create_abbr gcv        git commit -v --no-verify
2	2	---------> set -l name $argv[1]
2	2	---------> set -l body $argv[2..-1]
2	2	---------> abbr -a -g $name $body
2	17	--------> __git.create_abbr gcav       git commit -a -v --no-verify
2	2	---------> set -l name $argv[1]
4	4	---------> set -l body $argv[2..-1]
9	9	---------> abbr -a -g $name $body
3	10	--------> __git.create_abbr gcav!      git commit -a -v --no-verify --amend
2	2	---------> set -l name $argv[1]
2	2	---------> set -l body $argv[2..-1]
3	3	---------> abbr -a -g $name $body
7	14	--------> __git.create_abbr gcm        git commit -m
2	2	---------> set -l name $argv[1]
2	2	---------> set -l body $argv[2..-1]
3	3	---------> abbr -a -g $name $body
3	8	--------> __git.create_abbr gcam       git commit -a -m
1	1	---------> set -l name $argv[1]
2	2	---------> set -l body $argv[2..-1]
2	2	---------> abbr -a -g $name $body
2	8	--------> __git.create_abbr gcs        git commit -S
2	2	---------> set -l name $argv[1]
2	2	---------> set -l body $argv[2..-1]
2	2	---------> abbr -a -g $name $body
3	10	--------> __git.create_abbr gscam      git commit -S -a -m
1	1	---------> set -l name $argv[1]
3	3	---------> set -l body $argv[2..-1]
3	3	---------> abbr -a -g $name $body
3	8	--------> __git.create_abbr gcfx       git commit --fixup
1	1	---------> set -l name $argv[1]
2	2	---------> set -l body $argv[2..-1]
2	2	---------> abbr -a -g $name $body
4	8	--------> __git.create_abbr gcf        git config --list
1	1	---------> set -l name $argv[1]
1	1	---------> set -l body $argv[2..-1]
2	2	---------> abbr -a -g $name $body
4	8	--------> __git.create_abbr gcl        git clone
1	1	---------> set -l name $argv[1]
1	1	---------> set -l body $argv[2..-1]
2	2	---------> abbr -a -g $name $body
2	13	--------> __git.create_abbr gclean     git clean -di
2	2	---------> set -l name $argv[1]
2	2	---------> set -l body $argv[2..-1]
7	7	---------> abbr -a -g $name $body
3	8	--------> __git.create_abbr gclean!    git clean -dfx
2	2	---------> set -l name $argv[1]
1	1	---------> set -l body $argv[2..-1]
2	2	---------> abbr -a -g $name $body
3	9	--------> __git.create_abbr gclean!!   "git reset --hard; and git clean -dfx"
2	2	---------> set -l name $argv[1]
2	2	---------> set -l body $argv[2..-1]
2	2	---------> abbr -a -g $name $body
3	8	--------> __git.create_abbr gcount     git shortlog -sn
1	1	---------> set -l name $argv[1]
2	2	---------> set -l body $argv[2..-1]
2	2	---------> abbr -a -g $name $body
3	8	--------> __git.create_abbr gcp        git cherry-pick
1	1	---------> set -l name $argv[1]
2	2	---------> set -l body $argv[2..-1]
2	2	---------> abbr -a -g $name $body
2	8	--------> __git.create_abbr gcpa       git cherry-pick --abort
1	1	---------> set -l name $argv[1]
2	2	---------> set -l body $argv[2..-1]
3	3	---------> abbr -a -g $name $body
3	11	--------> __git.create_abbr gcpc       git cherry-pick --continue
2	2	---------> set -l name $argv[1]
2	2	---------> set -l body $argv[2..-1]
4	4	---------> abbr -a -g $name $body
2	8	--------> __git.create_abbr gd         git diff
2	2	---------> set -l name $argv[1]
1	1	---------> set -l body $argv[2..-1]
3	3	---------> abbr -a -g $name $body
4	8	--------> __git.create_abbr gdca       git diff --cached
1	1	---------> set -l name $argv[1]
1	1	---------> set -l body $argv[2..-1]
2	2	---------> abbr -a -g $name $body
4	8	--------> __git.create_abbr gds        git diff --stat
1	1	---------> set -l name $argv[1]
1	1	---------> set -l body $argv[2..-1]
2	2	---------> abbr -a -g $name $body
2	13	--------> __git.create_abbr gdsc       git diff --stat --cached
3	3	---------> set -l name $argv[1]
3	3	---------> set -l body $argv[2..-1]
5	5	---------> abbr -a -g $name $body
2	13	--------> __git.create_abbr gdt        git diff-tree --no-commit-id --name-only -r
3	3	---------> set -l name $argv[1]
3	3	---------> set -l body $argv[2..-1]
5	5	---------> abbr -a -g $name $body
4	15	--------> __git.create_abbr gdw        git diff --word-diff
3	3	---------> set -l name $argv[1]
3	3	---------> set -l body $argv[2..-1]
5	5	---------> abbr -a -g $name $body
4	17	--------> __git.create_abbr gdwc       git diff --word-diff --cached
3	3	---------> set -l name $argv[1]
4	4	---------> set -l body $argv[2..-1]
6	6	---------> abbr -a -g $name $body
5	16	--------> __git.create_abbr gdto       git difftool
3	3	---------> set -l name $argv[1]
3	3	---------> set -l body $argv[2..-1]
5	5	---------> abbr -a -g $name $body
2	13	--------> __git.create_abbr gdg        git diff --no-ext-diff
3	3	---------> set -l name $argv[1]
3	3	---------> set -l body $argv[2..-1]
5	5	---------> abbr -a -g $name $body
2	13	--------> __git.create_abbr gignore    git update-index --assume-unchanged
3	3	---------> set -l name $argv[1]
3	3	---------> set -l body $argv[2..-1]
5	5	---------> abbr -a -g $name $body
5	13	--------> __git.create_abbr gf         git fetch
2	2	---------> set -l name $argv[1]
2	2	---------> set -l body $argv[2..-1]
4	4	---------> abbr -a -g $name $body
4	14	--------> __git.create_abbr gfa        git fetch --all --prune
2	2	---------> set -l name $argv[1]
3	3	---------> set -l body $argv[2..-1]
5	5	---------> abbr -a -g $name $body
6	15	--------> __git.create_abbr gfm        "git fetch origin (__git.default_branch) --prune; and git merge FETCH_HEAD"
2	2	---------> set -l name $argv[1]
3	3	---------> set -l body $argv[2..-1]
4	4	---------> abbr -a -g $name $body
4	12	--------> __git.create_abbr gfo        git fetch origin
2	2	---------> set -l name $argv[1]
2	2	---------> set -l body $argv[2..-1]
4	4	---------> abbr -a -g $name $body
3	12	--------> __git.create_abbr gl         git pull
2	2	---------> set -l name $argv[1]
3	3	---------> set -l body $argv[2..-1]
4	4	---------> abbr -a -g $name $body
4	15	--------> __git.create_abbr ggl        git pull origin \(__git.current_branch\)
3	3	---------> set -l name $argv[1]
3	3	---------> set -l body $argv[2..-1]
5	5	---------> abbr -a -g $name $body
2	12	--------> __git.create_abbr gll        git pull origin
3	3	---------> set -l name $argv[1]
3	3	---------> set -l body $argv[2..-1]
4	4	---------> abbr -a -g $name $body
4	12	--------> __git.create_abbr glr        git pull --rebase
2	2	---------> set -l name $argv[1]
2	2	---------> set -l body $argv[2..-1]
4	4	---------> abbr -a -g $name $body
2	12	--------> __git.create_abbr glg        git log --stat
3	3	---------> set -l name $argv[1]
3	3	---------> set -l body $argv[2..-1]
4	4	---------> abbr -a -g $name $body
2	12	--------> __git.create_abbr glgg       git log --graph
2	2	---------> set -l name $argv[1]
3	3	---------> set -l body $argv[2..-1]
5	5	---------> abbr -a -g $name $body
3	13	--------> __git.create_abbr glgga      git log --graph --decorate --all
3	3	---------> set -l name $argv[1]
3	3	---------> set -l body $argv[2..-1]
4	4	---------> abbr -a -g $name $body
3	12	--------> __git.create_abbr glo        git log --oneline --decorate --color
2	2	---------> set -l name $argv[1]
3	3	---------> set -l body $argv[2..-1]
4	4	---------> abbr -a -g $name $body
3	13	--------> __git.create_abbr glog       git log --oneline --decorate --color --graph
2	2	---------> set -l name $argv[1]
3	3	---------> set -l body $argv[2..-1]
5	5	---------> abbr -a -g $name $body
5	12	--------> __git.create_abbr gloga      git log --oneline --decorate --color --graph --all
2	2	---------> set -l name $argv[1]
2	2	---------> set -l body $argv[2..-1]
3	3	---------> abbr -a -g $name $body
5	11	--------> __git.create_abbr glom       git log --oneline --decorate --color \(__git.default_branch\)..
1	1	---------> set -l name $argv[1]
2	2	---------> set -l body $argv[2..-1]
3	3	---------> abbr -a -g $name $body
3	11	--------> __git.create_abbr glod       git log --oneline --decorate --color develop..
1	1	---------> set -l name $argv[1]
3	3	---------> set -l body $argv[2..-1]
4	4	---------> abbr -a -g $name $body
4	10	--------> __git.create_abbr gloo       "git log --pretty=format:'%C(yellow)%h %Cred%ad %Cblue%an%Cgreen%d %Creset%s' --date=short"
1	1	---------> set -l name $argv[1]
2	2	---------> set -l body $argv[2..-1]
3	3	---------> abbr -a -g $name $body
2	8	--------> __git.create_abbr gm         git merge
2	2	---------> set -l name $argv[1]
2	2	---------> set -l body $argv[2..-1]
2	2	---------> abbr -a -g $name $body
2	8	--------> __git.create_abbr gmt        git mergetool --no-prompt
1	1	---------> set -l name $argv[1]
2	2	---------> set -l body $argv[2..-1]
3	3	---------> abbr -a -g $name $body
4	9	--------> __git.create_abbr gmom       git merge origin/\(__git.default_branch\)
1	1	---------> set -l name $argv[1]
2	2	---------> set -l body $argv[2..-1]
2	2	---------> abbr -a -g $name $body
3	8	--------> __git.create_abbr gp         git push
2	2	---------> set -l name $argv[1]
1	1	---------> set -l body $argv[2..-1]
2	2	---------> abbr -a -g $name $body
2	12	--------> __git.create_abbr gp!        git push --force-with-lease
3	3	---------> set -l name $argv[1]
3	3	---------> set -l body $argv[2..-1]
4	4	---------> abbr -a -g $name $body
2	8	--------> __git.create_abbr gpo        git push origin
2	2	---------> set -l name $argv[1]
2	2	---------> set -l body $argv[2..-1]
2	2	---------> abbr -a -g $name $body
3	9	--------> __git.create_abbr gpo!       git push --force-with-lease origin
1	1	---------> set -l name $argv[1]
2	2	---------> set -l body $argv[2..-1]
3	3	---------> abbr -a -g $name $body
2	9	--------> __git.create_abbr gpv        git push --no-verify
3	3	---------> set -l name $argv[1]
2	2	---------> set -l body $argv[2..-1]
2	2	---------> abbr -a -g $name $body
3	13	--------> __git.create_abbr gpv!       git push --no-verify --force-with-lease
5	5	---------> set -l name $argv[1]
2	2	---------> set -l body $argv[2..-1]
3	3	---------> abbr -a -g $name $body
4	9	--------> __git.create_abbr ggp        git push origin \(__git.current_branch\)
1	1	---------> set -l name $argv[1]
2	2	---------> set -l body $argv[2..-1]
2	2	---------> abbr -a -g $name $body
3	10	--------> __git.create_abbr ggp!       git push origin \(__git.current_branch\) --force-with-lease
1	1	---------> set -l name $argv[1]
3	3	---------> set -l body $argv[2..-1]
3	3	---------> abbr -a -g $name $body
3	10	--------> __git.create_abbr gpu        git push origin \(__git.current_branch\) --set-upstream
1	1	---------> set -l name $argv[1]
3	3	---------> set -l body $argv[2..-1]
3	3	---------> abbr -a -g $name $body
4	10	--------> __git.create_abbr gpoat      "git push origin --all; and git push origin --tags"
2	2	---------> set -l name $argv[1]
2	2	---------> set -l body $argv[2..-1]
2	2	---------> abbr -a -g $name $body
5	9	--------> __git.create_abbr ggpnp      "git pull origin (__git.current_branch); and git push origin (__git.current_branch)"
1	1	---------> set -l name $argv[1]
1	1	---------> set -l body $argv[2..-1]
2	2	---------> abbr -a -g $name $body
2	8	--------> __git.create_abbr gr         git remote -vv
2	2	---------> set -l name $argv[1]
2	2	---------> set -l body $argv[2..-1]
2	2	---------> abbr -a -g $name $body
2	7	--------> __git.create_abbr gra        git remote add
1	1	---------> set -l name $argv[1]
2	2	---------> set -l body $argv[2..-1]
2	2	---------> abbr -a -g $name $body
3	7	--------> __git.create_abbr grb        git rebase
1	1	---------> set -l name $argv[1]
1	1	---------> set -l body $argv[2..-1]
2	2	---------> abbr -a -g $name $body
1	7	--------> __git.create_abbr grba       git rebase --abort
1	1	---------> set -l name $argv[1]
2	2	---------> set -l body $argv[2..-1]
3	3	---------> abbr -a -g $name $body
4	8	--------> __git.create_abbr grbc       git rebase --continue
1	1	---------> set -l name $argv[1]
1	1	---------> set -l body $argv[2..-1]
2	2	---------> abbr -a -g $name $body
3	11	--------> __git.create_abbr grbi       git rebase --interactive
2	2	---------> set -l name $argv[1]
2	2	---------> set -l body $argv[2..-1]
4	4	---------> abbr -a -g $name $body
5	12	--------> __git.create_abbr grbm       git rebase \(__git.default_branch\)
2	2	---------> set -l name $argv[1]
2	2	---------> set -l body $argv[2..-1]
3	3	---------> abbr -a -g $name $body
5	13	--------> __git.create_abbr grbmi      git rebase \(__git.default_branch\) --interactive
2	2	---------> set -l name $argv[1]
2	2	---------> set -l body $argv[2..-1]
4	4	---------> abbr -a -g $name $body
5	14	--------> __git.create_abbr grbmia     git rebase \(__git.default_branch\) --interactive --autosquash
2	2	---------> set -l name $argv[1]
3	3	---------> set -l body $argv[2..-1]
4	4	---------> abbr -a -g $name $body
4	13	--------> __git.create_abbr grbom      "git fetch origin (__git.default_branch); and git rebase FETCH_HEAD"
2	2	---------> set -l name $argv[1]
3	3	---------> set -l body $argv[2..-1]
4	4	---------> abbr -a -g $name $body
6	14	--------> __git.create_abbr grbomi     "git fetch origin (__git.default_branch); and git rebase FETCH_HEAD --interactive"
2	2	---------> set -l name $argv[1]
2	2	---------> set -l body $argv[2..-1]
4	4	---------> abbr -a -g $name $body
4	13	--------> __git.create_abbr grbomia    "git fetch origin (__git.default_branch); and git rebase FETCH_HEAD --interactive --autosquash"
2	2	---------> set -l name $argv[1]
3	3	---------> set -l body $argv[2..-1]
4	4	---------> abbr -a -g $name $body
4	11	--------> __git.create_abbr grbd       git rebase develop
2	2	---------> set -l name $argv[1]
2	2	---------> set -l body $argv[2..-1]
3	3	---------> abbr -a -g $name $body
3	11	--------> __git.create_abbr grbdi      git rebase develop --interactive
2	2	---------> set -l name $argv[1]
2	2	---------> set -l body $argv[2..-1]
4	4	---------> abbr -a -g $name $body
4	13	--------> __git.create_abbr grbdia     git rebase develop --interactive --autosquash
2	2	---------> set -l name $argv[1]
2	2	---------> set -l body $argv[2..-1]
5	5	---------> abbr -a -g $name $body
2	11	--------> __git.create_abbr grbs       git rebase --skip
3	3	---------> set -l name $argv[1]
2	2	---------> set -l body $argv[2..-1]
4	4	---------> abbr -a -g $name $body
5	13	--------> __git.create_abbr ggu        git pull --rebase origin \(__git.current_branch\)
2	2	---------> set -l name $argv[1]
2	2	---------> set -l body $argv[2..-1]
4	4	---------> abbr -a -g $name $body
1	10	--------> __git.create_abbr grev       git revert
2	2	---------> set -l name $argv[1]
3	3	---------> set -l body $argv[2..-1]
4	4	---------> abbr -a -g $name $body
3	10	--------> __git.create_abbr grh        git reset
2	2	---------> set -l name $argv[1]
2	2	---------> set -l body $argv[2..-1]
3	3	---------> abbr -a -g $name $body
4	11	--------> __git.create_abbr grhh       git reset --hard
2	2	---------> set -l name $argv[1]
2	2	---------> set -l body $argv[2..-1]
3	3	---------> abbr -a -g $name $body
3	13	--------> __git.create_abbr grhpa      git reset --patch
2	2	---------> set -l name $argv[1]
3	3	---------> set -l body $argv[2..-1]
5	5	---------> abbr -a -g $name $body
3	11	--------> __git.create_abbr grm        git rm
2	2	---------> set -l name $argv[1]
2	2	---------> set -l body $argv[2..-1]
4	4	---------> abbr -a -g $name $body
4	11	--------> __git.create_abbr grmc       git rm --cached
2	2	---------> set -l name $argv[1]
2	2	---------> set -l body $argv[2..-1]
3	3	---------> abbr -a -g $name $body
1	10	--------> __git.create_abbr grmv       git remote rename
2	2	---------> set -l name $argv[1]
3	3	---------> set -l body $argv[2..-1]
4	4	---------> abbr -a -g $name $body
2	11	--------> __git.create_abbr grpo       git remote prune origin
2	2	---------> set -l name $argv[1]
3	3	---------> set -l body $argv[2..-1]
4	4	---------> abbr -a -g $name $body
4	11	--------> __git.create_abbr grrm       git remote remove
2	2	---------> set -l name $argv[1]
2	2	---------> set -l body $argv[2..-1]
3	3	---------> abbr -a -g $name $body
3	11	--------> __git.create_abbr grs        git restore
2	2	---------> set -l name $argv[1]
2	2	---------> set -l body $argv[2..-1]
4	4	---------> abbr -a -g $name $body
3	11	--------> __git.create_abbr grset      git remote set-url
2	2	---------> set -l name $argv[1]
3	3	---------> set -l body $argv[2..-1]
3	3	---------> abbr -a -g $name $body
3	12	--------> __git.create_abbr grss       git restore --source
2	2	---------> set -l name $argv[1]
3	3	---------> set -l body $argv[2..-1]
4	4	---------> abbr -a -g $name $body
1	10	--------> __git.create_abbr grst       git restore --staged
2	2	---------> set -l name $argv[1]
3	3	---------> set -l body $argv[2..-1]
4	4	---------> abbr -a -g $name $body
3	11	--------> __git.create_abbr grup       git remote update
2	2	---------> set -l name $argv[1]
3	3	---------> set -l body $argv[2..-1]
3	3	---------> abbr -a -g $name $body
3	10	--------> __git.create_abbr grv        git remote -v
2	2	---------> set -l name $argv[1]
2	2	---------> set -l body $argv[2..-1]
3	3	---------> abbr -a -g $name $body
3	10	--------> __git.create_abbr gsh        git show
2	2	---------> set -l name $argv[1]
2	2	---------> set -l body $argv[2..-1]
3	3	---------> abbr -a -g $name $body
4	11	--------> __git.create_abbr gsd        git svn dcommit
2	2	---------> set -l name $argv[1]
2	2	---------> set -l body $argv[2..-1]
3	3	---------> abbr -a -g $name $body
4	11	--------> __git.create_abbr gsr        git svn rebase
2	2	---------> set -l name $argv[1]
2	2	---------> set -l body $argv[2..-1]
3	3	---------> abbr -a -g $name $body
6	13	--------> __git.create_abbr gsb        git status -sb
1	1	---------> set -l name $argv[1]
2	2	---------> set -l body $argv[2..-1]
4	4	---------> abbr -a -g $name $body
4	11	--------> __git.create_abbr gss        git status -s
2	2	---------> set -l name $argv[1]
2	2	---------> set -l body $argv[2..-1]
3	3	---------> abbr -a -g $name $body
3	11	--------> __git.create_abbr gst        git status
2	2	---------> set -l name $argv[1]
2	2	---------> set -l body $argv[2..-1]
4	4	---------> abbr -a -g $name $body
2	10	--------> __git.create_abbr gsta       git stash
2	2	---------> set -l name $argv[1]
3	3	---------> set -l body $argv[2..-1]
3	3	---------> abbr -a -g $name $body
2	10	--------> __git.create_abbr gstd       git stash drop
2	2	---------> set -l name $argv[1]
3	3	---------> set -l body $argv[2..-1]
3	3	---------> abbr -a -g $name $body
2	10	--------> __git.create_abbr gstl       git stash list
2	2	---------> set -l name $argv[1]
3	3	---------> set -l body $argv[2..-1]
3	3	---------> abbr -a -g $name $body
3	10	--------> __git.create_abbr gstp       git stash pop
2	2	---------> set -l name $argv[1]
2	2	---------> set -l body $argv[2..-1]
3	3	---------> abbr -a -g $name $body
3	12	--------> __git.create_abbr gsts       git stash show --text
2	2	---------> set -l name $argv[1]
3	3	---------> set -l body $argv[2..-1]
4	4	---------> abbr -a -g $name $body
3	11	--------> __git.create_abbr gsu        git submodule update
2	2	---------> set -l name $argv[1]
2	2	---------> set -l body $argv[2..-1]
4	4	---------> abbr -a -g $name $body
5	12	--------> __git.create_abbr gsur       git submodule update --recursive
1	1	---------> set -l name $argv[1]
2	2	---------> set -l body $argv[2..-1]
4	4	---------> abbr -a -g $name $body
3	12	--------> __git.create_abbr gsuri      git submodule update --recursive --init
2	2	---------> set -l name $argv[1]
3	3	---------> set -l body $argv[2..-1]
4	4	---------> abbr -a -g $name $body
4	11	--------> __git.create_abbr gts        git tag -s
2	2	---------> set -l name $argv[1]
2	2	---------> set -l body $argv[2..-1]
3	3	---------> abbr -a -g $name $body
2144	2153	--------> __git.create_abbr gtv        git tag | sort -V
3	3	---------> set -l name $argv[1]
2	2	---------> set -l body $argv[2..-1]
4	4	---------> abbr -a -g $name $body
6	15	--------> __git.create_abbr gsw        git switch
3	3	---------> set -l name $argv[1]
3	3	---------> set -l body $argv[2..-1]
3	3	---------> abbr -a -g $name $body
4	10	--------> __git.create_abbr gswc       git switch --create
2	2	---------> set -l name $argv[1]
2	2	---------> set -l body $argv[2..-1]
2	2	---------> abbr -a -g $name $body
3	9	--------> __git.create_abbr gunignore  git update-index --no-assume-unchanged
2	2	---------> set -l name $argv[1]
2	2	---------> set -l body $argv[2..-1]
2	2	---------> abbr -a -g $name $body
3	9	--------> __git.create_abbr gup        git pull --rebase
1	1	---------> set -l name $argv[1]
2	2	---------> set -l body $argv[2..-1]
3	3	---------> abbr -a -g $name $body
4	9	--------> __git.create_abbr gupv       git pull --rebase -v
1	1	---------> set -l name $argv[1]
2	2	---------> set -l body $argv[2..-1]
2	2	---------> abbr -a -g $name $body
2	9	--------> __git.create_abbr gupa       git pull --rebase --autostash
2	2	---------> set -l name $argv[1]
2	2	---------> set -l body $argv[2..-1]
3	3	---------> abbr -a -g $name $body
4	12	--------> __git.create_abbr gupav      git pull --rebase --autostash -v
1	1	---------> set -l name $argv[1]
3	3	---------> set -l body $argv[2..-1]
4	4	---------> abbr -a -g $name $body
5	11	--------> __git.create_abbr gwch       git whatchanged -p --abbrev-commit --pretty=medium
1	1	---------> set -l name $argv[1]
2	2	---------> set -l body $argv[2..-1]
3	3	---------> abbr -a -g $name $body
4	8	--------> __git.create_abbr gco        git checkout
1	1	---------> set -l name $argv[1]
1	1	---------> set -l body $argv[2..-1]
2	2	---------> abbr -a -g $name $body
2	8	--------> __git.create_abbr gcb        git checkout -b
2	2	---------> set -l name $argv[1]
2	2	---------> set -l body $argv[2..-1]
2	2	---------> abbr -a -g $name $body
4	8	--------> __git.create_abbr gcod       git checkout develop
1	1	---------> set -l name $argv[1]
1	1	---------> set -l body $argv[2..-1]
2	2	---------> abbr -a -g $name $body
3	9	--------> __git.create_abbr gcom       git checkout \(__git.default_branch\)
2	2	---------> set -l name $argv[1]
2	2	---------> set -l body $argv[2..-1]
2	2	---------> abbr -a -g $name $body
4	8	--------> __git.create_abbr gfb        git flow bugfix
1	1	---------> set -l name $argv[1]
1	1	---------> set -l body $argv[2..-1]
2	2	---------> abbr -a -g $name $body
3	8	--------> __git.create_abbr gff        git flow feature
1	1	---------> set -l name $argv[1]
1	1	---------> set -l body $argv[2..-1]
3	3	---------> abbr -a -g $name $body
4	8	--------> __git.create_abbr gfr        git flow release
1	1	---------> set -l name $argv[1]
1	1	---------> set -l body $argv[2..-1]
2	2	---------> abbr -a -g $name $body
3	8	--------> __git.create_abbr gfh        git flow hotfix
2	2	---------> set -l name $argv[1]
1	1	---------> set -l body $argv[2..-1]
2	2	---------> abbr -a -g $name $body
3	8	--------> __git.create_abbr gfs        git flow support
2	2	---------> set -l name $argv[1]
1	1	---------> set -l body $argv[2..-1]
2	2	---------> abbr -a -g $name $body
2	9	--------> __git.create_abbr gfbs       git flow bugfix start
2	2	---------> set -l name $argv[1]
2	2	---------> set -l body $argv[2..-1]
3	3	---------> abbr -a -g $name $body
2	8	--------> __git.create_abbr gffs       git flow feature start
2	2	---------> set -l name $argv[1]
2	2	---------> set -l body $argv[2..-1]
2	2	---------> abbr -a -g $name $body
4	8	--------> __git.create_abbr gfrs       git flow release start
1	1	---------> set -l name $argv[1]
1	1	---------> set -l body $argv[2..-1]
2	2	---------> abbr -a -g $name $body
2	8	--------> __git.create_abbr gfhs       git flow hotfix start
2	2	---------> set -l name $argv[1]
2	2	---------> set -l body $argv[2..-1]
2	2	---------> abbr -a -g $name $body
2	8	--------> __git.create_abbr gfss       git flow support start
1	1	---------> set -l name $argv[1]
2	2	---------> set -l body $argv[2..-1]
3	3	---------> abbr -a -g $name $body
3	8	--------> __git.create_abbr gfbt       git flow bugfix track
2	2	---------> set -l name $argv[1]
1	1	---------> set -l body $argv[2..-1]
2	2	---------> abbr -a -g $name $body
3	8	--------> __git.create_abbr gfft       git flow feature track
1	1	---------> set -l name $argv[1]
2	2	---------> set -l body $argv[2..-1]
2	2	---------> abbr -a -g $name $body
2	7	--------> __git.create_abbr gfrt       git flow release track
1	1	---------> set -l name $argv[1]
1	1	---------> set -l body $argv[2..-1]
3	3	---------> abbr -a -g $name $body
4	8	--------> __git.create_abbr gfht       git flow hotfix track
1	1	---------> set -l name $argv[1]
1	1	---------> set -l body $argv[2..-1]
2	2	---------> abbr -a -g $name $body
2	8	--------> __git.create_abbr gfst       git flow support track
2	2	---------> set -l name $argv[1]
2	2	---------> set -l body $argv[2..-1]
2	2	---------> abbr -a -g $name $body
3	8	--------> __git.create_abbr gfp        git flow publish
1	1	---------> set -l name $argv[1]
2	2	---------> set -l body $argv[2..-1]
2	2	---------> abbr -a -g $name $body
3	8	--------> __git.create_abbr gwt        git worktree
1	1	---------> set -l name $argv[1]
2	2	---------> set -l body $argv[2..-1]
2	2	---------> abbr -a -g $name $body
4	8	--------> __git.create_abbr gwta       git worktree add
1	1	---------> set -l name $argv[1]
1	1	---------> set -l body $argv[2..-1]
2	2	---------> abbr -a -g $name $body
2	8	--------> __git.create_abbr gwtls      git worktree list
2	2	---------> set -l name $argv[1]
2	2	---------> set -l body $argv[2..-1]
2	2	---------> abbr -a -g $name $body
3	8	--------> __git.create_abbr gwtlo      git worktree lock
2	2	---------> set -l name $argv[1]
1	1	---------> set -l body $argv[2..-1]
2	2	---------> abbr -a -g $name $body
2	8	--------> __git.create_abbr gwtmv      git worktree move
2	2	---------> set -l name $argv[1]
2	2	---------> set -l body $argv[2..-1]
2	2	---------> abbr -a -g $name $body
2	8	--------> __git.create_abbr gwtpr      git worktree prune
2	2	---------> set -l name $argv[1]
2	2	---------> set -l body $argv[2..-1]
2	2	---------> abbr -a -g $name $body
3	8	--------> __git.create_abbr gwtrm      git worktree remove
1	1	---------> set -l name $argv[1]
2	2	---------> set -l body $argv[2..-1]
2	2	---------> abbr -a -g $name $body
3	8	--------> __git.create_abbr gwtulo     git worktree unlock
1	1	---------> set -l name $argv[1]
2	2	---------> set -l body $argv[2..-1]
2	2	---------> abbr -a -g $name $body
3	12	--------> __git.create_abbr gmr        git push origin \(__git.current_branch\) --set-upstream -o merge_request.create
2	2	---------> set -l name $argv[1]
3	3	---------> set -l body $argv[2..-1]
4	4	---------> abbr -a -g $name $body
4	14	--------> __git.create_abbr gmwps      git push origin \(__git.current_branch\) --set-upstream -o merge_request.create -o merge_request.merge_when_pipeline_succeeds
2	2	---------> set -l name $argv[1]
4	4	---------> set -l body $argv[2..-1]
4	4	---------> abbr -a -g $name $body
20	20	--------> functions -e __git.create_abbr
3	3	------> emit init_$package $path
2	2	------> set -g omf_init_path $omf_init_path $path
1	1	------> emit perf:timer:finish $init
1	1	------> emit perf:timer:start $init
2	2	------> set -l IFS '/'
20	20	------> echo $init | read -la components
17	23	------> set path (printf '/%s' $components[1..-2])
6	6	-------> printf '/%s' $components[1..-2]
2	2	------> contains $path $omf_init_path
2	2	------> set package $components[-2]
4	12	------> if not set -q ignore_bundle...
1	1	-------> not set -q ignore_bundle
2	2	-------> set bundle $path/bundle
1	1	-------> set dependencies
0	4	-------> if test -f $bundle...
4	4	--------> test -f $bundle
303	1017	------> source $init $path
3	3	-------> set -g OMF_MISSING_ARG   1
2	2	-------> set -g OMF_UNKNOWN_OPT   2
2	2	-------> set -g OMF_INVALID_ARG   3
1	1	-------> set -g OMF_UNKNOWN_ERR   4
0	0	-------> function omf::em...
0	0	-------> function omf::dim...
1	1	-------> function omf::err...
0	0	-------> function omf::under...
0	0	-------> function omf::off...
21	705	-------> autoload $path/functions/{compat,core,index,packages,themes,bundle,util,repo,cli,search}
232	234	--------> source /Users/hugo/.local/share/omf/lib/autoload.fish
1	1	---------> function autoload...
0	0	---------> function __autoload_insert...
1	1	---------> function __autoload_erase...
7	450	--------> switch "$argv[1]"...
17	41	---------> test (count $argv) -ge 1
24	24	----------> count $argv
10	402	---------> __autoload_insert $argv
1	1	----------> set -l function_path
1	1	----------> set -l complete_path
46	372	----------> for path in $argv...
4	4	-----------> not test -d "$path"
1	1	-----------> set -l IFS '/'
12	12	-----------> echo $path | read -la components
4	14	-----------> if test "x$components[-1]" = xcompletions...
2	2	------------> test "x$components[-1]" = xcompletions
6	6	------------> contains -- $path $fish_function_path
2	2	------------> set function_path $function_path $path
3	3	-----------> not test -d "$path"
1	1	-----------> set -l IFS '/'
11	11	-----------> echo $path | read -la components
3	12	-----------> if test "x$components[-1]" = xcompletions...
2	2	------------> test "x$components[-1]" = xcompletions
5	5	------------> contains -- $path $fish_function_path
2	2	------------> set function_path $function_path $path
4	4	-----------> not test -d "$path"
2	2	-----------> set -l IFS '/'
13	13	-----------> echo $path | read -la components
2	12	-----------> if test "x$components[-1]" = xcompletions...
2	2	------------> test "x$components[-1]" = xcompletions
5	5	------------> contains -- $path $fish_function_path
3	3	------------> set function_path $function_path $path
4	4	-----------> not test -d "$path"
2	2	-----------> set -l IFS '/'
18	18	-----------> echo $path | read -la components
2	17	-----------> if test "x$components[-1]" = xcompletions...
3	3	------------> test "x$components[-1]" = xcompletions
8	8	------------> contains -- $path $fish_function_path
4	4	------------> set function_path $function_path $path
6	6	-----------> not test -d "$path"
2	2	-----------> set -l IFS '/'
22	22	-----------> echo $path | read -la components
4	24	-----------> if test "x$components[-1]" = xcompletions...
6	6	------------> test "x$components[-1]" = xcompletions
9	9	------------> contains -- $path $fish_function_path
5	5	------------> set function_path $function_path $path
6	6	-----------> not test -d "$path"
2	2	-----------> set -l IFS '/'
16	16	-----------> echo $path | read -la components
2	15	-----------> if test "x$components[-1]" = xcompletions...
2	2	------------> test "x$components[-1]" = xcompletions
6	6	------------> contains -- $path $fish_function_path
5	5	------------> set function_path $function_path $path
4	4	-----------> not test -d "$path"
2	2	-----------> set -l IFS '/'
13	13	-----------> echo $path | read -la components
4	15	-----------> if test "x$components[-1]" = xcompletions...
2	2	------------> test "x$components[-1]" = xcompletions
5	5	------------> contains -- $path $fish_function_path
4	4	------------> set function_path $function_path $path
4	4	-----------> not test -d "$path"
2	2	-----------> set -l IFS '/'
14	14	-----------> echo $path | read -la components
3	14	-----------> if test "x$components[-1]" = xcompletions...
2	2	------------> test "x$components[-1]" = xcompletions
5	5	------------> contains -- $path $fish_function_path
4	4	------------> set function_path $function_path $path
4	4	-----------> not test -d "$path"
2	2	-----------> set -l IFS '/'
12	12	-----------> echo $path | read -la components
1	13	-----------> if test "x$components[-1]" = xcompletions...
2	2	------------> test "x$components[-1]" = xcompletions
5	5	------------> contains -- $path $fish_function_path
5	5	------------> set function_path $function_path $path
3	3	-----------> not test -d "$path"
1	1	-----------> continue
4	4	----------> test -n "$function_path"
11	11	----------> set fish_function_path $fish_function_path[1] $function_path $fish_function_path[2..-1]
2	2	----------> test -n "$complete_path"
1	1	----------> return 0
29	29	------> emit init_$package $path
3	3	------> set -g omf_init_path $omf_init_path $path
2	2	------> emit perf:timer:finish $init
3	259	-----> for conf in $conf_path...
222	256	------> source $conf
26	26	-------> functions -e _git_install _git_update _git_uninstall
1	1	-------> set -q fisher_path
4	4	-------> set -l fisher_path $__fish_config_dir
0	3	-------> if test -f $fisher_path/functions/__git.init.fish...
3	3	--------> test -f $fisher_path/functions/__git.init.fish
1	1	-----> return 0
3	3	----> emit perf:timer:finish "Oh My Fish init installed packages"
28	28	----> functions -q fish_user_key_bindings
0	0	----> function fish_user_key_bindings...
2	2	----> emit perf:timer:start "Oh My Fish init user config path"
30	247	----> require --no-bundle --path $OMF_CONFIG
90	91	-----> source /Users/hugo/.local/share/omf/lib/require.fish
1	1	------> function require...
3	3	-----> set packages $argv
1	3	-----> if test -z "$packages"...
2	2	------> test -z "$packages"
2	51	-----> if set index (contains -i -- --no-bundle $packages)...
17	45	------> set index (contains -i -- --no-bundle $packages)
28	28	-------> contains -i -- --no-bundle $packages
2	2	------> set -e packages[$index]
2	2	------> set ignore_bundle
2	22	-----> if set index (contains -i -- --path $packages)...
14	16	------> set index (contains -i -- --path $packages)
2	2	-------> contains -i -- --path $packages
2	2	------> set -e packages[$index]
2	2	------> set package_path $packages
16	16	-----> set function_path $package_path/functions*
11	11	-----> set complete_path $package_path/completions*
11	11	-----> set init_path $package_path/init.fish*
4	4	-----> set conf_path $package_path/conf.d/*.fish
2	2	-----> test -n "$function_path"
1	1	-----> test -n "$complete_path"
1	1	-----> for init in $init_path...
1	1	-----> for conf in $conf_path...
0	0	-----> return 0
2	2	----> emit perf:timer:finish "Oh My Fish init user config path"
42	42	----> set -l theme_conf_path {$OMF_CONFIG,$OMF_PATH}/themes*/$theme/conf.d
1	1	----> for conf in $theme_conf_path/*.fish...
1	1	----> emit perf:timer:finish "Oh My Fish initialisation"
14	20	--> set -l basename (string replace -r '^.*/' '' -- $file)
6	6	---> string replace -r '^.*/' '' -- $file
7	7	--> contains -- $basename $sourcelist
7	7	--> set sourcelist $sourcelist $basename
17	17	--> test -f $file -a -r $file
83	84	--> source $file
1	1	---> function fil...
0	0	---> function fild...
15	20	--> set -l basename (string replace -r '^.*/' '' -- $file)
5	5	---> string replace -r '^.*/' '' -- $file
7	7	--> contains -- $basename $sourcelist
7	7	--> set sourcelist $sourcelist $basename
17	17	--> test -f $file -a -r $file
62	66	--> source $file
4	4	---> function _pnpm-shell-completion_install --on-event pnpm-shell-completion_install...
14	19	--> set -l basename (string replace -r '^.*/' '' -- $file)
5	5	---> string replace -r '^.*/' '' -- $file
8	8	--> contains -- $basename $sourcelist
6	6	--> set sourcelist $sourcelist $basename
16	16	--> test -f $file -a -r $file
35	46	--> source $file
1	11	---> if test -f "$HOME/.cargo/env.fish"...
10	10	----> test -f "$HOME/.cargo/env.fish"
16	20	--> set -l basename (string replace -r '^.*/' '' -- $file)
4	4	---> string replace -r '^.*/' '' -- $file
7	7	--> contains -- $basename $sourcelist
7	7	--> set sourcelist $sourcelist $basename
15	15	--> test -f $file -a -r $file
45	46	--> source $file
1	1	---> function spf...
14	19	--> set -l basename (string replace -r '^.*/' '' -- $file)
5	5	---> string replace -r '^.*/' '' -- $file
7	7	--> contains -- $basename $sourcelist
6	6	--> set sourcelist $sourcelist $basename
16	16	--> test -f $file -a -r $file
35	36	--> source $file
1	1	---> function ssh_auth_session...
15	21	--> set -l basename (string replace -r '^.*/' '' -- $file)
6	6	---> string replace -r '^.*/' '' -- $file
7	7	--> contains -- $basename $sourcelist
7	7	--> set sourcelist $sourcelist $basename
16	16	--> test -f $file -a -r $file
46	46	--> source $file
0	0	---> function yy...
14	18	--> set -l basename (string replace -r '^.*/' '' -- $file)
4	4	---> string replace -r '^.*/' '' -- $file
6	6	--> contains -- $basename $sourcelist
7	7	--> set sourcelist $sourcelist $basename
16	16	--> test -f $file -a -r $file
30	30	--> source $file
13	20	--> set -l basename (string replace -r '^.*/' '' -- $file)
7	7	---> string replace -r '^.*/' '' -- $file
7	7	--> contains -- $basename $sourcelist
1	1	--> continue
145	145	> builtin source /opt/homebrew/etc/fish/config.fish
45	948	> builtin source /Users/hugo/.config/fish/config.fish
0	2	-> if status is-interactive...
2	2	--> status is-interactive
39	345	-> export PATH="$PATH:$HOME/.local/bin"
55	56	--> source /opt/homebrew/Cellar/fish/4.0.2/share/fish/functions/export.fish
1	1	---> function export --description 'Set env variable. Alias for `set -gx` for bash compatibility.'...
0	2	--> if not set -q argv[1]...
2	2	---> not set -q argv[1]
8	248	--> for arg in $argv...
27	40	---> set -l v (string split -m 1 "=" -- $arg)
13	13	----> string split -m 1 "=" -- $arg
15	200	---> switch (count $v)...
28	28	----> count $v
4	157	----> if contains -- $v[1] PATH CDPATH MANPATH...
3	3	-----> contains -- $v[1] PATH CDPATH MANPATH
25	90	-----> set -l colonized_path (string replace -- "$$v[1]" (string join ":" -- $$v[1]) $v[2])
45	65	------> string replace -- "$$v[1]" (string join ":" -- $$v[1]) $v[2]
20	20	-------> string join ":" -- $$v[1]
45	60	-----> set -gx $v[1] (string split ":" -- $colonized_path)
15	15	------> string split ":" -- $colonized_path
3	3	-> set --export BUN_INSTALL "$HOME/.bun"
17	17	-> set --export PATH $BUN_INSTALL/bin $PATH
184	509	-> source ~/.orbstack/shell/init2.fish 2>/dev/null
48	325	--> fish_add_path -aP /Users/hugo/.orbstack/bin
128	129	---> source /opt/homebrew/Cellar/fish/4.0.2/share/fish/functions/fish_add_path.fish
1	1	----> function fish_add_path --description "Add paths to the PATH"...
10	10	---> argparse -x g,U -x P,U -x a,p g/global U/universal P/path p/prepend a/append h/help m/move v/verbose n/dry-run -- $argv
0	1	---> if set -q _flag_help...
1	1	----> set -q _flag_help
2	2	---> set -l scope $_flag_global $_flag_universal
0	3	---> if not set -q scope[1]...
1	1	----> not set -q scope[1]
2	2	----> not set -q fish_user_paths
2	2	---> set -l var fish_user_paths
1	1	---> set -q _flag_path
1	1	---> set var PATH
1	1	---> set scope -g
3	3	---> set -l mode $_flag_prepend $_flag_append
1	1	---> set -q mode[1]
19	19	---> status current-command | string match -rq '^fish_add_path$'
2	2	---> set -l newpaths
1	1	---> set -l indexes
6	81	---> for path in $argv...
15	38	----> set -l p (builtin realpath -s -- $path 2>/dev/null)
23	23	-----> builtin realpath -s -- $path 2>/dev/null
2	5	----> if not test -d "$p"...
3	3	-----> not test -d "$p"
2	32	----> if set -l ind (contains -i -- $p $$var)...
15	27	-----> set -l ind (contains -i -- $p $$var)
12	12	------> contains -i -- $p $$var
1	3	-----> if set -q _flag_move...
1	1	------> set -q _flag_move
1	1	------> set -q _flag_verbose
10	10	---> set -l newvar $$var
0	1	---> if set -q _flag_move...
1	1	----> set -q _flag_move
3	3	---> set $mode newvar $newpaths
1	6	---> if set -q newpaths[1]...
1	1	----> set -q newpaths[1]
1	1	----> set -q indexes[1]
1	2	----> if set -q _flag_verbose...
1	1	-----> set -q _flag_verbose
1	1	----> return 1
27	27	-> :
