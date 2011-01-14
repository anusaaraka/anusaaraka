
(defrule shit0
(declare (salience 5000))
(id-root ?id shit)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id mala))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  shit.clp 	shit0   "  ?id "  mala )" crlf))
)

;"shit","N","1.mala"
;The mischevous cat's shit is in the backyard.
;--"2.2"
;--"3.bakavAsa"
;You do talk a load of shit!
;--"4.apriya_vyakwi"
;He's an arrogant little shit.
;
(defrule shit1
(declare (salience 4900))
(id-root ?id shit)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id mala))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  shit.clp 	shit1   "  ?id "  mala )" crlf))
)

;"shit","V","1.mala"
;Many astrologers do talk a lot of shit.
;
