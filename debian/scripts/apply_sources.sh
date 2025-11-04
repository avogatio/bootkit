
# Applies sources from .bashrc.d
directory="${HOME}/.bashrc.d"
debug=true

# Optional: Enable dotglob to include hidden files
shopt -s dotglob

for file in "$directory"/*; do
    if [ -f "$file" ]; then
	    if [[ "$debug" == "true" ]]; then
            echo "Applying source: $file"
		fi
		source $file
    fi
done
