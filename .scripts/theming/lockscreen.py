#!/usr/bin/python3
# My lock screen app (betterlockscreen) requires colours to
# have no hashtag in their color codes in the config files.
# This script removes them from the config file.
def main():
    home = "/home/bean"
    with open(f"{home}/.config/betterlockscreenrc", "r") as file:
        config = file.readlines()
    for line in range(0, len(config)):
        if "#" in config[line] and config[line][0] != "#":
        # Avoids removing hashtags in comments
            config[line] = config[line].replace("#", "")
    with open(f"{home}/.config/betterlockscreenrc", "w") as file:
        file.writelines(config)
if "__main__" in __name__:
    main()
