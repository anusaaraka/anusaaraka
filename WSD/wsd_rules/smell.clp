
(defrule smell0
(declare (salience 5000))
(id-root ?id smell)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 out)
(kriyA-out_saMbanXI ?id ?) ;Automatically modified kriyA-upasarga to kriyA-prep_saMbanXI by Sukhada's program. 
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kA_pawA_lagA));Automatically modified 'affecting_id-affected_ids-wsd_group_root_mng ?id ?id1' to 'id-wsd_root_mng ?id ' by Sukhada's program. 
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng  " ?*wsd_dir* " smell.clp smell0 " ?id "  kA_pawA_lagA )" crlf)) 
)

(defrule smell1
(declare (salience 4900))
(id-root ?id smell)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 out)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 kA_pawA_lagA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " smell.clp	smell1  "  ?id "  " ?id1 "  kA_pawA_lagA  )" crlf))
)
;@@@ Added by jagriti(15.3.2014)
;He smelt the accident and jumped out from the running train.[rajpal]
;उसने दुर्घटना भांप ली और चलती रेलगाडी से बाहर कूद पडा . 
(defrule smell4
(declare (salience 4800))
(id-root ?id smell)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(id-root ?id1 accident|danger)
(kriyA-object ?id ?id1)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id BAMpa_le))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  smell.clp 	smell4   "  ?id "  BAMpa_le )" crlf))
)


;...Default rule....
(defrule smell2
(declare (salience 100))
(id-root ?id smell)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sUzGa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  smell.clp 	smell2   "  ?id "  sUzGa )" crlf))
)

(defrule smell3
(declare (salience 100))
(id-root ?id smell)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ganXa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  smell.clp 	smell3   "  ?id "  ganXa )" crlf))
)

;"smell","N","1.ganXa"
;Rose's smell is captivating.
;
;
