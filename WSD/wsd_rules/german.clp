
(defrule german0
(declare (salience 5000))
(id-root ?id german)
?mng <-(meaning_to_be_decided ?id)
(id-word =(- ?id 1) a)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id jarmana_vyakwi))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  german.clp 	german0   "  ?id "  jarmana_vyakwi )" crlf))
)

(defrule german1
(declare (salience 4900))
(id-root ?id german)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id jarmana))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  german.clp 	german1   "  ?id "  jarmana )" crlf))
)

;
;
