from ranger.api.commands import Command

# class setwall(Command):
    # def execute(self):
        # import subprocess
        # import os

        # selected = str(self.fm.thistab.get_selection()[0])
        # split = selected.split("/")
        # split.pop(0)

        # if ("Pictures" not in split) or ("Wallpapers" not in split):
            # self.fm.notify("Please run this in the wallpapers directory.")
        # elif ("." not in split[len(split) - 1]):
            # self.fm.notify("Please run this on a file.")
        # else:
            # home = os.path.expanduser("~")
            # subprocess.call(["wal", "-i", selected])
            # return
