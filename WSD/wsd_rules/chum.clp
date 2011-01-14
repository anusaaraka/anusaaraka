
(defrule chum0
(declare (salience 5000))
(id-root ?id chum)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 up)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 xoswI_karanA_yA_xoswa_banA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " chum.clp	chum0  "  ?id "  " ?id1 "  xoswI_karanA_yA_xoswa_banA  )" crlf))
)

;Mohan chummed up with Rakesh && they often walked to school together.
;mohana ne rAkeSa se xoswI kI Ora ve xonoM ikatTe skUla jAwe We
(defrule chum1
(declare (salience 4900))
(id-root ?id chum)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sAWI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  chum.clp 	chum1   "  ?id "  sAWI )" crlf))
)

;"chum","N","1.sAWI"
;I met my school chum in the railway station.
;
;