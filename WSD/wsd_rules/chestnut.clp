
(defrule chestnut0
(declare (salience 5000))
(id-root ?id chestnut)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id BUrA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  chestnut.clp 	chestnut0   "  ?id "  BUrA )" crlf))
)

;"chestnut","Adj","1.BUrA"
;I saw a chestnut horse feeding on the grass.
;
(defrule chestnut1
(declare (salience 4900))
(id-root ?id chestnut)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id SAhabalUwa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  chestnut.clp 	chestnut1   "  ?id "  SAhabalUwa )" crlf))
)

;"chestnut","N","1.SAhabalUwa"
;I haven't seen the tree of chestnut.
;
