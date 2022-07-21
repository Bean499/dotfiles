#!/usr/bin/python3

def main():
    home = "/home/bean"
    gtk_files = [
                f"{home}/.gtkrc-2.0",
                f"{home}/.config/gtk-3.0/settings.ini"
            ]

    with open(f"{home}/.cache/wal/wal", "r") as file:
        wall = file.readline()
    wall = wall.split("/")
    last_index = len(wall) - 1
    theme = wall[last_index]
    theme = theme.split(".")[0]

    print(theme)

    print("GTKRC updated in the following files:")
    for item in gtk_files:
        with open(item, "r") as file:
            gtkrc = file.readlines()
        for line in range(0, len(gtkrc)):
            if "gtk-theme-name" in gtkrc[line]:
                if "2.0" in item:
                    gtkrc[line] = f'gtk-theme-name="{theme}"\n'
                else:
                    gtkrc[line] = f'gtk-theme-name={theme}\n'
        with open(item, "w") as file:
            file.writelines(gtkrc)
        print(item)

if __name__ == "__main__":
    main()
