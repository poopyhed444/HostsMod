# HostsMod

## DISCLAIMER: 
The source is completely public, and both the "release" and version in the repository are exactly the same. There is no obfuscation or protection of any kind, and you are free to edit this code however you like. The command included in the instructions will download it from this repository. If you are not very intelligent and assume that I can do something malicious in 16 lines (including commented description), then you can download the "domains" file and manually add it to the end of the /etc/hosts file, using a text editor like vim or nano (with sudo permissions).  

## Description

In the Minecraft cheating community, it's not uncommon for clients or client cracks/leaks to be malware. The most famous example of this would be the Autumn client "crack", released by Kant. This application attempts to blacklist known hosts of Kant's malware, in order to prevent someone from accidentally getting themselves ratted.


Newb also decided to include common IP and token logger links.

I forked this with the intention of providing a script that will work on
 Linux and macOS. If you run Windows, go to the original repository at https://github.com/GardeningTool/HostsMod

 If you would like to update to the latest domains (which likely will be very rare), run the reversion script first, and then run the original HostsMod.sh script again. It's unlikely that you will have to download a new version of the script, as the current one will always pull domains off of github. 

One of the domains, "mvncentral.net" is disguised as Maven Central, which is not a malicious site, however "mvncentral.net" is.

Many of the domains may appear to be suspended. This is due to the fact that Kant, the purchaser of the domains and person who spread the malware this program attempts to block, purchased these domains fraudulently. Though they are suspended, I have decided to include them anyways.

## TO-DO
```Advertisement blocking support: Code is already almost completely ready, just stuck on bash printing out "line 33: syntax error near unexpected token `)'"```
## Usage

CURRENT VERSION: 3.0.0

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


## Domains
```
mvncentral.net (Domain used for java dropper dependency)
vladvilcu2006.tech
verble.software (Main domain for his rat)
jonathanhardwick.me
etc.catering (not known to be malicious, although is confirmed to be owned by kant)
tlrepo.cc (Another Kant URL used by the Tenacity crack)
batonrogue.tech
khonsarifamily.tech (Domain used in kant's java mapping. Known to be used on already ratted systems, may be used elsewhere)
verbleisover.party
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
iplogger.org
steancomunnity.ru
streamcommunnlty.ru
streancommunuty.ru
streamconmunitlu.me
xn--yutube-iqc.com
yȯutube.com
streamconmunitlu.me
stearncomminuty.ru
```
