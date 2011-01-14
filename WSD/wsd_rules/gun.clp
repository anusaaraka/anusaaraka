
(defrule gun0
(declare (salience 5000))
(id-root ?id gun)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 for)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 AlocanA_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " gun.clp	gun0  "  ?id "  " ?id1 "  AlocanA_kara  )" crlf))
)

;He's been gunning for me all the time.
;vaha pUre samaya merI AlocanA karawA rahawA hE
(defrule gun1
(declare (salience 4900))
(id-root ?id gun)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id baMxUka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  gun.clp 	gun1   "  ?id "  baMxUka )" crlf))
)

;"gun","N","1.baMxUka"
;--"2.wopa"
;The Bofors gun had been very useful in this war.
;
