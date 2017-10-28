<h1>Useful scripts for manipulating miner program</h1>
<h2>Health check scripts</h2>
<ul>
<li>healthcheck.sh</li>
<li>ipmailme.sh</li>
<li>startmining.sh</li>
<li>tmuxkill.sh</li>
</ul>
<h2>Crontab Jobs</h2>
<ul>
<li>cron.txt -- use the lines within in your cron file (run "crontab -e" but under your account not sudo/root)</li>
</ul>
<p>This will execute the healthcheck scripts above constantly:<br/>a) Run miner on a reboot.<br/>b) If my public IP changes email me!(requires POSTFIX).<br/>c) If miner crashes restart it (currently this is coded for EWBF but you should be able to adapt this easily).<br/></p>
<h2>Over-clocking</h2>
<ul>
  <li>overclock.sh</li>
  <p>You will need to edit this file a whole heap of times to find your optimal O/C settings.</p>
  <p>--Be prepared to spend some hours on this--</p>
  <p><strong>This is my O/C balance for the three different cards in my 1st rig I setup.<br/><br/>Mining ZCASH (ZEC) with these settings on average I get:<br/>
    -- 560 Sol/s GPU0 (1080)<br/>
    -- 180 Sol/s GPU1 & 3 (1050TI)<br/>
    -- 300 Sol/s GPU2 & 4 (1060)<br/><br/>
    +1500Sol/s total across the 5 cards.
    </strong></p>
  
</ul>
