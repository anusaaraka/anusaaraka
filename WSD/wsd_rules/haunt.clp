
(defrule haunt0
(declare (salience 5000))
(id-root ?id haunt)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id haunting )
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id bAra_bAra_yAxa_Ane_vAlA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  haunt.clp  	haunt0   "  ?id "  bAra_bAra_yAxa_Ane_vAlA )" crlf))
)

;"haunting","Adj","1.bAra bAra yAxa Ane vAlA"
;tqka Ora kAra kI vaha xurGatanA"haunting"GatanA bana gaI.
;
(defrule haunt1
(declare (salience 4900))
(id-root ?id haunt)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id haunted )
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id BuwahA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  haunt.clp  	haunt1   "  ?id "  BuwahA )" crlf))
)

;"haunted","Adj","1.BuwahA"
;vaha purAnA mahala eka"haunted" mahala bana cukA hE.
;
;
(defrule haunt2
(declare (salience 4800))
(id-root ?id haunt)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id GUmawe_raha))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  haunt.clp 	haunt2   "  ?id "  GUmawe_raha )" crlf))
)

;"haunt","V","1.GUmawe_rahanA{BUwaprewa_kA}"
;Ghosts haunt vacant houses .
;baMxa GaroM meM BUwa GUmawe rahawe hEM . 
;
