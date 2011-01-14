


;Added by Meena(25.6.10)
;How can you divorce the issues of environmental protection and overpopulation?
(defrule overpopulation0
(declare (salience 0))
(id-root ?id overpopulation)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id awyaXika_AbAxI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  overpopulation.clp       overpopulation0   "  ?id "  awyaXika_AbAxI )" crlf))
)


