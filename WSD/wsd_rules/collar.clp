
(defrule collar0
(declare (salience 5000))
(id-root ?id collar)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id garaxanI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  collar.clp 	collar0   "  ?id "  garaxanI )" crlf))
)

;"collar","N","1.garaxanI"
;The collar of his shirt is always dirty.
;--"2.gale_kA_pattA"
;A dog with a collar is treated as a pet dog by the municipality.
;
(defrule collar1
(declare (salience 4900))
(id-root ?id collar)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id giraPwAra_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  collar.clp 	collar1   "  ?id "  giraPwAra_kara )" crlf))
)

;"collar","V","1.giraPwAra_karanA"
;The policeman collared the rowdy.
;
