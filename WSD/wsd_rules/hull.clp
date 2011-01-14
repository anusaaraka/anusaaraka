
(defrule hull0
(declare (salience 5000))
(id-root ?id hull)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id jahAjZa_kA_DAzcA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  hull.clp 	hull0   "  ?id "  jahAjZa_kA_DAzcA )" crlf))
)

;"hull","N","1.jahAjZa_kA_DAzcA"
;tEtAnika jahAja kA DAzcA samuxra meM dUba gayA.
;
(defrule hull1
(declare (salience 4900))
(id-root ?id hull)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id CilakA_uwAra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  hull.clp 	hull1   "  ?id "  CilakA_uwAra )" crlf))
)

;"hull","V","1.CilakA_uwAranA"
;matara ko 'hull' karake raKanA hE.
;
