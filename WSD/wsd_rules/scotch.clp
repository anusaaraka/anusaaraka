
(defrule scotch0
(declare (salience 5000))
(id-root ?id scotch)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id skAtalEMda-saMbaMXI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  scotch.clp 	scotch0   "  ?id "  skAtalEMda-saMbaMXI )" crlf))
)

;"scotch","Adj","1.skAtalEMda-saMbaMXI"
;This is a Scotch Turkey.
;
(defrule scotch1
(declare (salience 4900))
(id-root ?id scotch)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id roka_lagA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  scotch.clp 	scotch1   "  ?id "  roka_lagA )" crlf))
)

