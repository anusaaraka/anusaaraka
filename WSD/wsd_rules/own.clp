
(defrule own0
(declare (salience 5000))
(id-root ?id own)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 up)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 svIkAra_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " own.clp	own0  "  ?id "  " ?id1 "  svIkAra_kara  )" crlf))
)

;He owned up that he's broken the window.
;usane svIkAra kiyA ki KidZakI usane wodZI hE
(defrule own1
(declare (salience 4900))
(id-root ?id own)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id determiner)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id apanA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  own.clp 	own1   "  ?id "  apanA )" crlf))
)

;"own","Det","1.apanA"
;It is her own idea to start a school
;
(defrule own2
(declare (salience 4800))
(id-root ?id own)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id svAmI_ho))
(assert (kriyA_id-object_viBakwi ?id kA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  own.clp 	own2   "  ?id "  svAmI_ho )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-object_viBakwi   " ?*wsd_dir* "  own.clp       own2   "  ?id "  kA )" crlf)
)
)

;"own","VT","1.svAmI_honA"
;He owns a farm in Delhi
;
