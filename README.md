# Melodic-Fingers

#### Project Melodic Fingers is the development of software that will use image processing to translate a user’s hand gestures into sounds. This will allow the user to play a melody using their hands without physically touching the device. The goal of this program is to allow users to play a simulated instrument through a camera. 

## How to use

1. Download the zip file or clone the repository.

2. Make sure you have the following tools installed in your MatLab before trying to run the program.
    - Computer Vision Toolbox
    - Image Processing Toolbox
    - MATLAB Support Package for USB Webcams
    
3. As for the hardware requirments:
    - Microsoft® LifeCam Cinema(TM)
    - Stand for Camera
    - monochrome background(white or off-white color) 

> Side Note: Make sure to have the camera positioned on a fixed distance (18-20) cm far from  facing a monochrome surface with a contrasting difference between the hand and surface color(white, off-white) in order to get accurate results.

4. Run the `HandGApp.mlapp` to execute the program.

## File descriptions:

When you open the `src` folder, you can find 4 main folders:

1. `countFing.m` which contains the script that will be processing the video frames and counting the fingers we show to the webcam in real-time and inside of it we call  `noteGen.m`  accordingly.

2.  `noteGen.m` A function that generates a note and takes an argument - that will be used when it will be called in the `countFing.m` - as the number of fingers. After that, it uses a basic if-else statement then calls another audio file with a specific note corresponding to the number of fingers.

3. `HandGApp.mlapp` is an app designer file that implements the main window of our application graphical interface. We run the `countFing.m`  in it by calling like this `run("countFing.m");` when the user presses on ___Camera on___.

4. `Instructions.mlapp` another app designer file that displays instructions on how to use the application, which will get displayed when the user presses the ___instructions___ button in the main window.

5. `.png` files are for the icons used in the instruction window.

6. `.ogg` files are used in the `noteGen.m`  function and each one of them resembles a different piano note.


