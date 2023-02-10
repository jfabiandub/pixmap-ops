# pixmap-ops

Image manipulation demos based on the PPM image format.


*Normal Image

![hands](https://user-images.githubusercontent.com/102636198/218189598-d1a44cdc-d27d-4a7f-aeab-4dcade69947c.png)

*Inverted Image

![hands-inver-flip](https://user-images.githubusercontent.com/102636198/218189645-f3a558b0-0d8b-44c8-aaab-547b82d9196a.png)



*Normal Image 

![images](https://user-images.githubusercontent.com/102636198/218190303-ef179c3f-6664-4fcb-a6be-f8a85d895451.png)

*Swirled Image

![colors-swirl-flip](https://user-images.githubusercontent.com/102636198/218190353-a79d8fee-68e4-4681-88c7-df63cfef3149.png)

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

* Flip Vertical

![earth-vert-flip](https://user-images.githubusercontent.com/102636198/218182727-3aebd4be-1879-4112-bd23-17dcdef6baef.png)


* Rotate

![earth-rotate](https://user-images.githubusercontent.com/102636198/218182948-dc16abe7-a9df-42e6-a12d-f105374efb13.png)


* Swirl

![earth-swirl](https://user-images.githubusercontent.com/102636198/218183014-e4748f01-83a2-434d-98f3-9524c8de42fd.png)


* Color Jitter 

![earth-jitter-flip](https://user-images.githubusercontent.com/102636198/218186002-d163a8e4-d8ab-4e7d-ad19-782c1b4e6136.png)



*Invert

![earth-inver-flip](https://user-images.githubusercontent.com/102636198/218185667-e20f92b0-6784-4551-ab72-96bec9efca2c.png)



*Lightest (function applied on a jitter image of the earth)

![earth-lighest](https://user-images.githubusercontent.com/102636198/218184189-b14a2393-86a0-419f-ae6d-1d2bc0906752.png)


*Darkest (function applied on a inverted image of the earth)

![earth-darkest](https://user-images.githubusercontent.com/102636198/218185516-49b37bb5-75e2-4e7b-8265-58f03455e4fe.png)


* Fill (the whole image of a single color)

![earth-fill](https://user-images.githubusercontent.com/102636198/218186174-f0d08e9e-8fd6-4400-bbcc-721f270cc757.png)


*Extract (extratct a single color )

![earth-extracted](https://user-images.githubusercontent.com/102636198/218186303-7de01a68-1ce9-4677-be58-61bb42467558.png)






