
(defrule perjure0
(declare (salience 5000))
(id-root ?id perjure)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id nyAyAlaya_meM_JUta_bolane_kI_prakriyA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  perjure.clp 	perjure0   "  ?id "  nyAyAlaya_meM_JUta_bolane_kI_prakriyA )" crlf))
)

;"perjure","N","1.nyAyAlaya_meM_JUta_bolane_kI_prakriyA"
;An action should be taken against perjury cases in a law court.
;
(defrule perjure1
(declare (salience 4900))
(id-root ?id perjure)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id nyAyAlaya_meM_JUta_bola))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  perjure.clp 	perjure1   "  ?id "  nyAyAlaya_meM_JUta_bola )" crlf))
)

;"perjure","V","1.nyAyAlaya_meM_JUta_bolanA"
;Many people are perjuring in law courts, habitually!.
;
