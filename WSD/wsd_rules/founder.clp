
(defrule founder0
(declare (salience 5000))
(id-root ?id founder)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id saMsWApaka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  founder.clp 	founder0   "  ?id "  saMsWApaka )" crlf))
)

;"founder","N","1.saMsWApaka"
;He is the founder of the party.
;
(defrule founder1
(declare (salience 4900))
(id-root ?id founder)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id asaPala_ho_jA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  founder.clp 	founder1   "  ?id "  asaPala_ho_jA )" crlf))
)

;"founder","V","1.asaPala_ho_jAnA"
;The project foundered because of lack of proper planning.
;
