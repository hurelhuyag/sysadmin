ufw disable
ufw reset
ufw default allow outgoing
ufw default deny incoming
ufw allow 80/tcp
ufw allow 443
ufw allow 22/tcp
ufw enable
