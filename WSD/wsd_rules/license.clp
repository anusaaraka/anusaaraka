;@@@ Added by Nandini(14-12-13)
;She was chancing her luck driving without a license.[oxford advanced learner's dictionary]
;vaha aXikAra pawra ke binA gAdI calAkar apane nasIba ko baxala rahI WI .
(defrule license0
(declare (salience 100))
(id-root ?id license)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id aXikAra_pawra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  license.clp 	license0   "  ?id "  aXikAra_pawra)" crlf))
)

;@@@ Added by Nandini(14-12-13)
;Liberalisation does not mean a license to indulge in malpractices.
(defrule license1
(declare (salience 150))
(id-root ?id license)
?mng <-(meaning_to_be_decided ?id)
(saMjFA-to_kqxanwa  ?id ?id1)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id CUta))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  license.clp 	license1   "  ?id "  CUta)" crlf))
)

;@@@ Added by Nandini(14-12-13)
;The new drug has not yet been licensed in the US.
(defrule license2
(declare (salience 200))
(id-root ?id license)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id AjFa_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  license.clp 	license2   "  ?id "  AjFa_xe)" crlf))
)
