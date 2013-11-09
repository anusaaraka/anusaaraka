
(defrule tread0
(declare (salience 5000))
(id-root ?id tread)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 on)
(kriyA-on_saMbanXI ?id ?) ;Automatically modified kriyA-upasarga to kriyA-prep_saMbanXI by Sukhada's program. 
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id nArAja_kara));Automatically modified 'affecting_id-affected_ids-wsd_group_root_mng ?id ?id1' to 'id-wsd_root_mng ?id ' by Sukhada's program. 
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng  " ?*wsd_dir* " tread.clp tread0 " ?id "  nArAja_kara )" crlf)) 
)

(defrule tread1
(declare (salience 4900))
(id-root ?id tread)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 on)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 nArAja_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " tread.clp	tread1  "  ?id "  " ?id1 "  nArAja_kara  )" crlf))
)

(defrule tread2
(declare (salience 4800))
(id-root ?id tread)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id para_cala))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  tread.clp 	tread2   "  ?id "  para_cala )" crlf))
)

(defrule tread3
(declare (salience 4700))
(id-root ?id tread)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id calane_kA_DaMga))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  tread.clp 	tread3   "  ?id "  calane_kA_DaMga )" crlf))
)

;"tread","N","1.calane_kA_DaMga"
;He walks with a heavy tread.
;--"2.sIDI_kA_UparI_BAga"
;Jim fell from the tread.
;--"3.tAyara_ke_Upara_kA hissA"
;The tyres have no treads.
;
;