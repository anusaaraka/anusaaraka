
(defrule declare0
(declare (salience 5000))
(id-root ?id declare)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id declared )
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id GoRiwa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  declare.clp  	declare0   "  ?id "  GoRiwa )" crlf))
)

;"declared","Adj","1.GoRiwa"
;His declared goal is fulfilled.
;
(defrule declare1
(declare (salience 4900))
(id-root ?id declare)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id GoRiwa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  declare.clp 	declare1   "  ?id "  GoRiwa_kara )" crlf))
)

;"declare","V","1.GoRiwa karanA"
;He has to declare about his son's massiage.
;--"2.vivaraNa xenA"
;The business man will declare about his income today .
;--"3.uxGoRaNA karanA"
;The captain will declare about his team mates later.
;He has declared about his meetings.
;
;
