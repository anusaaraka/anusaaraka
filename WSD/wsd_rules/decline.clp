
(defrule decline0
(declare (salience 5000))
(id-root ?id decline)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pawana))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  decline.clp 	decline0   "  ?id "  pawana )" crlf))
)

;"decline","N","1.pawana/kRaya"
;A decline was noticed in the sales of the engine.
;
(defrule decline1
(declare (salience 4900))
(id-root ?id decline)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id manA_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  decline.clp 	decline1   "  ?id "  manA_kara )" crlf))
)

;"decline","V","1.manA_karanA"
;He might decline to accept the offer.
;--"2.kRINa_ho_jAnA"
;She met with a big accident in the declining years of her life.
;
