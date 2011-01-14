
(defrule misunderstand0
(declare (salience 5000))
(id-root ?id misunderstand)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id misunderstanding )
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id galawaPahamI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  misunderstand.clp  	misunderstand0   "  ?id "  galawaPahamI )" crlf))
)

;"misunderstanding","N","1.galawaPahamI"
;Thank god the misunderstanding has been resolved.
;
(defrule misunderstand1
(declare (salience 4900))
(id-root ?id misunderstand)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id galawa_samaJa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  misunderstand.clp 	misunderstand1   "  ?id "  galawa_samaJa )" crlf))
)

;"misunderstand","V","1.galawa samaJanA"
;Why do you always misunderstand him.
;
;