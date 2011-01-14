
(defrule carp0
(declare (salience 5000))
(id-root ?id carp)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id wAlAba_kI_badZI_maCalI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  carp.clp 	carp0   "  ?id "  wAlAba_kI_badZI_maCalI )" crlf))
)

;"carp","N","1.wAlAba_kI_badZI_maCalI"
;Carps are edible fishes.
;
(defrule carp1
(declare (salience 4900))
(id-root ?id carp)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id CotI_wucCa_bAwoM_kI_SikAyawa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  carp.clp 	carp1   "  ?id "  CotI_wucCa_bAwoM_kI_SikAyawa_kara )" crlf))
)

;"carp","V","1.CotI_wucCa_bAwoM_kI_SikAyawa_karanA"
;My neighbour keeps carping about her family.
;
