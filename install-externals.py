#! python3
import os.path
from git import git

urls = ("https://gitlab.com/stackpointer/whatsapp-crypt12.git",
        "https://github.com/B16f00t/whapa.git")

os.chdir("externals")
for repo_url in urls:
    repo_name = os.path.splitext(os.path.basename(repo_url))[0]

    if not os.path.isdir(repo_name):
        git("clone", repo_url)
    else:
        os.chdir(repo_name)
        git("pull", "origin", "master")
        os.chdir("..")

