
(defrule hive0
(declare (salience 5000))
(id-root ?id hive)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 off)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " hive.clp	hive0  "  ?id "  " ?id1 "  xe  )" crlf))
)

;We can't meet the deadline in two days,so we'll have to hive off some work to others.
;hama xo xinoM meM yaha kAma pUrA nahIM kara sakawe awa: hameM kuCa kAma xUsaroM ko BI xenA hogA
(defrule hive1
(declare (salience 4900))
(id-root ?id hive)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id maXumakKiyoM_kA_CawwA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  hive.clp 	hive1   "  ?id "  maXumakKiyoM_kA_CawwA )" crlf))
)

;"hive","N","1.maXumakKiyoM kA CawwA"
;usane guNdoM ke saraxAra se xuSmanI karake'hive'(maXaXumakKiyoM ke Cawwe meM)hAWa dAlA hE.  
;
;