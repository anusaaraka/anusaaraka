
(defrule grapple0
(declare (salience 5000))
(id-root ?id grapple)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 with)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 pakadZanA_Ora_ladZAI_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " grapple.clp	grapple0  "  ?id "  " ?id1 "  pakadZanA_Ora_ladZAI_kara  )" crlf))
)

; The policeman grappled with the thief.
;pulisavAle ne cora ko pakadZA Ora Pira ladZAI kI
(defrule grapple1
(declare (salience 4900))
(id-root ?id grapple)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id peMca))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  grapple.clp 	grapple1   "  ?id "  peMca )" crlf))
)

;"grapple","N","1.peMca"
(defrule grapple2
(declare (salience 4800))
(id-root ?id grapple)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id BidZa_jA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  grapple.clp 	grapple2   "  ?id "  BidZa_jA )" crlf))
)

;"grapple","VI","1.BidZa_jAnA"
(defrule grapple3
(declare (salience 4700))
(id-root ?id grapple)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pakadZa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  grapple.clp 	grapple3   "  ?id "  pakadZa )" crlf))
)

;"grapple","VT","1.pakadZanA"
