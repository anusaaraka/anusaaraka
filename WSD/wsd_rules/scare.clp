
(defrule scare0
(declare (salience 4000))
(id-root ?id scare)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id scared )
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id darA_huA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  scare.clp  	scare0   "  ?id "  darA_huA )" crlf))
)

;"scared","Adj","1.darA_huA"
;A scared look appeared on her face.
; 
;"scary","Adj","1.darAvanA"
;The story was quite scary.
;@@@ Added by jagriti(8.3.2014)
;The dog barked and scared off/away the thief.[rajpal]
;कुत्ते ने भौंककर चोर को भगा दिया . 
(defrule scare3
(declare (salience 5000))
(id-root ?id scare)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-upasarga ?id ?id1)
(id-root ?id1 off|away)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 BagA_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " scare.clp	scare3  "  ?id "  " ?id1 "   BagA_xe )" crlf))
)
;@@@ Added by jagriti(8.3.2014)
;The sudden noise scared the child.[rajpal]
;अचानक शोर ने बच्चे को डरा दिया .
(defrule scare4
(declare (salience 4900))
(id-root ?id scare)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-object ?id ?id1)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id darA_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  scare.clp  	scare4   "  ?id "  darA_xe )" crlf))
)


;...default rule...

(defrule scare1
(declare (salience 100))
(id-root ?id scare)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id dara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  scare.clp 	scare1   "  ?id "  dara )" crlf))
)

;"scare","N","1.dara"
;Her sudden appearance gave me a scare.
;
(defrule scare2
(declare (salience 100))
(id-root ?id scare)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id dara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  scare.clp 	scare2   "  ?id "  dara )" crlf))
)

;"scare","V","1.daranA[darAnA}"
;He was scared by the strange noises from the woods.
;
