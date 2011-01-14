
(defrule interior0
(declare (salience 5000))
(id-root ?id interior)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id BIwarI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  interior.clp 	interior0   "  ?id "  BIwarI )" crlf))
)

;"interior","Adj","1.BIwarI"
;An interior decor adds beauty to the house.
;
(defrule interior1
(declare (salience 4900))
(id-root ?id interior)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id BIwara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  interior.clp 	interior1   "  ?id "  BIwara )" crlf))
)

;"interior","N","1.BIwara"
;The interior of salar jung museum needs attention.
;
