
(defrule tow0
(declare (salience 5000))
(id-root ?id tow)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id KiMcAva))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  tow.clp 	tow0   "  ?id "  KiMcAva )" crlf))
)

;"tow","N","1.KiMcAva"
;The truck gave him a tow to the garage.
;
(defrule tow1
(declare (salience 4900))
(id-root ?id tow)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id rassI_se_KIMca))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  tow.clp 	tow1   "  ?id "  rassI_se_KIMca )" crlf))
)

;"tow","VT","1.rassI_se_KIMca"
;The car was towed to the garage by a pick up truck.
;
