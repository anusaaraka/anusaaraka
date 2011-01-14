
(defrule throb0
(declare (salience 5000))
(id-root ?id throb)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id XadZakana))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  throb.clp 	throb0   "  ?id "  XadZakana )" crlf))
)

;"throb","N","1.XadZakana"
;Rita's achievements gave Rama real throbs of joy.
;
(defrule throb1
(declare (salience 4900))
(id-root ?id throb)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id XadZaka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  throb.clp 	throb1   "  ?id "  XadZaka )" crlf))
)

;"throb","VI","1.XadZakanA"
;My head is throbbing due to headache.
;
