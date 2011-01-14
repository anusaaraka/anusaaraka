
(defrule bend0
(declare (salience 5000))
(id-root ?id bend)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 down)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 nIce_Juka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " bend.clp	bend0  "  ?id "  " ?id1 "  nIce_Juka  )" crlf))
)

(defrule bend1
(declare (salience 4900))
(id-root ?id bend)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 down)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 nIce_Juka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " bend.clp	bend1  "  ?id "  " ?id1 "  nIce_Juka  )" crlf))
)

(defrule bend2
(declare (salience 4800))
(id-root ?id bend)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id GumAva))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  bend.clp 	bend2   "  ?id "  GumAva )" crlf))
)

;"bend","N","1.GumAva"
;There is a bend in the road.
;
(defrule bend3
(declare (salience 4700))
(id-root ?id bend)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id mudZa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  bend.clp 	bend3   "  ?id "  mudZa )" crlf))
)

;"bend","V","1.mudZa"
(defrule bend4
(declare (salience 4600))
(id-root ?id bend)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id moda))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  bend.clp 	bend4   "  ?id "  moda )" crlf))
)

;"bend","VTI","1.modanA[mudZanA]"
;It is very difficult to bend an iron rod.
;
