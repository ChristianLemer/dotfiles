function mytmate
    set mytmatesocket (date +'/tmp/tmate-1000/%Y%m%d-%H%M%S-%N.sock')
	tmate -S $mytmatesocket new-session \; \
		send-keys 'q' \; \
		rename-window -t 0 'status' \; \
		send-keys -t 'status' 'btm' C-m \; \
		split-window -v \; \
		send-keys -t 'status' 'htop' C-m \; \
		new-window -n 'hermes' \; \
		send-keys -t 'hermes' 'cd ~/git/lemerco/hermes;hx .' C-m \; \
		split-window -h \; \
		send-keys -t 'hermes' 'cd ~/git/lemerco/hermes;cwn' C-m \; \
		resize-pane -t 1 -x 100 \; \
		new-window -n 'hermes-git' \; \
		send-keys -t 'hermes-git' 'cd ~/git/lemerco/hermes;lazygit' C-m \; \
		new-window -n 'obsidian' \; \
		send-keys -t 'obsidian' 'cd ~/.obsidian; hx .' C-m \; \
		new-window -n 'config' \; \
		send-keys -t 'config' 'cd ~/.config;hx .' C-m \; \
		split-window -h \; \
		send-keys -t 'config' 'cd ~/.config' C-m \; \
		select-pane -t 0 \; \
		new-window -n 'chezmoi' \; \
		send-keys -t 'chezmoi' 'clear;chezmoi cd' C-m \; \
		select-window -t "hermes" \; \
		select-pane -t 0 \; \

	tmate -S $mytmatesocket display -p '#{tmate_ssh}' | xclip -selection clipboard

end
