
(defrule write0
(declare (salience 5000))
(id-root ?id write)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id writing )
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id leKana))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  write.clp  	write0   "  ?id "  leKana )" crlf))
)

;"writing","N","1.leKana"
;Arun does a bit of writing during leisure hours.
;Pearl s.Buck is known for the elegance of her writing.
;
;
(defrule write1
(declare (salience 4900))
(id-root ?id write)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 off)
(kriyA-off_saMbanXI ?id ?) ;Automatically modified kriyA-upasarga to kriyA-prep_saMbanXI by Sukhada's program. 
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id batte_KAwe_meM_dAla));Automatically modified 'affecting_id-affected_ids-wsd_group_root_mng ?id ?id1' to 'id-wsd_root_mng ?id ' by Sukhada's program. 
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng  " ?*wsd_dir* " write.clp write1 " ?id "  batte_KAwe_meM_dAla )" crlf)) 
)

(defrule write2
(declare (salience 4800))
(id-root ?id write)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 off)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 batte_KAwe_meM_dAla))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " write.clp	write2  "  ?id "  " ?id1 "  batte_KAwe_meM_dAla  )" crlf))
)

(defrule write3
(declare (salience 4700))
(id-root ?id write)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 out)
(kriyA-out_saMbanXI ?id ?) ;Automatically modified kriyA-upasarga to kriyA-prep_saMbanXI by Sukhada's program. 
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pUrA-pUrA_liKa_dAla));Automatically modified 'affecting_id-affected_ids-wsd_group_root_mng ?id ?id1' to 'id-wsd_root_mng ?id ' by Sukhada's program. 
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng  " ?*wsd_dir* " write.clp write3 " ?id "  pUrA-pUrA_liKa_dAla )" crlf)) 
)

(defrule write4
(declare (salience 4600))
(id-root ?id write)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 out)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 pUrA-pUrA_liKa_dAla))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " write.clp	write4  "  ?id "  " ?id1 "  pUrA-pUrA_liKa_dAla  )" crlf))
)

(defrule write5
(declare (salience 4500))
(id-root ?id write)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 up)
(kriyA-up_saMbanXI ?id ?) ;Automatically modified kriyA-upasarga to kriyA-prep_saMbanXI by Sukhada's program. 
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pUrA_kara));Automatically modified 'affecting_id-affected_ids-wsd_group_root_mng ?id ?id1' to 'id-wsd_root_mng ?id ' by Sukhada's program. 
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng  " ?*wsd_dir* " write.clp write5 " ?id "  pUrA_kara )" crlf)) 
)

(defrule write6
(declare (salience 4400))
(id-root ?id write)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 up)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 pUrA_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " write.clp	write6  "  ?id "  " ?id1 "  pUrA_kara  )" crlf))
)

(defrule write7
(declare (salience 4300))
(id-root ?id write)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 off)
(kriyA-off_saMbanXI ?id ?) ;Automatically modified kriyA-upasarga to kriyA-prep_saMbanXI by Sukhada's program. 
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id batte_KAwe_meM_dAla));Automatically modified 'affecting_id-affected_ids-wsd_group_root_mng ?id ?id1' to 'id-wsd_root_mng ?id ' by Sukhada's program. 
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng  " ?*wsd_dir* " write.clp write7 " ?id "  batte_KAwe_meM_dAla )" crlf)) 
)

(defrule write8
(declare (salience 4200))
(id-root ?id write)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 off)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 batte_KAwe_meM_dAla))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " write.clp	write8  "  ?id "  " ?id1 "  batte_KAwe_meM_dAla  )" crlf))
)

(defrule write9
(declare (salience 4100))
(id-root ?id write)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id liKa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  write.clp 	write9   "  ?id "  liKa )" crlf))
)

;default_sense && category=verb	liKa	0
;"write","VT","1.liKanA"
;The child is learning to write early.
;--"2.racanA_karanA"
;Jane Austin wrote 'Pride && Prejudice'.
;
;


;@@@ Added by Pramila(BU) on 27-03-2014
;Please write back at your earliest.         ;shiksharthi
;कृपया जल्दी से जल्दी उत्तर दीजिए.
(defrule write10
(declare (salience 4200))
(id-root ?id write)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(id-word ?id1 back)
(kriyA-upasarga ?id ?id1)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 uwwara_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " write.clp	write10  "  ?id "  " ?id1 "  uwwara_xe  )" crlf))
)

;@@@ Added by Pramila(BU) on 27-03-2014
;I have written down everything.        ;shiksharthi
;मैंने सब कुछ लिख लिया है.
(defrule write11
(declare (salience 4200))
(id-root ?id write)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(id-word ?id1 down)
(kriyA-upasarga ?id ?id1)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 liKa_le))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " write.clp	write11  "  ?id "  " ?id1 "  liKa_le  )" crlf))
)


;@@@ Added by Pramila(BU) on 27-03-2014
;I wrote in all his suggestions.        ;shiksharthi
;मैंने उसके सारे सुझाव लिखकर रख लिए हैं.
(defrule write12
(declare (salience 4200))
(id-root ?id write)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(id-word ?id1 in)
(kriyA-upasarga ?id ?id1)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 liKakara_raKa_le))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " write.clp	write12  "  ?id "  " ?id1 "  liKakara_raKa_le  )" crlf))
)


;@@@ Added by Pramila(BU) on 27-03-2014
;Ask anything in written.   ;shiksharthi
;कोई चीज लिखित में माँगो.
(defrule write13
(declare (salience 4500))
(id-word ?id written)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id liKiwa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  write.clp 	write13   "  ?id "  liKiwa )" crlf))
)
