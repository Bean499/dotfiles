#!/usr/bin/python3

# Dunst Gaps Updator Script
# When I change the size of gaps in my WM, the posititon of notifications is wrong
# This script updates it based on the current size of the gaps and bar

def main():
    # Variables for home directory, bar config file, and gaps config file
    home = "/home/bean"
    theme_file = None
    bar_file = None
    # Name of variable storing bar height
    barheightname = "barheight"
    # Name of variable storing gaps
    gapsname = "useless_gaps"

    # Variable for whether there is a gap above the bar
    panel = True

    # Default size of bar and gaps
    barheight = 18
    gaps = 25

    # Check lines of gaps file for gaps being set
    if theme_file != None:
        with open(f"{home}/{theme_file}", "r") as file:
            theme = file.readlines()
        for line in theme:
            if gapsname + " = " in line:
                gaps = line
        # Isolate number
        if not str(gaps).isdigit():
            gaps = gaps.split(" = ")
            gaps = int(gaps[1])

    # Check bar of gaps file for bar height being set
    if bar_file != None:
        with open(f"{home}/{bar_file}", "r") as file:
            bar = file.readlines()
        for line in bar:
            # print(line)
            if barheightname + " = " in line:
                barheight = line
        # Isolate number
        if not str(barheight).isdigit():
            barheight = barheight.split(" = ")
            barheight = int(barheight[1])


    # Variables for distance notification should be offset by
    vert = (2 * gaps + barheight) if not panel else (gaps + barheight)
    hor = gaps

    # List of files to update
    config_files = [
            # f"{home}/.scripts/theming/fonts/templates/dunstrc",
            f"{home}/.cache/wal/dunstrc",
            f"{home}/.config/wal/templates/dunstrc",
            f"{home}/.config/dunst/dunstrc",
        ]
    
    print("Dunst configuration updated in the following files:")
    # For each file
    for item in config_files:
        with open(item, "r") as file:
            config = file.readlines()
        for index in range(0, len(config)):
            # Check each line for offset being set and update
            if "offset = " in config[index]:
                config[index] = f"    offset = {hor}x{vert}\n"
        # Write changes
        with open(item, "w") as file:
            file.writelines(config)
        print(item)

if __name__ == "__main__":
	main()
