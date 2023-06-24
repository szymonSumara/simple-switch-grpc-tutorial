tables["MyIngress.ipv4_lpm"]
table_entry["MyIngress.ipv4_lpm"](action="MyIngress.ipv4_forward")
te = table_entry["MyIngress.ipv4_lpm"](action="MyIngress.ipv4_forward")
te.match["hdr.ipv4.dstAddr"] = "10.0.2.2/32"
te.action["dstAddr"] = "08:00:00:00:02:00"
te.action["port"] = "2"
te.action?
te.insert