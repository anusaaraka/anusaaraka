;She chimed in with a stupid remark in the conversation.
;usane bekAra tippaNI xekara bAwacIwa meM rUkAvata dAlI
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

;$$$  Modified by Preeti(14-5-14)
;"chime","N","1.JaMkAra"
(defrule chime1
;(declare (salience 4900));salience changed
(id-root ?id chime)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id JaMkAra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  chime.clp 	chime1   "  ?id "  JaMkAra )" crlf))
)

(defrule chime2
;(declare (salience 4800));salience changed
(id-root ?id chime)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id baja))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  chime.clp 	chime2   "  ?id "  baja )" crlf))
)

;@@@ Added by Preeti(14-5-14)
;His opinions chimed in with the mood of the nation. [Oxford Advanced Learner's Dictionary]
;usakI rAya rARtra kI manoxaSA - ke_anukUla hE.
(defrule chime3
(declare (salience 5000))
(id-root ?id chime)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-with_saMbanXI  ?id ?)
(id-root ?id1 with)
(id-root ?id2 in)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 ?id2 ke_anukUla_hE))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " chime.clp	chime3  "  ?id "  " ?id1 " " ?id2 " ke_anukUla_hE)" crlf))
)

;@@@ Added by Preeti(14-5-14)
;I could hear the chime of the clock fom the next room.
;mEM agale kamare se GadI kA GaMtI suna sakA.[hindi translation added]
(defrule chime4
(declare (salience 1000))
(id-root ?id chime)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(viSeRya-of_saMbanXI  ?id ?id1)
(id-root ?id1 clock)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id GaMtI));meaning changed
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  chime.clp 	chime4   "  ?id "  GaMtI )" crlf))
)


;"chime","V","1.JaMkAra_karanA"
;The clock chimes every quarter.
;
