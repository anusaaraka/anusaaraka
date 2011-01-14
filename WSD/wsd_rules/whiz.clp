
(defrule whiz0
(declare (salience 5000))
(id-root ?id whiz)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sanasanAhata))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  whiz.clp 	whiz0   "  ?id "  sanasanAhata )" crlf))
)

;"whiz","N","1.sanasanAhata"
;We heard a whiz in the corridor.
;
(defrule whiz1
(declare (salience 4900))
(id-root ?id whiz)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sanasanA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  whiz.clp 	whiz1   "  ?id "  sanasanA )" crlf))
)

;"whiz","VT","1.sanasanAnA"
;The bee is whizzing around the flower.
;
