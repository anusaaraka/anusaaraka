
(defrule bowl0
(declare (salience 5000))
(id-root ?id bowl)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 over)
(kriyA-over_saMbanXI ?id ?) ;Automatically modified kriyA-upasarga to kriyA-prep_saMbanXI by Sukhada's program. 
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id girA_xe));Automatically modified 'affecting_id-affected_ids-wsd_group_root_mng ?id ?id1' to 'id-wsd_root_mng ?id ' by Sukhada's program. 
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng  " ?*wsd_dir* " bowl.clp bowl0 " ?id "  girA_xe )" crlf)) 
)

(defrule bowl1
(declare (salience 4900))
(id-root ?id bowl)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 over)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 girA_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " bowl.clp	bowl1  "  ?id "  " ?id1 "  girA_xe  )" crlf))
)


;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith)21-Feb-2014
;Soon we were bowling along the country roads.[oald]
;जल्द ही हम देश की सड़को पर तेज रफ्तार में चल रहे थे
(defrule bowl4
(declare (salience 4800))
(id-root ?id bowl)
?mng <-(meaning_to_be_decided ?id)
(kriyA-along_saMbanXI  ?id ?)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id weja_raPwAra_meM_cala))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  bowl.clp 	bowl4   "  ?id "  weja_raPwAra_meM_chala )" crlf))
)


;************************DEFAULT RULES*********************************

(defrule bowl2
(declare (salience 0));salience reduced by Garima Singh
(id-root ?id bowl)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id katorA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  bowl.clp 	bowl2   "  ?id "  katorA )" crlf))
)

;"bowl","N","1.katorA/pyAlA"
;I like mud colored ceramic bowls.
;
(defrule bowl3
(declare (salience 0));salience reduced by Garima Singh
(id-root ?id bowl)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id geMxa_PeMka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  bowl.clp 	bowl3   "  ?id "  geMxa_PeMka )" crlf))
)

;"bowl","VT","1.geMxa_PeMkanA"
;The bowler bowled an off spin.
;
