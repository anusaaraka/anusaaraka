
(defrule pinch0
(declare (salience 5000))
(id-root ?id pinch)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id cikotI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  pinch.clp 	pinch0   "  ?id "  cikotI )" crlf))
)

;"pinch","N","1.cikotI"
;Mala's one of the bad habit is giving a pinch to others.
;--"2.cutakI_Bara"
;Add a pinch of salt to this dish.
;
(defrule pinch1
(declare (salience 4900))
(id-root ?id pinch)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id cikotI_kAta))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  pinch.clp 	pinch1   "  ?id "  cikotI_kAta )" crlf))
)

;"pinch","V","1.cikotI_kAtanA"
;Ravi pinched the small babies soft cheeks.
;--"2.cAzpanA"
;The door pinched Ravi's finger as it shut.
;The new sandals pinched me.
;--"3.corI_karanA"
;Robbers pinched off Ravi's money.
;
