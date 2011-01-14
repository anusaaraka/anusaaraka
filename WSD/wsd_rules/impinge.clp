
(defrule impinge0
(declare (salience 5000))
(id-root ?id impinge)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 on)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 praBAva_dAla))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " impinge.clp	impinge0  "  ?id "  " ?id1 "  praBAva_dAla  )" crlf))
)

;The riots in the city impinged on the daily lives of ordinary people.
;Sahara meM hue xaMge sAXAraNa janawA ke xEnika jIvana para praBAva dAlawe hEM
(defrule impinge1
(declare (salience 4900))
(id-root ?id impinge)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id takarA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  impinge.clp 	impinge1   "  ?id "  takarA )" crlf))
)

;"impinge","V","1.takarAnA"
;The workers have impinged against the factory owner.
;
;