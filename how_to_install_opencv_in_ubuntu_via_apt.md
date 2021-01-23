Ubuntu 18.04: How to install OpenCV


https://www.pyimagesearch.com/2018/05/28/ubuntu-18-04-how-to-install-opencv/
https://www.pyimagesearch.com/2016/10/24/ubuntu-16-04-how-to-install-opencv/



and find the error

Unable to locate package libjasper-dev


so ....

install libjasper-dev


https://blog.csdn.net/qq_44830040/article/details/105961295

sudo add-apt-repository "deb http://security.ubuntu.com/ubuntu xenial-security main"


sudo apt update


sudo apt install libjasper1 libjasper-dev



ok and then 

install opencv via apt-get


https://linuxize.com/post/how-to-install-opencv-on-ubuntu-20-04/#:~:text=Installing%20OpenCV%20from%20the%20Ubuntu%20Repository%20%23.%20OpenCV,by%20importing%20the%20cv2%20module%20and%20printing%20

sudo apt update
sudo apt install libopencv-dev python3-opencv


history output

  219  sudo apt install libcv-dev libopencv-dev
  220  sudo apt-get install libcv-dev libopencv-dev
  221  apt update
  222  sudo apt update
  223  sudo apt upgrade
  224  sudo apt-get install libopencv-dev python-opencv
  225  sudo apt-get install libjpeg-dev libpng-dev libtiff-dev
  226  sudo add-apt-repository "deb http://security.ubuntu.com/ubuntu xenial-security main"
  227  apt-get install libjasper-dev
  228  sudo apt-get install libjasper-dev
  229  sudo apt install libjasper1 libjasper-dev
  230  sudo apt-get install libavcodec-dev libavformat-dev libswscale-dev libv4l-dev
  231  sudo apt-get install libgtk-3-dev
  232  sudo apt-get install libatlas-base-dev gfortran
  233  sudo apt install libopencv-dev python3-opencv
  234  python3 -c "import cv2; print(cv2.__version__)"
