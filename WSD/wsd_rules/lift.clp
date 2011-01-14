
(defrule lift0
(declare (salience 5000))
(id-root ?id lift)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 off)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 XarawI_se_Upara_uTa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " lift.clp	lift0  "  ?id "  " ?id1 "  XarawI_se_Upara_uTa  )" crlf))
)

;The plane has twenty seconds to lift off.
;havAIjahAja ko XarawI se Upara uTane meM bIsa sEkeMda hEM
(defrule lift1
(declare (salience 4900))
(id-root ?id lift)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id liPta))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  lift.clp 	lift1   "  ?id "  liPta )" crlf))
)

;"lift","N","1.liPta"
;There is no lift in his office.
;--"2.savArI_meM_le_jAne_kI_prakriyA"
;He will give me a lift.
;--"3.uwwolana"
;Upward lift of an aeroplane.
;--"4.unnayana"
;His advice gave me a tremendeous lift.
;
(defrule lift2
(declare (salience 4800))
(id-root ?id lift)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id uTA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  lift.clp 	lift2   "  ?id "  uTA )" crlf))
)

;"lift","V","1.uTAnA"
;Lift the child.
;--"2.AhlAxiwa_karanA"
;The appearance of the sun after four days of continuous rain lifted my spirits.
;--"3.hatanA"
;The fog has lifted.
;--"4.curAnA"
;Somebody lifted his car last night.
;--"5.uTA_xenA"
;The curfew has been lifted.
;--"6.savArI_meM_le_jAnA"
;He will lift me from my office.
;
