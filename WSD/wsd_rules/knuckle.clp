
(defrule knuckle0
(declare (salience 5000))
(id-root ?id knuckle)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 under)
(kriyA-under_saMbanXI ?id ?) ;Automatically modified kriyA-upasarga to kriyA-prep_saMbanXI by Sukhada's program. 
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id mAna_le));Automatically modified 'affecting_id-affected_ids-wsd_group_root_mng ?id ?id1' to 'id-wsd_root_mng ?id ' by Sukhada's program. 
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng  " ?*wsd_dir* " knuckle.clp knuckle0 " ?id "  mAna_le )" crlf)) 
)

;Did you really expect her to knuckle under everything?
;kyA wumheM sacamuca ummIxa WI ki vaha sabakuCa mAna legI?
(defrule knuckle1
(declare (salience 4900))
(id-root ?id knuckle)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 under)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 mAna_le))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " knuckle.clp	knuckle1  "  ?id "  " ?id1 "  mAna_le  )" crlf))
)

;Did you really expect her to knuckle under everything?
;kyA wumheM sacamuca ummIxa WI ki vaha sabakuCa mAna legI?
(defrule knuckle2
(declare (salience 4800))
(id-root ?id knuckle)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 under)
(kriyA-under_saMbanXI ?id ?) ;Automatically modified kriyA-upasarga to kriyA-prep_saMbanXI by Sukhada's program. 
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Juka));Automatically modified 'affecting_id-affected_ids-wsd_group_root_mng ?id ?id1' to 'id-wsd_root_mng ?id ' by Sukhada's program. 
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng  " ?*wsd_dir* " knuckle.clp knuckle2 " ?id "  Juka )" crlf)) 
)

(defrule knuckle3
(declare (salience 4700))
(id-root ?id knuckle)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 under)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 Juka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " knuckle.clp	knuckle3  "  ?id "  " ?id1 "  Juka  )" crlf))
)

(defrule knuckle4
(declare (salience 4600))
(id-root ?id knuckle)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id TunakA_mAra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  knuckle.clp 	knuckle4   "  ?id "  TunakA_mAra )" crlf))
)

;default_sense && category=verb	TunakA_mAranA/TunakA	0
;"knuckle","V","1.TunakA_mAranA/TunakAnA"
;He was hit hard on the knuckles by the duster.
;
;

;@@@ Added by Prachi Rathore[2-4-14]
;I'm going to have to knuckle down to some serious study.[oald]
;मैं  गम्भीर अध्ययन में जुट रहा हूँ . 
(defrule knuckle5
(declare (salience 4700))
(id-root ?id knuckle)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 down)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 juta))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " knuckle.clp	knuckle5  "  ?id "  " ?id1 "  juta )" crlf))
)


;@@@ Added by Prachi Rathore[2-4-14]
;To knuckle down to somebody.[gyannidhi]
;किसी के आगे  झुक जाना . 
(defrule knuckle6
(declare (salience 4800))
(id-root ?id knuckle)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 down)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
(kriyA-to_saMbanXI  ?id ?id2)
(id-root ?id2 ?str&:(and (not (numberp ?str))(gdbm_lookup_p "animate.gdbm" ?str)))
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 Juka_jA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " knuckle.clp	knuckle6  "  ?id "  " ?id1 "  Juka_jA )" crlf))
)

;@@@ Added by Prachi Rathore[2-4-14]
;She rapped her knuckles on the table. [m-w]
(defrule knuckle7
(declare (salience 400))
(id-root ?id knuckle)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id uzgalI_kI_gAzTa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  knuckle.clp 	knuckle7   "  ?id "  uzgalI_kI_gAzTa )" crlf))
)


;@@@ Added by Prachi Rathore[2-4-14]
;Knuckle of pork.[oald]
;
(defrule knuckle8
(declare (salience 4000))
(id-root ?id knuckle)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(viSeRya-of_saMbanXI ?id ?id1)
(id-root ?id1 pork)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id taKane_kA_goSwa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  knuckle.clp 	knuckle8   "  ?id "  taKane_kA_goSwa )" crlf))
)
