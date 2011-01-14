
(defrule stain0
(declare (salience 5000))
(id-root ?id stain)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id XabbA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  stain.clp 	stain0   "  ?id "  XabbA )" crlf))
)

;"stain","N","1.XabbA"
;The oil stains could not be removed from his dress.
;
(defrule stain1
(declare (salience 4900))
(id-root ?id stain)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id XabbA_dAla))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  stain.clp 	stain1   "  ?id "  XabbA_dAla )" crlf))
)

;"stain","V","1.XabbA_dAla"
;--"2.XabbevAlA_karanA"
;The grape juice stained the carpet.
;
