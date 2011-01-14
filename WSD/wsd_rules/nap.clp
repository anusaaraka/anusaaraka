
(defrule nap0
(declare (salience 5000))
(id-root ?id nap)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id JapakI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  nap.clp 	nap0   "  ?id "  JapakI )" crlf))
)

;"nap","N","1.JapakI"
;I usually take a nap in the afternoon.
;I will come there after a nap.
;--"2.maKamala_ke_mahIna_XAge"
;The nap of the sofa cloth was withering.
;
(defrule nap1
(declare (salience 4900))
(id-root ?id nap)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id JapakI_le))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  nap.clp 	nap1   "  ?id "  JapakI_le )" crlf))
)

;"nap","VI","1.JapakI_lenA"
;He was napping in the bus.
;Let me nap for a while.
;
