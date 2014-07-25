;@@@ Added by Preeti(16-12-13)
;The character of the village has changed since the road was built. 
;gAzva kI sWiwi baxala cukI hE kyoMki sadaka banAI gayI WI.
(defrule character1
(declare (salience 1050))
(id-root ?id character)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(viSeRya-of_saMbanXI  ?id ?id1)
(id-cat_coarse ?id1 noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sWiwi))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  character.clp 	character1   "  ?id "  sWiwi )" crlf))
)

;@@@ Added by Preeti(16-12-13)
;Everyone admires her strength of character and determination. 
;saba usakI yogyAwA kI wAkawa Ora xqDza niScaya kI praSaMsA karawe hEM.
(defrule character2
(declare (salience 1100))
(id-root ?id character)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(or(and(viSeRya-of_saMbanXI  ? ?id2) (id-root ?id2 strength))
(and(kriyA-object  ?id1 ?id) (id-root ?id1 show)))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id yogyAwA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  character.clp 	character2   "  ?id "  yogyAwA )" crlf))
)

;@@@ Added by Preeti(16-12-13)
;Clint Eastwood's character is the most sympathetic in the movie. 
;klinta estavuda kA cariwra calaciwra meM sabase aXika sahAnuBUwiSIla hE.
(defrule character3
(declare (salience 1150))
(id-root ?id character)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(viSeRya-RaRTI_viSeRaNa  ?id ?id1)
(id-cat_coarse ?id1 PropN)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id cariwra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  character.clp 	character3   "  ?id "  cariwra )" crlf))
)

;#############################Defaults rule#######################################

;@@@ Added by Preeti(16-12-13)
;It is not in her character to be jealous. 
;IrRyAlu honA usake svaBAva meM nahIM hE.
(defrule character0
(declare (salience 1000))
(id-root ?id character)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id svaBAva))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  character.clp 	character0   "  ?id "  svaBAva )" crlf))
)