import os

for src in os.listdir("."):
    os.rename(src, src[5:])