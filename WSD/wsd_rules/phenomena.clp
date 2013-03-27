;Added by manju 
;We can broadly describe physics as a study of the basic phenomenas of nature and their manifestation in different natural phenomena .
(defrule phenomena0
(declare (salience 5001))
;(id-word ?id phenomenas|phenomena) ;Commented this fact
(id-root ?id phenomenon) ; root changed from phenomena to phenomenon by Roja(14-03-2013)
(id-cat_coarse ?id noun)
?mng <-(meaning_to_be_decided ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pariGatanA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*prov_dir* "  phenomena.clp    phenomena0   "  ?id "  pariGatanA)" crlf))
)

