<h1>Useful scripts for manipulating miner program</h1>
<pre>Please note this was designed for use with EWBF miner but should be pretty easy to adapt for other miners like Claymore</pre>
<h2>Health check scripts</h2>
<ul>
<li><strong>healthcheck.sh</strong> -- this reads the tail of the EWBF Miner log -- looks for the common fault codes and terminates the tmux session on finding a fault**</li>
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
<img src="ewbfzecrig1.png">
<h2>Using TMUX</h2>
1. Have a look at the startmining.sh file as it will explain how the session works. You can also check out the <a href="https://linux.die.net/man/1/tmux" target="_new">man pages</a> for tmux.<br/>
2. Once TMUX is started and the miner app started within - you will not see anything on screen yet (as it runs in background).<br/>
3. Run "tmux attach" to connect to that session.<br/>
4. You can close the terminal window anytime it will remain running.<br/>
5. If you need to terminate your miner program manually see the tmuxkill.sh file.<br/>
<h3>to install tmux:</h3>
<pre>sudo apt-get install tmux</pre>

<h2>Postfix example config (main.cf)</h2>
<p>This example uses SAML to allow relay through the SENDGRID service</p>

$ cat main.cf
<pre>
smtpd_banner = $myhostname ESMTP $mail_name (Ubuntu)
biff = no
append_dot_mydomain = no
readme_directory = no
smtpd_tls_cert_file=/etc/ssl/certs/ssl-cert-snakeoil.pem
smtpd_tls_key_file=/etc/ssl/private/ssl-cert-snakeoil.key
smtpd_use_tls=yes
smtpd_tls_session_cache_database = btree:${data_directory}/smtpd_scache
smtp_tls_session_cache_database = btree:${data_directory}/smtp_scache
smtpd_relay_restrictions = permit_mynetworks permit_sasl_authenticated defer_una                                                         myhostname = miner01.kinesysgroup.co.uk
alias_maps = hash:/etc/aliases
alias_database = hash:/etc/aliases
myorigin = /etc/mailname
mydestination = miner01.kinesysgroup.co.uk, $myhostname, miner01, localhost.localdomain, localhost
smtp_sasl_auth_enable = yes
smtp_sasl_password_maps = hash:/etc/postfix/sasl_passwd
smtp_sasl_security_options = noanonymous
smtp_sasl_tls_security_options = noanonymous
smtp_tls_security_level = encrypt
header_size_limit = 4096000
relayhost = [smtp.sendgrid.net]:587
mynetworks = 127.0.0.0/8 [::ffff:127.0.0.0]/104 [::1]/128
mailbox_size_limit = 0
recipient_delimiter = +
inet_interfaces = loopback-only
inet_protocols = all
</pre>
