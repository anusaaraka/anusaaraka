
(defrule contend0
(declare (salience 5000))
(id-root ?id contend)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 with)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 saMGarRa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " contend.clp	contend0  "  ?id "  " ?id1 "  saMGarRa_kara  )" crlf))
)

;Soldiers had to contend with heavy rain during the war.
;sipAhiyoM ko yuxXa ke xOrAna BArI varRA kA sAmanA karanA padZA
(defrule contend1
(declare (salience 4900))
(id-root ?id contend)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id vivAxa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  contend.clp 	contend1   "  ?id "  vivAxa_kara )" crlf))
)

;"contend","VT","1.vivAxa_karanA"
;He contended that Communism had no future.
;--"2.prawisparXA_meM_honA"  
;She is contending for the prize.
;
;
