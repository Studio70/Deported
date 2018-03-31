# Deported

Due to a recent change that requires ```render.Capture(Pixels)``` to be
within a render hook when called would cause legit players to return a
black screen which is intended, however users utilizing Citzen Hack would
return a clean screenshot still.  

This small script calls ```render.CapturePixels``` outside of a render hook
so that legit players will return a black pixel reading and Citizen Hack
users should return anything other than true black (#000000) which will lead
to their Steam64ID being logged.

## Installation

1. Navigate to your ```GarrysMod/garrysmod``` directory.
2. Clone this repository or extract the latest version to the ```addons/```
folder.

## Detection logs

You can find a list of detected players in ```data/citizenhack.txt```.

Additionally, if you use [bLogs](https://www.gmodstore.com/scripts/view/1599/) or [Responsive Reports & Logs](https://www.gmodstore.com/scripts/view/4093/responsive-reports-logs), you should
see a list of detected players in "CitizenHack - Screencap Failure".

## Developer notes

If you'd like to write a custom action for detected players, we fire a hook
called ```illegalAlien``` that simply passes the player object. Feel free
to hook it and write your own logs or ban module.

## License

*Deported* uses the AGPL 3.0. You can view a TL;DR version at [TLDRLegal](https://tldrlegal.com/license/gnu-affero-general-public-license-v3-(agpl-3.0)).
Essentially, what this means is that if you make changes, you need to
contribute them back.

Additionally, while not a hard requirement as part the license, it would be
really nice if you would consider sharing your detection list.

Feel free to email us at [citizenhack@blacktea.su](mailto:citizenhack@blacktea.su).
