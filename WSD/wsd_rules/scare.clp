
(defrule scare0
(declare (salience 5000))
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
;
(defrule scare1
(declare (salience 4900))
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
(declare (salience 4800))
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
