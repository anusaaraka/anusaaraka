
(defrule sit0
(declare (salience 5000))
(id-root ?id sit)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id sitting )
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id bETaka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  sit.clp  	sit0   "  ?id "  bETaka )" crlf))
)

;"sitting","N","1.bETaka/upaveSana"
;Let the sitting be over && then, discuss this topic.
;
(defrule sit1
(declare (salience 4900))
(id-root ?id sit)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 down)
(kriyA-down_saMbanXI ?id ?) ;Automatically modified kriyA-upasarga to kriyA-prep_saMbanXI by Sukhada's program. 
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id bETa));Automatically modified 'affecting_id-affected_ids-wsd_group_root_mng ?id ?id1' to 'id-wsd_root_mng ?id ' by Sukhada's program. 
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng  " ?*wsd_dir* " sit.clp sit1 " ?id "  bETa )" crlf)) 
)

(defrule sit2
(declare (salience 4800))
(id-root ?id sit)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 down)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 bETa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " sit.clp	sit2  "  ?id "  " ?id1 "  bETa  )" crlf))
)

;@@@ Added by Shirisha Manju 2-05-14  --- Suggested by Chaitanya Sir
;He sat back and lit up a cigarette.   OALD
;vaha ArAma_se bETA Ora sigareta jalAI.
(defrule sit_back
(declare (salience 4800))
(id-root ?id sit)
?mng <-(meaning_to_be_decided ?id)
(kriyA-kriyA_viSeRaNa ?id ?id1)
(id-root ?id1 back)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 ArAma_se_bETa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " sit.clp  sit_back  "  ?id "  " ?id1 "  ArAma_se_bETa  )" crlf))
)



(defrule sit3
(declare (salience 4700))
(id-root ?id sit)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id sitting )
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id bETa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  sit.clp 	sit3   "  ?id "  bETa )" crlf))
)
; Modified wsd_word_mng bETA_huA  as wsd_root_mng  bETa  by manju


(defrule sit4
(declare (salience 4600))
(id-root ?id sit)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id bETa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  sit.clp 	sit4   "  ?id "  bETa )" crlf))
)

;default_sense && category=verb	bETa	0
;"sit","V","1.bETanA"
;He requested her to sit.
;Teacher made the students to sit quitely.
;
;
