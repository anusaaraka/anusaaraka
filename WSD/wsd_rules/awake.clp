
(defrule awake0
(declare (salience 5000))
(id-root ?id awake)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id jaga))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  awake.clp 	awake0   "  ?id "  jaga )" crlf))
)

(defrule awake1
(declare (salience 4900))
(id-root ?id awake)
?mng <-(meaning_to_be_decided ?id)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id jagA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  awake.clp 	awake1   "  ?id "  jagA )" crlf))
)

(defrule awake2
(declare (salience 4800))
(id-root ?id awake)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id jagA_huA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  awake.clp 	awake2   "  ?id "  jagA_huA )" crlf))
)

(defrule awake3
(declare (salience 4700))
(id-root ?id awake)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 to)
(kriyA-to_saMbanXI ?id ?) ;Automatically modified kriyA-upasarga to kriyA-prep_saMbanXI by Sukhada's program. 
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 jAgarUka_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " awake.clp	awake3  "  ?id "  " ?id1 "  jAgarUka_ho  )" crlf))
)

(defrule awake4
(declare (salience 4600))
(id-root ?id awake)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 to)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 jAgarUka_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " awake.clp	awake4  "  ?id "  " ?id1 "  jAgarUka_ho  )" crlf))
)

(defrule awake5
(declare (salience 4500))
(id-root ?id awake)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id jagA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  awake.clp 	awake5   "  ?id "  jagA )" crlf))
)

(defrule awake6
(declare (salience 4400))
(id-root ?id awake)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id jAge_hue))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  awake.clp 	awake6   "  ?id "  jAge_hue )" crlf))
)

;"awake","Adj","1.jAge_hue"
;The children were wide awake.
;bacce pUrI waraha se jage hue We.
;
;
