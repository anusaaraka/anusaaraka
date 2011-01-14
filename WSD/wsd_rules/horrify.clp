
(defrule horrify0
(declare (salience 5000))
(id-root ?id horrify)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id horrifying )
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id BayAnaka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  horrify.clp  	horrify0   "  ?id "  BayAnaka )" crlf))
)

;"horrifying","Adj","1.BayAnaka"
;vaha baccoM ko 'horrifying' kahAnI sunA rahA WA.
;
(defrule horrify1
(declare (salience 4900))
(id-root ?id horrify)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id AwaMkiwa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  horrify.clp 	horrify1   "  ?id "  AwaMkiwa_kara )" crlf))
)

;"horrify","V","1.AwaMkiwa karanA"
;mohalle vAloM ko xAxAoM ne 'horrify'(AwaMkiwa kara raKA ) WA.
;
;