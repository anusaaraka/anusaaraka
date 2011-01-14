
(defrule weld0
(declare (salience 5000))
(id-root ?id weld)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pedZa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  weld.clp 	weld0   "  ?id "  pedZa )" crlf))
)

;"weld","N","1.pedZa{jisase_pIlA_raMga_nikalawA_hE}"
;He saw a weld in the forest.
;
(defrule weld1
(declare (salience 4900))
(id-root ?id weld)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id jodZa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  weld.clp 	weld1   "  ?id "  jodZa )" crlf))
)

;"weld","VT","1.jodZanA"
;The man is welding the sheet .
;
