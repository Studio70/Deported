# Deported

A brain-dead simple Citizen Hack detection tool. Currently unpatched!

## How does it work?

After a recent Garry's Mod update, calling ```render.Capture(Pixels)```
outside of a render hook will result in a black screenshot for legitimate
players. However, users of Citizen Hack still return a proper, "clean"
screenshot.

Using this knowledge, we check for true black (```#000```) pixels. If
anything other than that is returned, we log them and fire a detection
hook.

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
