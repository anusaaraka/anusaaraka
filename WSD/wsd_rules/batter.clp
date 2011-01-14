
(defrule batter0
(declare (salience 5000))
(id-root ?id batter)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id battered )
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id kRawigraswa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  batter.clp  	batter0   "  ?id "  kRawigraswa )" crlf))
)

;"battered","Adj","1.kRawigraswa"
;He sold his battered car. 
;
(defrule batter1
(declare (salience 4900))
(id-root ?id batter)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Gola))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  batter.clp 	batter1   "  ?id "  Gola )" crlf))
)

;"batter","N","1.Gola"
;Ram prepared the batter for the pudding.
;
(defrule batter2
(declare (salience 4800))
(id-root ?id batter)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id mAra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  batter.clp 	batter2   "  ?id "  mAra )" crlf))
)

;"batter","VT","1.mAranA/kUtanA"
;He battered at the door with his fists.
;
