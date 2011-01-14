
(defrule vow0
(declare (salience 5000))
(id-root ?id vow)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id SapaWa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  vow.clp 	vow0   "  ?id "  SapaWa )" crlf))
)

;"vow","N","1.SapaWa"
;He took a vow never to drink again.
;
(defrule vow1
(declare (salience 4900))
(id-root ?id vow)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id vAxA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  vow.clp 	vow1   "  ?id "  vAxA )" crlf))
)

;"vow","VTI","1.vAxA"
;He vowed never to drink alcohol again
;
