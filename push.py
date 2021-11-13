#!/usr/bin/python3
import os, sys
os.system("git add -A")
os.system(f"git commit -m \"{sys.argv[1]}\"")
os.system("git push https://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@github.com/nlsg/nvim")

