
(defrule warn0
(declare (salience 5000))
(id-root ?id warn)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id warning )
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id cewAvanI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  warn.clp  	warn0   "  ?id "  cewAvanI )" crlf))
)

;"warning","N","1.cewAvanI"
;He got a warning for his behaviour
;
(defrule warn1
(declare (salience 4900))
(id-root ?id warn)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id cewAvanI_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  warn.clp 	warn1   "  ?id "  cewAvanI_xe )" crlf))
)

;"warn","VT","1.cewAvanI_xenA"
;The teacher warned the students not to repeat the mistakes
;
;