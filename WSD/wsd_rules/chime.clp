
(defrule chime0
(declare (salience 5000))
(id-root ?id chime)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 in)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 rukAvata_dAla))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " chime.clp	chime0  "  ?id "  " ?id1 "  rukAvata_dAla  )" crlf))
)

;She chimed in with a stupid remark in the conversation.
;usane bekAra tippaNI xekara bAwacIwa meM rUkAvata dAlI
(defrule chime1
(declare (salience 4900))
(id-root ?id chime)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id JaMkAra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  chime.clp 	chime1   "  ?id "  JaMkAra )" crlf))
)

;"chime","N","1.JaMkAra"
;I could hear the chime of the clock fom the next room.
;
(defrule chime2
(declare (salience 4800))
(id-root ?id chime)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id JaMkAra_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  chime.clp 	chime2   "  ?id "  JaMkAra_kara )" crlf))
)

;"chime","V","1.JaMkAra_karanA"
;The clock chimes every quarter.
;
