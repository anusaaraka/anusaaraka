
(defrule horseback0
(declare (salience 5000))
(id-root ?id horseback)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adverb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Gode_kA_savAra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  horseback.clp 	horseback0   "  ?id "  Gode_kA_savAra )" crlf))
)

;"horseback","Adv","1.Gode_kA_savAra"
;'horseback'calanA bacce pasanxa karawe hEM.
;
(defrule horseback1
(declare (salience 4900))
(id-root ?id horseback)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id GodZe_para_savAra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  horseback.clp 	horseback1   "  ?id "  GodZe_para_savAra )" crlf))
)

;"horseback","N","1.GodZe_para_savAra"
;jo BI AwA hE'horseback'(GodZe para savAra)hokara hI AwA hE.
;
