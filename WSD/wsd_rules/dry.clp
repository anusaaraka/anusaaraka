
(defrule dry0
(declare (salience 5000))
(id-root ?id dry)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 off)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 suKA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " dry.clp	dry0  "  ?id "  " ?id1 "  suKA  )" crlf))
)

;She was drying off her hair in the sun.
;vaha XUpa meM apane bAla suKA rahI WI
(defrule dry1
(declare (salience 4900))
(id-root ?id dry)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 out)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 pUrI_waraha_se_suKA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " dry.clp	dry1  "  ?id "  " ?id1 "  pUrI_waraha_se_suKA  )" crlf))
)

;Please dry you out with this towel otherwise you'll get cold.
;kqpyA isa wOlie se apane Apa ko pUrI waraha se suKA lo nahIM wo wumhe TaNda laga jAegI
(defrule dry2
(declare (salience 4800))
(id-root ?id dry)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 up)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 sUKa_jA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " dry.clp	dry2  "  ?id "  " ?id1 "  sUKa_jA  )" crlf))
)

;The pond dried up in the heat.
;wAlAba garmI ke kAraNa sUKa gayA
(defrule dry3
(declare (salience 4700))
(id-root ?id dry)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 up)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 BUla_jA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " dry.clp	dry3  "  ?id "  " ?id1 "  BUla_jA  )" crlf))
)

;She suddenly dried up during her speech.
;vaha BARaNa xewe samaya bolawe-bolawe BUla gaI
(defrule dry4
(declare (salience 4600))
(id-root ?id dry)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 up)
(kriyA-up_saMbanXI ?id ?) ;Automatically modified kriyA-upasarga to kriyA-prep_saMbanXI by Sukhada's program. 
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 sUKa_jA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " dry.clp	dry4  "  ?id "  " ?id1 "  sUKa_jA  )" crlf))
)

(defrule dry5
(declare (salience 4500))
(id-root ?id dry)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 up)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 sUKa_jA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " dry.clp	dry5  "  ?id "  " ?id1 "  sUKa_jA  )" crlf))
)

(defrule dry6
(declare (salience 4400))
(id-root ?id dry)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sUKa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  dry.clp 	dry6   "  ?id "  sUKa )" crlf))
)

;default_sense && category=verb	suKA	0
;"dry","VT","1.suKAnA"
;Dry the clothes outside
;
;
