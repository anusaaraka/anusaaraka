
(defrule chance0
(declare (salience 5000))
(id-root ?id chance)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 on)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 acAnaka_mila_jA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " chance.clp	chance0  "  ?id "  " ?id1 "  acAnaka_mila_jA  )" crlf))
)

;She had chanced on an old teacher of hers in a shop.
;vaha eka xukAna para apane tIcara se acAnaka mila gayI WI
(defrule chance1
(declare (salience 4900))
(id-root ?id chance)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id avasara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  chance.clp 	chance1   "  ?id "  avasara )" crlf))
)

(defrule chance2
(declare (salience 4800))
(id-root ?id chance)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id saMyoga_bana))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  chance.clp 	chance2   "  ?id "  saMyoga_bana )" crlf))
)

;default_sense && category=verb	saMyogavaSa_ho_jA	0
;"chance","V","1.saMyogavaSa_ho_jAnA" Changed by VC
;I chanced to meet my old friend in the city. 
;
;
