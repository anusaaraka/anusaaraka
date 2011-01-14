
(defrule egg0
(declare (salience 5000))
(id-root ?id egg)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 on)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 uwwejiwa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " egg.clp	egg0  "  ?id "  " ?id1 "  uwwejiwa_kara  )" crlf))
)

;He egged on his friend to drink(alcohal) in the party.
;usane apane miwra ko pArtI meM SarAba pIne ke lie ukasAyA
(defrule egg1
(declare (salience 4900))
(id-root ?id egg)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id aNdA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  egg.clp 	egg1   "  ?id "  aNdA )" crlf))
)

;"egg","N","1.aNdA"
;She takes an egg everyday.
;
;
