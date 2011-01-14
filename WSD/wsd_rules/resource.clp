(defrule resource0
(declare (salience 5000))
(id-root ?id resource)
?mng <-(meaning_to_be_decided ?id)
;(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id saMsAXana))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  resource.clp     resource0   "  ?id " saMsAXana )" crlf))
)


