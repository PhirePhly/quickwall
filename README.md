# quickwall
Fast and simple iptables based firewall tool

This tool sets up a relatively permissive firewall using iptables and a
shell script in the /etc/network/if-pre-up.d/ hook direcory to install the
chains automatically.

To configure the firewall, edit the local rules files, which get appended
into two sets of chains:

* For IPv4: rules.v4.head, rules.common, rules.v4.foot
* For IPv6: rules.v6.head, rules.common, rules.v6.foot

The sample rules and default enabled boilerplate is relatively trusting,
so make sure to edit the firewall policies per your own preferences.

