
(defrule whoop0
(declare (salience 5000))
(id-root ?id whoop)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id cIKa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  whoop.clp 	whoop0   "  ?id "  cIKa )" crlf))
)

;"whoop","N","1.cIKa"
;They opened the gifts with whoops of excitement.
;
(defrule whoop1
(declare (salience 4900))
(id-root ?id whoop)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id cillA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  whoop.clp 	whoop1   "  ?id "  cillA )" crlf))
)

;"whoop","VI","1.cillAnA"
;They spent the night whooping on the new year eve.
;
