;don't let the boss bury his head in sand (idiom: to ignore facts)


(defrule bury0
(declare (salience 5000))
(id-root ?id bury)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 sand)
(id-word ?id2 head)
(id-word ?id3 his|her|your|their)
(kriyA-in_saMbanXI ?id ?id1)
(kriyA-object ?id ?id2)
(viSeRya-RaRTI_viSeRaNa ?id2 ?id3)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 ?id2 ?id3 anxeKA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " bury.clp	bury0  "  ?id "  " ?id1 " "?id2" "?id3" anxeKA  )" crlf))
)

;bury the hatched
;I think the best thing you can do is to keep away from your in-laws for a few weeks and then try to find a way to bury the hatchet.
;A weekend of fresh starts help you bury the hatchet with a friend.
;Raj and Kamal buried the hatchet after a nine year struggle .

(defrule bury2
(declare (salience 4800))
(id-root ?id bury)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 hatchet)
(id-word ?id2 the)
(kriyA-object ?id ?id1)
(viSeRya-det_viSeRaNa ?id1 ?id2)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 ?id2 ApasI_manamutAva_mitA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " bury.clp	bury2  "  ?id "  " ?id1 "  "?id2" ApasI_manamutAva_mitA  )" crlf))
)

;He took his to Ganga to bury.
;His wife wanted to bury him in consecrated ground.

(defrule bury3
(declare (salience 4600))
(id-root ?id bury)
?mng <-(meaning_to_be_decided ?id)
(to-infinitive ? ?id) 
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id xaPana_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  bury.clp 	bury3   "  ?id "  xaPana_kara )" crlf))
)

;But so far only four men have been buried and no autopsy results have been disclosed.  
;Probably this deputation, sent from whatever authority it was that had stupidly persisted in burying her, had been sent to apologise.   
(defrule bury4
(declare (salience 4500))
(id-root ?id bury)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id xaPanA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  bury.clp 	bury4   "  ?id "  xaPanA )" crlf))
)
