#! python3
import subprocess

def git(*args):
    args = list(args)
    args.insert(0, "git")

    with subprocess.Popen(args, stdout=subprocess.PIPE, universal_newlines=True) as proc:
        stdout, _stderr = proc.communicate()
        assert proc.returncode == 0
