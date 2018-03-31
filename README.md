# Deported
Due to a recent change that requires render.Capture(Pixels) to be within a render hook when called would cause legit players to return a black screen which is intended, however users utlizing Citzen Hack would return a clean screenshot still.  
This small script calls render.CapturePixels outside of a render hook so that legit players will return a black pixel reading and Citizen Hack users should return anything other than true black (#000000) which will lead to their Steam64ID being logged.

## Installation
Clone into the addons folder  
Cheaters will be dumped into a file named citizens.txt within the data folder
