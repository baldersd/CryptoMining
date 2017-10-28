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
<p>This will execute the healthcheck scripts above constantly:<br/>a) Run miner on a reboot <br/>b) If my public IP changes email me!<br/>c) If miner crashes restart it (currently this is coded for EWFB but you should be able to adapt this easily).<br/></p>
<h2>Over-clocking</h2>
<ul>
  <li>overclock.sh</li>
</ul>
