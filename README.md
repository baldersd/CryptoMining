
<h1># CryptoMining # Useful tools for Crypto Mining in Ubuntu</h1>
https://github.com/baldersd/CryptoMining
<h2>Description</h2>
<p>Welcome to my mini portal for assistance for newcomers to mining in building a decent, stable, nicely overclocked rig and setting up your miner(s) with some fault tolerance to mine various crypto currencies 24/7 without suffering too much downtime and manual effort restoring things.  
</p>
<p>There is no support arm to this, the idea is it can get you a basic NVIDIA Ubuntu rig up and running and you tweak the bash scripts/cron jobs...etc...to suit your setup and schedules.</p>
<p><i>If you do want to ask me something please feel free to and when I can I will try to help. Send your questions to <strong>baldersd@hotmail.com</strong> happy to take a look!</i></p>
<h2>Linux Blend</h2>
<p>After trialling various blends of Ubuntu and other I have found under my test cases anyway that Ubuntu with MATE gui (x64) proved to be the most stable and didn't give the usual grief with NVIDIA Overclocking settings (coolbits). All this works really well for me.
</p>
<p>ubuntu-mate-16.04.3-desktop-amd64.iso</p>
<h2>NVIDIA Driver</h2>
<p>Another benefit with the MATE release is that it works with COOLBITS on the *latest* NVIDIA drivers. A lot of people (myself included) experienced issues getting later versions to allow overclocking. They have been writing on forums saying this is a common issue where no matter what commands they run with XORG or nvidia-settings, even manually editing XORG.conf, they can't get the sliders to appear in the NVIDIA-Settings app and nor does the NVIDIA cli allow overclocking. They are forced to rollback to a 376.x version.
</p>
<p>Under these versions both GUI and CLI works for everything; power; memory OC; Core OC; fan control.</p>
<p>(Required to set a startup.sh file though as settings get lost on reboot otherwise -- looking at how to deal with that better)</p>
<p>NVIDIA-SMI 384.90 | Driver Version: 384.90  </p>
<h2>*** New updates ***</h2>
<pre>20/10/2017 | Added TMUX functionality<br/>
  <i style='padding-left:20px;'>
   tmux — terminal multiplexer enables a number of terminals to be
     created, accessed, and controlled from a single screen.  tmux may be
     detached from a screen and continue running in the background, then later
     reattached. <br/> <strong>--&gt; Really useful for dealing with miner software in your rig remotely with pUTTY.</strong>
  </i>
</pre>
<h2>Usage/Download</h2>
You can just download the files from here or I guess you can git clone as well.
<pre>
git clone git@github.com:baldersd/CryptoMining.git minertools
cd minertools
</pre>
<h2>Donations</h2>
<p>If any of this has saved you some time and effort and you are willing to make a small donation I would of course be very grateful however I don't expect anyone to feel obliged to do so as this is free usage for all. Up to you.</p>
<p>
BTC address: 147j3E8wosUS8XbWG6YC7RKDwij7S7fyBD<br/>
ZEC address: t1JeN79UwgR572JRzs7ue5J1v5LEiefFzzu<br/>
ETH address: 0xb2d852e0fb624d929622bb945c3c8e49613c73d1<br/>
</p>

<h3>License</h3>
<p>Code here is released under the GNU General Public License v2<br/>
http://www.gnu.org/licenses/gpl-2.0.html</p>
