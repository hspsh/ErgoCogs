# ErgoCogs - modular ErgoDox for lifelong tinkerers

The idea for this project was born, when a couple of us couldn't decide on which features should our upcoming ErgoDox fork have.

The (conflicting) ideas were:
* Basic teensy with mini-usb
* Anything USB-C based
* Battery - powered bluetooth keyboard

So why not have it all? The simplest solution is splitting the design into 2 parts. It has many advantages:

* The stupid matrix PCB is also the most expensive, as PCB manufacturers usually charge extra for anything larger than 10x10cm.
* If you get bored with with your basic bitch cherry mx matrix, why not swap it for them crunchy jade kalihs? Maybe just for a weekend? Or maybe sell your old matrix to a fellow hacker!
* The controller PCBs are small, and hence dirt cheap, and this is where most of customisation would take place. Take your time and experiment with wacky knobs and OLED displays until you get your perfect hackertyper experience.

It also has some disadvantages

* The goldpin connector might be not the most relaiable way to connect 2PCBs. We're yet to check if this concept actually works out. Worst case, both sides may be semi-permanently soldered together with longer pinheaders.

## MatrixCog

This PCB is as dumb as it gets - it's basically an switch matrix routed do the 2x5 + 2x3 goldpin side connectors. It also features some LEDs.

To save some time, I recommend ordering this one with silicon diodes pre-assembled (`.cpl` file is included)

![Matrix Cog Render](/IMGs/MxCogRender.jpg)

## BrainCogs

Here's when the fun begins. We provide 2 example hemispheres that feature some basic functionalities. You can fork the shit out of this repo and modify these for your own needs.
![Brain Cog right hemisphere render](/IMGs/BrainCogRightRender.jpg)
![Brain Cog left hemisphere render](/IMGs/BrainCogLeftRender.jpg)

## Some pictures

![Prototype ErgoCogs keyboard with switches from a tester](/IMGs/ErgoCogsRainbow.jpg)

More to come...
