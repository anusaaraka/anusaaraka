
(defrule pay0
(declare (salience 5000))
(id-root ?id pay)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 back)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 sajZA_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " pay.clp	pay0  "  ?id "  " ?id1 "  sajZA_xe  )" crlf))
)

;I'll pay you back for this deed.
;mEM wumhArI isa karanI kI wumheM sajZA xUMgA
(defrule pay1
(declare (salience 4900))
(id-root ?id pay)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 off)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 acCe_pariNAma_lA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " pay.clp	pay1  "  ?id "  " ?id1 "  acCe_pariNAma_lA  )" crlf))
)

;Her hard work paid off
;usakI kadZI mehanawa acCe pariNAma lAI 
;SurUAwa_karanA_/aMwa_karanA	0
;The new method of teaching should phase in && the old one should phase out.
;SikRA ke nae warIkoM kI SurUAwa karanI cAhie waWA purAnoM kA aMwa
(defrule pay2
(declare (salience 4800))
(id-root ?id pay)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id paid )
(id-root =(- ?id 1) get)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id vewana))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  pay.clp 	pay2   "  ?id "  vewana )" crlf))
)

;He works to get paid.	-- Amba
(defrule pay3
(declare (salience 4700))
(id-root ?id pay)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 attention)
(kriyA-attention_saMbanXI ?id ?) ;Automatically modified kriyA-upasarga to kriyA-prep_saMbanXI by Sukhada's program. 
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 XyAna_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " pay.clp	pay3  "  ?id "  " ?id1 "  XyAna_xe  )" crlf))
)

(defrule pay4
(declare (salience 4600))
(id-root ?id pay)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 attention)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 XyAna_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " pay.clp	pay4  "  ?id "  " ?id1 "  XyAna_xe  )" crlf))
)

(defrule pay5
(declare (salience 4500))
(id-root ?id pay)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 fare)
(kriyA-fare_saMbanXI ?id ?) ;Automatically modified kriyA-upasarga to kriyA-prep_saMbanXI by Sukhada's program. 
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 kirAyA_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " pay.clp	pay5  "  ?id "  " ?id1 "  kirAyA_xe  )" crlf))
)

(defrule pay6
(declare (salience 4400))
(id-root ?id pay)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 fare)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 kirAyA_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " pay.clp	pay6  "  ?id "  " ?id1 "  kirAyA_xe  )" crlf))
)

(defrule pay7
(declare (salience 4300))
(id-root ?id pay)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 freight)
(kriyA-freight_saMbanXI ?id ?) ;Automatically modified kriyA-upasarga to kriyA-prep_saMbanXI by Sukhada's program. 
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 kirAyA_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " pay.clp	pay7  "  ?id "  " ?id1 "  kirAyA_xe  )" crlf))
)

(defrule pay8
(declare (salience 4200))
(id-root ?id pay)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 freight)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 kirAyA_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " pay.clp	pay8  "  ?id "  " ?id1 "  kirAyA_xe  )" crlf))
)

(defrule pay9
(declare (salience 4100))
(id-root ?id pay)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 hire)
(kriyA-hire_saMbanXI ?id ?) ;Automatically modified kriyA-upasarga to kriyA-prep_saMbanXI by Sukhada's program. 
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 kirAyA_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " pay.clp	pay9  "  ?id "  " ?id1 "  kirAyA_xe  )" crlf))
)

(defrule pay10
(declare (salience 4000))
(id-root ?id pay)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 hire)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 kirAyA_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " pay.clp	pay10  "  ?id "  " ?id1 "  kirAyA_xe  )" crlf))
)

(defrule pay11
(declare (salience 3900))
(id-root ?id pay)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 out)
(kriyA-out_saMbanXI ?id ?) ;Automatically modified kriyA-upasarga to kriyA-prep_saMbanXI by Sukhada's program. 
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 xaNda_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " pay.clp	pay11  "  ?id "  " ?id1 "  xaNda_xe  )" crlf))
)

(defrule pay12
(declare (salience 3800))
(id-root ?id pay)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 out)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 xaNda_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " pay.clp	pay12  "  ?id "  " ?id1 "  xaNda_xe  )" crlf))
)

(defrule pay13
(declare (salience 3700))
(id-root ?id pay)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 rent)
(kriyA-rent_saMbanXI ?id ?) ;Automatically modified kriyA-upasarga to kriyA-prep_saMbanXI by Sukhada's program. 
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 kirAyA_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " pay.clp	pay13  "  ?id "  " ?id1 "  kirAyA_xe  )" crlf))
)

(defrule pay14
(declare (salience 3600))
(id-root ?id pay)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 rent)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 kirAyA_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " pay.clp	pay14  "  ?id "  " ?id1 "  kirAyA_xe  )" crlf))
)

(defrule pay15
(declare (salience 3500))
(id-root ?id pay)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id vewana))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  pay.clp 	pay15   "  ?id "  vewana )" crlf))
)

(defrule pay16
(declare (salience 3400))
(id-root ?id pay)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 attention)
(kriyA-object ?id ?id1)
;(id-cat_coarse ?id verb) this and the above line are automatically modified using a program by Sukhada
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  pay.clp 	pay16   "  ?id "  xe )" crlf))
)

(defrule pay17
(declare (salience 3300))
(id-root ?id pay)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id cukA))
(assert (kriyA_id-object_viBakwi ?id ko))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  pay.clp 	pay17   "  ?id "  cukA )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-object_viBakwi   " ?*wsd_dir* "  pay.clp       pay17   "  ?id " ko )" crlf)
)
)

;default_sense && category=verb	pEsA_cukA	0
;"pay","VTI","1.pEsA_cukAnA"
;They always pay their rent on time.
;--"2.sajA_pAnA"
;He will pay for all his evil deeds.
;--"3.lABakara_honA"
;It pays to be honest with the taxman.
;
;
