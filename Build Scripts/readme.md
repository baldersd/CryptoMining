# CryptoMining # Useful tools for Crypto Mining in Ubuntu
https://github.com/baldersd/CryptoMining

<h1>Description</h1>
<strong>Useful Build Scripts for NVIDIA rigs</strong>
<pre>
This assumes that you have already booted into Ubuntu MATE (vanilla).
This article is written against version ubuntu-mate-16.04.3-desktop-amd64.iso (1.60 GB (1,728,053,248 bytes)).
~If you need help burning the ISO to a USB/HDD try Rufus: https://rufus.akeo.ie/.~
</pre>

<h1>-BUILD STEPS-</h1>
<h2>Step 1. Install latest NVIDIA drivers</h2>
See <strong>installnvidia.sh</strong> but essentially as sudo just run:
<pre>
apt-get update
add-apt-repository -y "ppa:graphics-drivers/ppa"
</pre>
<p>
After running this (may need to reboot) you should see the latest driver is detected in the DRIVERS applet.
</p>
<p>Switch to this one and reboot again.</p>
