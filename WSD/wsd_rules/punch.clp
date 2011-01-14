
(defrule punch0
(declare (salience 5000))
(id-root ?id punch)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id mukkA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  punch.clp 	punch0   "  ?id "  mukkA )" crlf))
)

;"punch","N","1.mukkA"
;His friend gave him a hard punch on his face.
;
(defrule punch1
(declare (salience 4900))
(id-root ?id punch)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Cexa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  punch.clp 	punch1   "  ?id "  Cexa )" crlf))
)

;"punch","V","1.CexanA"
;He punched his papers with a punching machine.
;--,"1.mukkA_mAranA"
;The boxer was repeatedly kicked && punched.
;--"2.rocaka_aMSa"
;The story told by the little boy was full of punches.
;
