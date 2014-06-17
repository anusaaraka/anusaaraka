;$$$ Modified by Sonam Gupta MTech IT Banasthali 11-2-2014 (meaning)
(defrule prick0
(declare (salience 5000))
(id-root ?id prick)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 up)
(kriyA-up_saMbanXI ?id ?) ;Automatically modified kriyA-upasarga to kriyA-prep_saMbanXI by Sukhada's program. 
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id KadZe_kara));Automatically modified 'affecting_id-affected_ids-wsd_group_root_mng ?id ?id1' to 'id-wsd_root_mng ?id ' by Sukhada's program. 
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng  " ?*wsd_dir* " prick.clp prick0 " ?id "  KadZe_kara )" crlf)) 
)

;$$$ Modified by Sonam Gupta MTech IT Banasthali 11-2-2014 (meaning)
(defrule prick1
(declare (salience 4900))
(id-root ?id prick)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 up)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 Kadze_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " prick.clp	prick1  "  ?id "  " ?id1 "  Kadze_kara  )" crlf))
)

(defrule prick2
(declare (salience 4800))
(id-root ?id prick)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Cexa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  prick.clp 	prick2   "  ?id "  Cexa )" crlf))
)

(defrule prick3
(declare (salience 4700))
(id-root ?id prick)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Cexa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  prick.clp 	prick3   "  ?id "  Cexa )" crlf))
)

;"prick","N","1.Cexa"
;While sewing, the needle gave a prick on my finger.
;--"3.mUrKa"
;He behaves like a prick in the class.
;
;

;@@@ Added by Sonam Gupta MTech IT Banasthali 11-2-2014
;Her conscience pricked her. [Rajpal]
;उसकी आत्मा ने उसे धिक्कारा .
(defrule prick4
(declare (salience 5200))
(id-root ?id prick)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-subject  ?id ?id1)
(id-root ?id1 conscience|ethics|principle)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id XikkArA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  prick.clp 	prick4   "  ?id "  XikkArA )" crlf))
)


;@@@ Added by Sonam Gupta MTech IT Banasthali 11-2-2014
;Prick of a needle. [Rajpal]
;सुई की चुभन .
(defrule prick5
(declare (salience 5000))
(id-root ?id prick)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(kriyA-of_saMbanXI  ?id ?)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id cuBana))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  prick.clp 	prick5   "  ?id "  cuBana )" crlf))
)


;@@@ Added by Sonam Gupta MTech IT Banasthali 11-2-2014
;Prick of conscience. [Rajpal]
;आत्मा की धिक्कार .
(defrule prick6
(declare (salience 5000))
(id-root ?id prick)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(kriyA-of_saMbanXI  ?id ?id1)
(id-root ?id1 conscience|ethics|principle)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id XikkAra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  prick.clp 	prick6   "  ?id "  XikkAra )" crlf))
)


;@@@ Added by Sonam Gupta MTech IT Banasthali 11-2-2014
;She was pricked by doubt. [M-W]
;वह संदेह से आहत थी .
(defrule prick7
(declare (salience 5000))
(id-root ?id prick)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(kriyA-by_saMbanXI  ?id ?id1)
(id-root ?id1 guilt|doubt|jealousy|disbelief)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Ahawa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  prick.clp 	prick7   "  ?id "  Ahawa )" crlf))
)
