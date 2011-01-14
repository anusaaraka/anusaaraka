
(defrule wire0
(declare (salience 5000))
(id-root ?id wire)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id wAra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  wire.clp 	wire0   "  ?id "  wAra )" crlf))
)

;"wire","N","1.wAra"
;The electrician is using a wire for the fuse.
;
(defrule wire1
(declare (salience 4900))
(id-root ?id wire)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id wAra_lagA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  wire.clp 	wire1   "  ?id "  wAra_lagA )" crlf))
)

;"wire","V","1.wAra_lagA"
(defrule wire2
(declare (salience 4800))
(id-root ?id wire)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id wAra_se_bAzXa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  wire.clp 	wire2   "  ?id "  wAra_se_bAzXa )" crlf))
)

;"wire","VT","1.wAra_se_bAzXanA"
;They have to wire the electric connections.
;
