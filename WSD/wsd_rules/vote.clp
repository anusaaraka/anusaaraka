
(defrule vote0
(declare (salience 5000))
(id-root ?id vote)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id voting )
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id mawaxAna))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  vote.clp  	vote0   "  ?id "  mawaxAna )" crlf))
)

;"voting","N","1.mawaxAna"
;Voting for this constituency is over
;
(defrule vote1
(declare (salience 4900))
(id-root ?id vote)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id mawa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  vote.clp 	vote1   "  ?id "  mawa )" crlf))
)

;"vote","N","1.mawa/vota"
;There were only seventeen  votes in favor of the motion
;
(defrule vote2
(declare (salience 4800))
(id-root ?id vote)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id mawa_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  vote.clp 	vote2   "  ?id "  mawa_xe )" crlf))
)

;"vote","VTI","1.mawa_xenA"
;He voted for the motion
;
