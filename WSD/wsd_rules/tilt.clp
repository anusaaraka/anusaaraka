
(defrule tilt0
(declare (salience 5000))
(id-root ?id tilt)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 at)
(kriyA-at_saMbanXI ?id ?) ;Automatically modified kriyA-upasarga to kriyA-prep_saMbanXI by Sukhada's program. 
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kI_ora_Juka));Automatically modified 'affecting_id-affected_ids-wsd_group_root_mng ?id ?id1' to 'id-wsd_root_mng ?id ' by Sukhada's program. 
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng  " ?*wsd_dir* " tilt.clp tilt0 " ?id "  kI_ora_Juka )" crlf)) 
)

(defrule tilt1
(declare (salience 4900))
(id-root ?id tilt)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 at)
(kriyA-at_saMbanXI ?id ?) ;Automatically modified kriyA-upasarga to kriyA-prep_saMbanXI by Sukhada's program. 
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kI_ora_Juka));Automatically modified 'affecting_id-affected_ids-wsd_group_root_mng ?id ?id1' to 'id-wsd_root_mng ?id ' by Sukhada's program. 
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng  " ?*wsd_dir* " tilt.clp tilt1 " ?id "  kI_ora_Juka )" crlf)) 
)

(defrule tilt2
(declare (salience 4800))
(id-root ?id tilt)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 at)
(kriyA-at_saMbanXI ?id ?) ;Automatically modified kriyA-upasarga to kriyA-prep_saMbanXI by Sukhada's program. 
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kI_ora_Juka));Automatically modified 'affecting_id-affected_ids-wsd_group_root_mng ?id ?id1' to 'id-wsd_root_mng ?id ' by Sukhada's program. 
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng  " ?*wsd_dir* " tilt.clp tilt2 " ?id "  kI_ora_Juka )" crlf)) 
)

(defrule tilt3
(declare (salience 4700))
(id-root ?id tilt)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 at)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 kI_ora_Juka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " tilt.clp	tilt3  "  ?id "  " ?id1 "  kI_ora_Juka  )" crlf))
)

(defrule tilt4
(declare (salience 4600))
(id-root ?id tilt)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id JukA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  tilt.clp 	tilt4   "  ?id "  JukA )" crlf))
)

;default_sense && category=verb	JukanA[JukAnA]	0
;"tilt","VTI","1.JukanA[JukAnA]"
;He tilted the side mirror towards himself to have a better rear view.
;Votes have tilted in favour of the communists.
;
;

;@@@ Added by Prachi Rathore[6-2-14]
;The table is at a slight tilt.[oald]
;मेज थोडे से झुकाव पर है .  
(defrule tilt5
(declare (salience 4600))
(id-root ?id tilt)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id JukAva))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  tilt.clp 	tilt5   "  ?id "  JukAva )" crlf))
)
