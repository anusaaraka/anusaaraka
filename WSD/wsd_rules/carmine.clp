
(defrule carmine0
(declare (salience 5000))
(id-root ?id carmine)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id lAla_raMga))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  carmine.clp 	carmine0   "  ?id "  lAla_raMga )" crlf))
)

;"carmine","Adj","1.lAla_raMga"
;She bought a carmine saree.
;
(defrule carmine1
(declare (salience 4900))
(id-root ?id carmine)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id lAla_raMga))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  carmine.clp 	carmine1   "  ?id "  lAla_raMga )" crlf))
)

;"carmine","N","1.lAla_raMga"
;Her saree was carmine.
;
