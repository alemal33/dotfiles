set -g fish_greeting

if test -e ~/.bash_aliases
	source ~/.bash_aliases
end

function fish_prompt -d 'Write out the prompt'
		echo (set_color green --bold)'$ ' 
end

function fish_right_prompt -d "Write out the right prompt"
    set -l last_pipestatus $pipestatus
    set -lx __fish_last_status $status # Export for __fish_print_pipestatus.
    set -l normal (set_color normal)
    set -q fish_color_status
    or set -g fish_color_status --background=red white

    # Write pipestatus
    # If the status was carried over (e.g. after `set`), don't bold it.
    set -l bold_flag --bold
    set -q __fish_prompt_status_generation; or set -g __fish_prompt_status_generation $status_generation
    if test $__fish_prompt_status_generation = $status_generation
        set bold_flag
    end
    set __fish_prompt_status_generation $status_generation
    set -l status_color (set_color $fish_color_status)
    set -l statusb_color (set_color $bold_flag $fish_color_status)
    set -l prompt_status (__fish_print_pipestatus "[" "]" "|" "$status_color" "$statusb_color" $last_pipestatus)

    set -l color_cwd (set_color $fish_color_cwd)
		set -g fish_prompt_pwd_dir_length 0

    echo -s $prompt_status ' ' $color_cwd (prompt_pwd) $normal (fish_vcs_prompt) ' '
end
