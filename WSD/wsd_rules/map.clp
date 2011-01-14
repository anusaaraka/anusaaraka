
(defrule map0
(declare (salience 5000))
(id-root ?id map)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 out)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 yojanA_banA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " map.clp	map0  "  ?id "  " ?id1 "  yojanA_banA  )" crlf))
)

;Now it's high time to map out your future.
;
(defrule map1
(declare (salience 4900))
(id-root ?id map)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id mAnaciwra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  map.clp 	map1   "  ?id "  mAnaciwra )" crlf))
)

;"map","N","1.mAnaciwra"
;A map of Indian sub-continent.
;
(defrule map2
(declare (salience 4800))
(id-root ?id map)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id yojanA_banA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  map.clp 	map2   "  ?id "  yojanA_banA )" crlf))
)

;"map","V","1.yojanA_banAnA"
;She mapped out her ideas for the new project.
;
