;Added by sheetal(17-03-10)
;The coverage on TV and on the radio has been terrible .
(defrule terrible0
(declare (salience 5000))
(id-root ?id terrible)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
(subject-subject_samAnAXikaraNa  ?sub ?id)
(id-root ?sub coverage)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id awiSaya))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  terrible.clp      terrible0   "  ?id "  awiSaya )" crlf))
)
