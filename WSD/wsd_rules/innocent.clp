
(defrule innocent0
(declare (salience 5000))
(id-root ?id innocent)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id nirxoRa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  innocent.clp 	innocent0   "  ?id "  nirxoRa )" crlf))
)

(defrule innocent1
(declare (salience 4900))
(id-root ?id innocent)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id nirxoRa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  innocent.clp 	innocent1   "  ?id "  nirxoRa )" crlf))
)

;"innocent","Adj","1.nirxoRa"
;She is an innocent child.
;
;
