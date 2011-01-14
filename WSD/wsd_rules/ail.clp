
(defrule ail0
(declare (salience 5000))
(id-root ?id ail)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id ailing )
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id rogI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  ail.clp  	ail0   "  ?id "  rogI )" crlf))
)

;"ailing","Adj","1.rogI{bImAra}"
;Sharad is ailing for the past three months.
;
(defrule ail1
(declare (salience 4900))
(id-root ?id ail)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kaRta_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  ail.clp 	ail1   "  ?id "  kaRta_xe )" crlf))
)

;"ail","V","1.kaRta_xenA{xu:Ka_xenA}"
;I asked what was ailing her.
;
