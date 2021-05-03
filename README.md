# HostsMod

## Description

In the Minecraft cheating community, it's not uncommon for clients or client cracks/leaks to be malware. The most famous example of this would be the Autumn client "crack", released by Kant. This application attempts to blacklist known hosts of Kant's malware, in order to prevent someone from accidentally getting themselves ratted.

Newb also decided to include common IP logger links.

I forked this with the intention of providing a script that will work on
 Linux and macOS. If you run Windows, go to the original repository at https://github.com/GardeningTool/HostsMod

 If you would like to update to the latest domains (which likely will be very rare), run the reversion script first, and then run the original HostsMod.sh script again. It's unlikely that you will have to download a new version of the script, as the current one will always pull domains off of github. 

One of the domains, "mvncentral.net" is disguised as Maven Central, which is not a malicious site, however "mvncentral.net" is.

Many of the domains may appear to be suspended. This is due to the fact that Kant, the purchaser of the domains and person who spread the malware this program attempts to block, purchased these domains fraudulently. Though they are suspended, I have decided to include them anyways.

## Usage

### Install

Simply run
```bash
curl -sfL https://raw.githubusercontent.com/HackingMC/HostsMod/main/HostsMod.sh | sudo bash
```

### Remove

Just run
```bash
curl -sfL https://raw.githubusercontent.com/HackingMC/HostsMod/main/Revert-HostsMod.sh | sudo bash
```

## To-Do
```Merge installation and reversion script, make CLI or GUI interface to control which one is used
Option to also add Ad-Blocking capabilities 
Check if backup file already exists, if so, installation will prompt the user if they are sure they want to continue'''

## Domains
```
mvncentral.net
vladvilcu2006.tech
verble.software (Main domain for his rat)
jonathanhardwick.me
etc.catering
tlrepo.cc (Another Kant URL used by the Tenacity crack)
batonrogue.tech
grabify.link
bmwforum.co
leancoding.co
spottyfly.com
stopify.co
yoütu.be
discörd.com
minecräft.com
freegiftcards.co
disçordapp.com
särahah.eu
särahah.pl
xda-developers.us
quickmessage.us
fortnight.space
fortnitechat.site
youshouldclick.us
joinmy.site
crabrave.pw
lovebird.guru
trulove.guru
dateing.club
otherhalf.life
shrekis.life
datasig.io
datauth.io
headshot.monster
gaming-at-my.best
progaming.monster
yourmy.monster
screenshare.host
imageshare.best
screenshot.best
gamingfun.me
catsnthing.com
mypic.icu
catsnthings.fun
curiouscat.club
gyazo.nl
gaymers.ax
ps3cfw.com
```

