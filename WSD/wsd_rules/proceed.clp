
(defrule proceed0
(declare (salience 5000))
(id-root ?id proceed)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id proceeding )
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id kArravAI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  proceed.clp  	proceed0   "  ?id "  kArravAI )" crlf))
)

;"proceeding","N","1.kArravAI"
(defrule proceed1
(declare (salience 4900))
(id-root ?id proceed)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Age_baDa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  proceed.clp 	proceed1   "  ?id "  Age_baDa )" crlf))
)

;"proceed","V","1.Age baDanA"
;The judge asked the lawyer to proceed with the case.
;
;