<h1>Useful scripts for manipulating miner program</h1>
<pre>Please note this was designed for use with EWFB miner but should be pretty easy to adapt for other miners like Claymore</pre>
<h2>Health check scripts</h2>
<ul>
<li><strong>healthcheck.sh</strong> -- this reads the tail of the EWFB Miner log -- looks for the common fault codes and terminates the tmux session on finding a fault**</li>
<li><strong>ipmailme.sh</strong> -- uses POSTFIX to send an email message when PUBLIC IP changes (Uses a CURL request to obtain current IP and compares with the previous one which is stored in a file locally)</li>
<li><strong>startmining.sh</strong> -- contains the TMUX code to launch the miner and also monitors the process so we can restart it if it crashes.</li>
<li><strong>tmuxkill.sh</strong> -- (optional file) -- hard stops the miner software (actual kills the tmux session) on demand.</li>
</ul>
<p>
  ** the startmining.sh file polls for the miner process so will autorestart it if it is terminated by the health checker.
</p>
<h2>Crontab Jobs</h2>
<ul>
<li>cron.txt -- use the lines within in your cron file (run "crontab -e" but under your account not sudo/root)</li>
</ul>
<p>This will execute the tasks (healthcheck scripts above) constantly:</p>
<ul>
  <li>Run miner on a reboot.</li>
  <li>If my public IP changes email me!(requires POSTFIX).</li>
  <li>If miner crashes restart it (currently this is coded for EWBF but you should be able to adapt this easily).</li>
  </ul>
  <p>Be sure to change the path to your download folder location.</p>
<h2>Over-clocking</h2>
<ul>
  <li>overclock.sh</li>
  <p>You will need to edit this file a whole heap of times to find your optimal O/C settings.</p>
  <pre>--Be prepared to spend some hours on this--</pre>
  <p><strong>This is my O/C balance for the three different cards in my 1st rig I setup.<br/><br/>Mining ZCASH (ZEC) with these settings on average I get:<br/>
    -- 560 Sol/s GPU0 (1080)<br/>
    -- 180 Sol/s GPU1 & 3 (1050TI)<br/>
    -- 300 Sol/s GPU2 & 4 (1060)<br/><br/>
    +1500Sol/s total across the 5 cards.
    </strong></p>
  
</ul>
