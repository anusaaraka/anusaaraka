
(defrule seed0
(declare (salience 5000))
(id-root ?id seed)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id seeded )
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id bIjaxAra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  seed.clp  	seed0   "  ?id "  bIjaxAra )" crlf))
)

;"seeded","Adj","1.bIjaxAra"
;I need only seeded raisins.
;--"2.prODZa"
;Only seeded players were sent to play abroad. 
;
(defrule seed1
(declare (salience 4900))
(id-root ?id seed)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id bIja))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  seed.clp 	seed1   "  ?id "  bIja )" crlf))
)

;"seed","N","1.bIja"
;Birds ate away all the seeds he had sown.
;
;