
(defrule nip0
(declare (salience 5000))
(id-root ?id nip)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id cikotI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  nip.clp 	nip0   "  ?id "  cikotI )" crlf))
)

;"nip","N","1.cikotI"
;He felt a sharp pinch in his leg.
;
(defrule nip1
(declare (salience 4900))
(id-root ?id nip)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id cikotI_kAta))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  nip.clp 	nip1   "  ?id "  cikotI_kAta )" crlf))
)

;"nip","VT","1.cikotI_kAtanA"
;She nipped me on the arm.
;--"2.nukasAna_pahuzcAnA"
;The frost nipped the young shoots.
;--"3.jalxI_karanA"
;The car nipped in ahead of me.
;
