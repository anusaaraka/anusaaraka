
(defrule stink0
(declare (salience 5000))
(id-root ?id stink)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id stinking )
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id burA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  stink.clp  	stink0   "  ?id "  burA )" crlf))
)

;"stinking","Adj","1.burA"
;She's got a stinking habit of talking too much.
;
(defrule stink1
(declare (salience 4900))
(id-root ?id stink)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id baxabU))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  stink.clp 	stink1   "  ?id "  baxabU )" crlf))
)

;"stink","N","1.baxabU"
;Oh! What an obnoxious stink?
;
(defrule stink2
(declare (salience 4800))
(id-root ?id stink)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id baxabU_mAra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  stink.clp 	stink2   "  ?id "  baxabU_mAra )" crlf))
)

;"stink","V","1.baxabU_mAranA"
;My friend doesn't her bath daily which makes her stink.
;
