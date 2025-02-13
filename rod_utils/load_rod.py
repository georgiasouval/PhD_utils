import numpy as np
import os
import sys

BIT8 = 2**8
BIT16 = 2**16
BIT24 = 2**24

def read_raw_24b(file_path, img_shape=(1, 1, 1856, 2880), read_type=np.uint8):
    raw_data = np.fromfile(file_path, dtype=read_type)
    raw_data = raw_data.astype(np.float32)
    raw_data = raw_data[0::3] + raw_data[1::3] * BIT8 + raw_data[2::3] * BIT16
    raw_data = raw_data.reshape(img_shape).astype(np.float32).squeeze(0)
    return raw_data


if __name__ == '__main__':
    file_name = sys.argv[1]
    img_data = read_raw_24b(file_name) 
    print(img_data.shape)

