# Installed software:
 - Terminal: [Kitty](https://github.com/kovidgoyal/kitty)
 - Shell: [Zsh](https://www.zsh.org)
 - Shell Plugin Manager: [Oh My Zsh](https://ohmyz.sh)
 - Shell Theme: [Powerlevel10k](https://github.com/romkatv/powerlevel10k)
 - Font: [FiraCode](https://github.com/tonsky/FiraCode)

# Adding config files
1. Add a folder for the package in the root directory
2. Re-create the folder structure relative to the home directory inside this folder
3. Add the config files in their location
4. Delete the config files from their original location
5. Run `stow [package name]` to generate the symlinks (Note: this repo must be in your home directory and you must be in the root of the repo)
6. If the config file doesn't belong in your home folder (eg it's in `/etc/` somewhere), use `stow -t [target dir]` to specify where it should go (eg `stow -t /etc/`)

Eg: This home folder:
```
~/
 - .blah.conf
 - .config/
    - my_program/
       - config.json
```

Would turn into:

```
~/
 - dotfiles/                 # This repo
    - blah/                  # Can be anything, normally the name of the progam
    |  - .blah.conf          # The config file, where it would be if 'blah' was replaced with '~'
    - my_program/
       - .config/            # In '.config' in home, so in '.config' here
          - my_program/
             - config.json
```
