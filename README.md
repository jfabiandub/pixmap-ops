# pixmap-ops

Image manipulation demos based on the PPM image format.

TODO: Add a representative image for your project here

## How to build

*Windows*

Open git bash to the directory containing this repository.

```
pixmap-ops $ mkdir build
pixmap-ops $ cd build
pixmap-ops/build $ cmake -G "Visual Studio 17 2022" ..
pixmap-ops/build $ start pixmap-ops.sln
```

Your solution file should contain two projects: `pixmap_art` and `pixmap_test`.
To run from the git bash command shell, 

```
pixmap-ops/build $ ../bin/Debug/pixmap_test
pixmap-ops/build $ ../bin/Debug/pixmap_art
```

*macOS*

Open terminal to the directory containing this repository.

```
pixmap-ops $ mkdir build
pixmap-ops $ cd build
pixmap-ops/build $ cmake ..
pixmap-ops/build $ make
```

To run each program from build, you would type

```
pixmap-ops/build $ ../bin/pixmap_test
pixmap-ops/build $ ../bin/pixmap_art
```

## Image operators

TODO: Document the features of your PPM image class here. Include example images.

1.Resize 
<img width="229" alt="Screenshot 2023-02-03 at 8 34 53 PM" src="https://user-images.githubusercontent.com/102636198/216749124-c531356d-868e-4f30-bc3b-405abb20e860.png">

2.Flip Horizontally
<img width="423" alt="Screenshot 2023-02-03 at 8 35 17 PM" src="https://user-images.githubusercontent.com/102636198/216749160-d9b1627e-fdd4-43e4-a2f1-c92b4c03beee.png">

3. Gamma Correction

Gamma = 0.6
<img width="441" alt="Screenshot 2023-02-03 at 8 36 10 PM" src="https://user-images.githubusercontent.com/102636198/216749179-3f6c13e9-3524-4307-915b-5540195aedd6.png">


Gamma = 2.2
<img width="420" alt="Screenshot 2023-02-03 at 8 36 37 PM" src="https://user-images.githubusercontent.com/102636198/216749193-feccd2a9-7946-4615-b5cf-763e33a7b652.png">

4. Grayscale
<img width="415" alt="Screenshot 2023-02-03 at 8 36 50 PM" src="https://user-images.githubusercontent.com/102636198/216749231-4ab86eb0-d7f2-4707-b9f3-0f6dc0027a2c.png">

5. Subimage
<img width="134" alt="Screenshot 2023-02-03 at 8 37 02 PM" src="https://user-images.githubusercontent.com/102636198/216749245-00c64851-3875-41aa-beb7-b248eb18bba0.png">



6. Blend and Replace
<img width="421" alt="Screenshot 2023-02-03 at 8 37 44 PM" src="https://user-images.githubusercontent.com/102636198/216749255-2a90b16e-19a6-4cd1-9fae-611e6c0a7f75.png">



## Results

TODO: Show artworks using your class

* flip Vertical
![earth-vert-flip](https://user-images.githubusercontent.com/102636198/218182727-3aebd4be-1879-4112-bd23-17dcdef6baef.png)

