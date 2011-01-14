
(defrule clout0
(declare (salience 5000))
(id-root ?id clout)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id GUzsA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  clout.clp 	clout0   "  ?id "  GUzsA )" crlf))
)

;"clout","N","1.GUzsA"
;He gave a clout on his head.
;--"2.praBAva"
;He used political clout to get his work done.
;
(defrule clout1
(declare (salience 4900))
(id-root ?id clout)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id GUzsA_mAra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  clout.clp 	clout1   "  ?id "  GUzsA_mAra )" crlf))
)

;"clout","V","1.GUzsA_mAranA"
;The robbers clouted him before looting his shop.
;
