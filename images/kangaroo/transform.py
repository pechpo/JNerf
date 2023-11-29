import os
from PIL import Image
import numpy as np

for src in os.listdir("."):
    #os.rename(src, src[5:])
    image = np.array(Image.open(src))
    print(src, image.shape)
