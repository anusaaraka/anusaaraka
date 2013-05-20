
(defrule bear0
(declare (salience 5000))
(id-root ?id bear)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id born )
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id janma))
(assert (id-H_vib_mng ?id yA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng  " ?*wsd_dir* "  bear.clp  	bear0   "  ?id "  janma )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-id-H_vib_mng  " ?*wsd_dir* "  bear.clp       bear0   "  ?id " yA )" crlf))
)

(defrule bear1
(declare (salience 4900))
(id-root ?id bear)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 out)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 sahayoga_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " bear.clp	bear1  "  ?id "  " ?id1 "  sahayoga_xe  )" crlf))
)

;If you put in an action against him,i will bear you out.
;yaxi wuma usake virUxXa kAryavAhI karoge wo mEM BI wumhe sahayoga xUzgA
(defrule bear2
(declare (salience 4800))
(id-root ?id bear)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 down)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 baraxASwa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " bear.clp	bear2  "  ?id "  " ?id1 "  baraxASwa_kara  )" crlf))
)

(defrule bear3
(declare (salience 4700))
(id-root ?id bear)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 down)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 baraxASwa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " bear.clp	bear3  "  ?id "  " ?id1 "  baraxASwa_kara  )" crlf))
)

(defrule bear4
(declare (salience 4600))
(id-root ?id bear)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 on)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 sambanXa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " bear.clp	bear4  "  ?id "  " ?id1 "  sambanXa_kara  )" crlf))
)

(defrule bear5
(declare (salience 4500))
(id-root ?id bear)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 on)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 sambanXa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " bear.clp	bear5  "  ?id "  " ?id1 "  sambanXa_kara  )" crlf))
)

(defrule bear6
(declare (salience 4400))
(id-root ?id bear)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 out)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 sAbiwa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " bear.clp	bear6  "  ?id "  " ?id1 "  sAbiwa_kara  )" crlf))
)

(defrule bear7
(declare (salience 4300))
(id-root ?id bear)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 out)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 sAbiwa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " bear.clp	bear7  "  ?id "  " ?id1 "  sAbiwa_kara  )" crlf))
)

(defrule bear8
(declare (salience 4200))
(id-root ?id bear)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 up)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 sAhasa_raKa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " bear.clp	bear8  "  ?id "  " ?id1 "  sAhasa_raKa  )" crlf))
)

(defrule bear9
(declare (salience 4100))
(id-root ?id bear)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 up)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 sAhasa_raKa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " bear.clp	bear9  "  ?id "  " ?id1 "  sAhasa_raKa  )" crlf))
)

(defrule bear10
(declare (salience 4000))
(id-root ?id bear)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 with)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 sahana_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " bear.clp	bear10  "  ?id "  " ?id1 "  sahana_kara  )" crlf))
)

(defrule bear11
(declare (salience 3900))
(id-root ?id bear)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 with)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 sahana_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " bear.clp	bear11  "  ?id "  " ?id1 "  sahana_kara  )" crlf))
)

(defrule bear12
(declare (salience 3800))
(id-root ?id bear)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id BAlU))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  bear.clp 	bear12   "  ?id "  BAlU )" crlf))
)

;passive_-_- && category=verb	janma_le	0
(defrule bear13
(declare (salience 3700))
(id-root ?id bear)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id janma))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  bear.clp 	bear13   "  ?id "  janma )" crlf))
)

;He was born: janmA_WA && not janma_liyA_WA
(defrule bear14
(declare (salience 3600))
(id-root ?id bear)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id XAraNa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  bear.clp 	bear14   "  ?id "  XAraNa_kara )" crlf))
)

;"bear","VT","1.XAraNa karanA"
;She bears the title of Duchess.
;--"2.barxASwa_karanA"
;I cannot bear his constant criticism.
;--"3.vahana_karanA"
;She is bearing his child.
;
;
;LEVEL 
;Headword : bear
;
;Examples --
;
;"bear","N","1.BAlU"
;I saw a bear in the zoo.
;mEMne cidZiyAGara meM eka BAlU xeKA.
;
;"bear","VT","1.XAraNa karanA"
;She bears the title of Duchess.
;vaha 'dacesa' kA KiwAba XAraNa kiye hue hE. <---apane Upara lenA <-- vahana karanA
;--"2.JelanA"
;I cannot bear his constant criticism.
;mEM lagAwAra honevAlI AlocanaWawawa Jela nahIM sakawI. <--apane BIwara vahana karanA
;--"3.vahana_karanA"
;Ram bore the expenses of his brother's daughter.
;apane BAI kI betI kI SAxI ke Karca kA BAra rAma ne vahana kiyA.
;--"4.janma_xenA"
;Sita bore hari three daughters.
;sIwA ne hari ko wIna betiyAz janIM. <--baccoM ko apane anxara vahana kara janma xenA
;
;sUwra : BAlU/janana^JelanA`
;
