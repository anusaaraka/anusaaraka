
(defrule deserve0
(declare (salience 5000))
(id-root ?id deserve)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id deserving )
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id yogya))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  deserve.clp  	deserve0   "  ?id "  yogya )" crlf))
)

;"deserving","Adj","1.yogya"
;He is a deserving candidate for th first position in P.M.T.
;
(defrule deserve1
(declare (salience 4900))
(id-root ?id deserve)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id yogya_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  deserve.clp 	deserve1   "  ?id "  yogya_ho )" crlf))
)

;"deserve","VT","1.yogya_honA"
;I think that I deserve a reward for my patience.
;
;
