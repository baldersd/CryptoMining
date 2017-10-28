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
<pre>
To install a specific version this should also work "sudo apt-get install nvidia-384" (untested)
</pre>
<h2>Step 2. Open NVIDIA-SETTIGS applet and review</h2>
<pre>
You want to make sure all your cards are detected this will show quickly. 
Alternatively run "nvidia-smi" from shell.
</pre>
<strong>MAKE A NOTE OF EACH GPU(X) ASSIGNMENT.</strong>
<p>You need these #'s for your overclock file.</p>
<hr/>
<pre>Working on these steps for the moment a raw file is attached</pre>

<h2>Step 3. Install pre-requisite libraries</h2>
<p>coming...</p>
<h2>Step 4. Install latest NVIDIA drivers</h2>
<p>coming...</p>
<h2>Step 5. Install latest NVIDIA drivers</h2>
<p>coming...</p>
