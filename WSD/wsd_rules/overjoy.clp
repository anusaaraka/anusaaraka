
(defrule overjoy0
(declare (salience 5000))
(id-root ?id overjoy)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id overjoyed )
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id awiprasanna))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  overjoy.clp  	overjoy0   "  ?id "  awiprasanna )" crlf))
)

;"overjoyed","Adj","1.awiprasanna"
;His overjoyed parents informed everybody about it.
;
(defrule overjoy1
(declare (salience 4900))
(id-root ?id overjoy)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id awyaXika_prasanna_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  overjoy.clp 	overjoy1   "  ?id "  awyaXika_prasanna_ho )" crlf))
)

;"overjoy","VT","1.awyaXika_prasanna_honA"
;Raju's parents were overjoyed when he got a job 
;
;