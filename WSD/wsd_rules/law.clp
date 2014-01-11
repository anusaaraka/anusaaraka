;Added by manju 
;We can broadly describe physics as a study of the basic laws of nature and their manifestation in different natural phenomena .
(defrule law0
(declare (salience 5001))
(id-word ?id laws|law)
(id-root ?id law)
(id-cat_coarse ?id noun)
?mng <-(meaning_to_be_decided ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id niyama))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  law.clp    law0   "  ?id "  niyama)" crlf))
)

