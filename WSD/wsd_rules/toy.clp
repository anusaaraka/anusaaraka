
(defrule toy0
(declare (salience 5000))
(id-root ?id toy)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 with)
(kriyA-with_saMbanXI ?id ?) ;Automatically modified kriyA-upasarga to kriyA-prep_saMbanXI by Sukhada's program. 
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id se_KilavAdZa_kara));Automatically modified 'affecting_id-affected_ids-wsd_group_root_mng ?id ?id1' to 'id-wsd_root_mng ?id ' by Sukhada's program. 
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng  " ?*wsd_dir* " toy.clp toy0 " ?id "  se_KilavAdZa_kara )" crlf)) 
)

(defrule toy1
(declare (salience 4900))
(id-root ?id toy)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 with)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 se_KilavAdZa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " toy.clp	toy1  "  ?id "  " ?id1 "  se_KilavAdZa_kara  )" crlf))
)

(defrule toy2
(declare (salience 4800))
(id-root ?id toy)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id banAvatI_vaswu))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  toy.clp 	toy2   "  ?id "  banAvatI_vaswu )" crlf))
)

;"toy","Adj","1.banAvatI_vaswu[Kelane_meM_prayoga_ho]"
;He plays with a toy gun.
;
(defrule toy3
(declare (salience 4700))
(id-root ?id toy)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id KilOnA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  toy.clp 	toy3   "  ?id "  KilOnA )" crlf))
)

;"toy","N","1.KilOnA"
;The child ia playing with a toy.
;--"2.manoraMjana_ke_lie"
;His latest toy is a computer.
;
(defrule toy4
(declare (salience 4600))
(id-root ?id toy)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id UparI_wOra_se_xilacaspI_le))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  toy.clp 	toy4   "  ?id "  UparI_wOra_se_xilacaspI_le )" crlf))
)

;"toy","V","1.UparI_wOra_se_xilacaspI_lenA"
;He has been toying with the idea of starting a new venture.
;--"2.tUzganA"
;She was toying with her chocolate.
;
