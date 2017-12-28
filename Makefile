
default:
	cat rules.v4.head rules.common rules.v4.foot >DRYRUN.iptables
	cat rules.v6.head rules.common rules.v6.foot >DRYRUN.ip6tables

clean:
	rm -f DRYRUN*

install: 
	cp iptables.sh /etc/network/if-pre-up.d/iptables
	cat rules.v4.head rules.common rules.v4.foot >/etc/network/iptables
	cat rules.v6.head rules.common rules.v6.foot >/etc/network/ip6tables

uninstall:
	rm /etc/network/if-pre-up.d/iptables /etc/network/iptables /etc/network/ip6tables

