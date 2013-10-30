
(defrule float0
(declare (salience 5000))
(id-root ?id float)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id floating )
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id asWira))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  float.clp  	float0   "  ?id "  asWira )" crlf))
)

;"floating","Adj","1.asWira"
;he has only a floating interest in that girl.
;
;
(defrule float1
(declare (salience 4900))
(id-root ?id float)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 about)
(kriyA-about_saMbanXI ?id ?) ;Automatically modified kriyA-upasarga to kriyA-prep_saMbanXI by Sukhada's program. 
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 PElA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " float.clp	float1  "  ?id "  " ?id1 "  PElA  )" crlf))
)

(defrule float2
(declare (salience 4800))
(id-root ?id float)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 about)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 PElA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " float.clp	float2  "  ?id "  " ?id1 "  PElA  )" crlf))
)

(defrule float3
(declare (salience 4700))
(id-root ?id float)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 around)
(kriyA-around_saMbanXI ?id ?) ;Automatically modified kriyA-upasarga to kriyA-prep_saMbanXI by Sukhada's program. 
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 PElA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " float.clp	float3  "  ?id "  " ?id1 "  PElA  )" crlf))
)

(defrule float4
(declare (salience 4600))
(id-root ?id float)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 around)
(kriyA-around_saMbanXI ?id ?) ;Automatically modified kriyA-upasarga to kriyA-prep_saMbanXI by Sukhada's program. 
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 PElA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " float.clp	float4  "  ?id "  " ?id1 "  PElA  )" crlf))
)

(defrule float5
(declare (salience 4500))
(id-root ?id float)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 around)
(kriyA-around_saMbanXI ?id ?) ;Automatically modified kriyA-upasarga to kriyA-prep_saMbanXI by Sukhada's program. 
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 PElA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " float.clp	float5  "  ?id "  " ?id1 "  PElA  )" crlf))
)

(defrule float6
(declare (salience 4400))
(id-root ?id float)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 around)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 PElA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " float.clp	float6  "  ?id "  " ?id1 "  PElA  )" crlf))
)

(defrule float7
(declare (salience 4300))
(id-root ?id float)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id baha))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  float.clp 	float7   "  ?id "  baha )" crlf))
)

(defrule float8
(declare (salience 4200))
(id-root ?id float)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id wErane_vAlA_paxArWa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  float.clp 	float8   "  ?id "  wErane_vAlA_paxArWa )" crlf))
)

;"float","N","1.wErane vAlA paxArWa"
;Do not forget to attach a float to the fishing line to prevent its sinking.
;--"2.JAzkI"
;There were many interesting floats in the Republic Day parade.
;--"3.rejZagArI"
;Bus conducters do not keep float with them to avoid giving change to passengers.
;
;
