;
; BIND data file for local loopback interface
;
$TTL	604800
@	IN	SOA	ns.blackartdsgns.com. root.blackartdsgns.com. (
			      3		; Serial
			 604800		; Refresh
			  86400		; Retry
			2419200		; Expire
			 604800 )	; Negative Cache TTL
;
@	IN	NS	ns.blackartdsgns.com.
ns	IN	A	192.168.1.2
ns2	IN	A	192.168.1.3
www	IN	A	192.168.1.4
jabber-gw	IN	A	192.168.1.5
_xmpp-client._tcp	SRV	5 0 5222 jabber-gw.blackartdsgns.com.
_xmpp-server._tcp	SRV	5 0 5269 jabber-gw.blackartdsgns.com.
smtp	IN	A	192.168.1.6
imap	IN	A	192.168.1.7
@	IN	MX	50	imap.blackartdsgns.com
prestashop  IN  CNAME   www
