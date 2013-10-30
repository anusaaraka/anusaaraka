
(defrule stitch0
(declare (salience 5000))
(id-root ?id stitch)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 up)
(kriyA-up_saMbanXI ?id ?) ;Automatically modified kriyA-upasarga to kriyA-prep_saMbanXI by Sukhada's program. 
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 XoKA_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " stitch.clp	stitch0  "  ?id "  " ?id1 "  XoKA_xe  )" crlf))
)

(defrule stitch1
(declare (salience 4900))
(id-root ?id stitch)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 up)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 XoKA_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " stitch.clp	stitch1  "  ?id "  " ?id1 "  XoKA_xe  )" crlf))
)

(defrule stitch2
(declare (salience 4800))
(id-root ?id stitch)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  stitch.clp 	stitch2   "  ?id "  sI )" crlf))
)

;default_sense && category=verb	sI	0
;"stitch","V","1.sInA"
;My mother stitched a beautiful dress for me.
;
;