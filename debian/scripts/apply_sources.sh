
# Applies sources from .bashrc.d
directory=$(eval "~/.bashrc.d")

# Optional: Enable dotglob to include hidden files (files starting with a dot)
shopt -s dotglob

for file in "$directory"/*; do
    if [ -f "$file" ]; then
        echo "Applying source: $file"
	source $file
    fi
done

clear
