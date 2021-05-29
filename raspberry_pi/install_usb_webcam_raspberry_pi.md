#How to install a USB webcam in Raspberry Pi


##Check if a USB Webcam is Compatible with Raspberry Pi

To check whether your USB web camera is detected on Raspberry Pi or not, plug it into the USB port of your Raspberry Pi, and type lsusb command in the terminal.

```console

pi@raspberrypi:~ $ lsusb
Bus 002 Device 001: ID 1d6b:0003 Linux Foundation 3.0 root hub
Bus 001 Device 004: ID 1903:8328
Bus 001 Device 002: ID 2109:3431 VIA Labs, Inc. Hub
Bus 001 Device 001: ID 1d6b:0002 Linux Foundation 2.0 root hub
pi@raspberrypi:~ $


```


In the above screenshot, the USB web camera is detected as 1903:8328, When we try it with Fedora 20 in a laptop, it is successfully detected as [pc-camera-controller-usb-2-0-interface-software](https://www.realtek.com/en/component/zoo/category/pc-camera-controller-usb-2-0-interface-software)


##Take a Picture with USB Webcam
After your USB webcam is successfully hooked up with Raspberry Pi, the next thing to do is to take some pictures to verify its functionality.

For this, you can install fswebcam, which is a small webcam application. You can install fswebcam directly from the Raspbian repository as follows.


```console


pi@raspberrypi:~ $sudo apt-get install fswebcam

pi@raspberrypi:~ $fswebcam --no-banner -r 640x480 image.jpg


```


Here is the result from the fswebcam command with 640x480 resolution.


![cam](/data/raspberry_pi/install_usb_webcam_raspberry_pi/cam.jpg)



source:[How to install a USB webcam in Raspberry Pi](https://www.xmodulo.com/install-usb-webcam-raspberry-pi.html)
