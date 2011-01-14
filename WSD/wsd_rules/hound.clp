
(defrule hound0
(declare (salience 5000))
(id-root ?id hound)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id SikArIkuwwA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  hound.clp 	hound0   "  ?id "  SikArIkuwwA )" crlf))
)

;"hound","N","1.SikArIkuwwA"
;KaragoSa kA SikAra'hound'(SikArI kuwwA)AsAnI se kara lewA hE.
;
(defrule hound1
(declare (salience 4900))
(id-root ?id hound)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pICe_padZa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  hound.clp 	hound1   "  ?id "  pICe_padZa )" crlf))
)

;"hound","V","1.pICe_padZanA"
;kAryAlaya aXIkRaka hAWa Xokara usake'hound'(pICe padZa gayA )hE.
;
