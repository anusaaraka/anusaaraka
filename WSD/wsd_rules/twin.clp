
(defrule twin0
(declare (salience 5000))
(id-root ?id twin)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id judavA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  twin.clp 	twin0   "  ?id "  judavA )" crlf))
)

;"twin","N","1.judZavA"
;The brothers are twins.
;--"2.jodA"
;The cup was one of a pair.The servant broke its twin.
;
(defrule twin1
(declare (salience 4900))
(id-root ?id twin)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id jodA_milA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  twin.clp 	twin1   "  ?id "  jodA_milA )" crlf))
)

;"twin","V","1.jodA_milAnA"
;Hyderabad is twinned with Secunderabad.
;
