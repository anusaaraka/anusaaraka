
(defrule tin0
(declare (salience 5000))
(id-root ?id tin)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id tina))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  tin.clp 	tin0   "  ?id "  tina )" crlf))
)

;"tin","N","1.tina"
;They have used tin for the roof of their house.
;--"2.tIna_kI_cAxara_se_banA_koI_barwana"
;Open a tin of fruits.
;
(defrule tin1
(declare (salience 4900))
(id-root ?id tin)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id dibbe_meM_banXa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  tin.clp 	tin1   "  ?id "  dibbe_meM_banXa_kara )" crlf))
)

;"tin","VI","1.dibbe_meM_banXa_karanA"
;Fruit juices are tinned && exported.
;
