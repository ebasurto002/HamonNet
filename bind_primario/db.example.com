;
; BIND data file for local loopback interface
;
$TTL	604800
@	IN	SOA	ns.example.com. root.example.com. (
			      2		; Serial
			 604800		; Refresh
			  86400		; Retry
			2419200		; Expire
			 604800 )	; Negative Cache TTL
;
@	IN	NS	ns.example.com.
@   IN  NS  ns2.example.com.
ns	IN	A	192.168.1.2
ns2	IN	A	192.168.1.3
jabber-gw	IN	A	192.168.1.8
_xmpp-client._tcp	IN	SRV	5 0 5222 jabber-gw.example.com.
_xmpp-server._tcp	IN	SRV	5 0 5269 jabber-gw.example.com.

ns-staging	IN	A	192.168.1.12
ns2-staging	IN	A	192.168.1.13
jabber-gw-staging	IN	A	192.168.1.18
