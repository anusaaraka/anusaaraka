
(defrule wean0
(declare (salience 5000))
(id-root ?id wean)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id CudZA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  wean.clp 	wean0   "  ?id "  CudZA )" crlf))
)

;"wean","V","1.CudZA{xUXa_Axi}"
(defrule wean1
(declare (salience 4900))
(id-root ?id wean)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id xUXa_CudZA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  wean.clp 	wean1   "  ?id "  xUXa_CudZA )" crlf))
)

;"wean","VT","1.xUXa_CudZAnA"
;The baby has started taking solids after he was weaned from his mother's milk.
;
