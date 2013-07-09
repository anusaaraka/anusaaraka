
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

;Added by Abhinav IIT(BHU)
(defrule haunt4
(declare (salience 4860))
(id-root ?id haunt)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(id-cat ?id verb_past_participle)
(id-cat_coarse =(+ ?id 1) noun|pronoun|preposition)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id GabarA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*prov_dir* "  haunt.clp 	haunt4   "  ?id "  GabarA )" crlf))
)


;Added by Abhinav IIT(BHU)
(defrule haunt3
(declare (salience 4850))
(id-root ?id haunt)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(id-cat ?id verb_past_participle)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id BUwiyA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*prov_dir* "  haunt.clp 	haunt3   "  ?id "  BUwiyA )" crlf))
)

;The house is haunted.
;Those memories haunt me.
;He was haunted by childhood memories.
;She was haunted by the death.
;They are haunted by fear.
;Those final screams will haunt her forever.
;His war was coming back to haunt him again.
;The scene will always haunt me.
;Ghosts haunt vacant houses.
;Hardik is haunted to sit in plane.
;Aditya was haunted by Hardik.
;I feel haunted by the fact.


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
