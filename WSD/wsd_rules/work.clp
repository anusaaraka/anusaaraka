
(defrule work0
(declare (salience 5000))
(id-root ?id work)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 hard)
(kriyA-hard_saMbanXI ?id ?) ;Automatically modified kriyA-upasarga to kriyA-prep_saMbanXI by Sukhada's program. 
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 kadZI_mehanawa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " work.clp	work0  "  ?id "  " ?id1 "  kadZI_mehanawa_kara  )" crlf))
)

(defrule work1
(declare (salience 4900))
(id-root ?id work)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 hard)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 kadZI_mehanawa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " work.clp	work1  "  ?id "  " ?id1 "  kadZI_mehanawa_kara  )" crlf))
)

;added by human being
(defrule work2
(declare (salience 4800))
(id-root ?id work)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 hard)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pariSrama_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  work.clp 	work2   "  ?id "  pariSrama_kara )" crlf))
)

; He was working hard.
(defrule work3
(declare (salience 4700))
(id-root ?id work)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kAma_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  work.clp 	work3   "  ?id "  kAma_kara )" crlf))
)

(defrule work4
(declare (salience 4600))
(id-root ?id work)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kArya))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  work.clp 	work4   "  ?id "  kArya )" crlf))
)

;default_sense && category=verb	kAma_kara	0
;"work","VT","1.kAma_karanA"
;The labourer worked in the quarry.
;
;

(defrule work5
(declare (salience 4600))
(id-root ?id work)
?mng <-(meaning_to_be_decided ?id)
;(kriyA-kqxanwa_object ? ?id)
(id-cat_coarse ?id verbal_noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kAma_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  work.clp    work5   "  ?id "  kAma_kara )" crlf))
)
; I have started working  ----  Added by manju

