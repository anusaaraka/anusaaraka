
(defrule steam0
(declare (salience 5000))
(id-root ?id steam)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 off)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 BApa_se_nikAlaxe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " steam.clp	steam0  "  ?id "  " ?id1 "  BApa_se_nikAlaxe  )" crlf))
)

(defrule steam1
(declare (salience 4900))
(id-root ?id steam)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 off)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 BApa_se_nikAlaxe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " steam.clp	steam1  "  ?id "  " ?id1 "  BApa_se_nikAlaxe  )" crlf))
)

(defrule steam2
(declare (salience 4800))
(id-root ?id steam)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id BApa_se_nikAla_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  steam.clp 	steam2   "  ?id "  BApa_se_nikAla_xe )" crlf))
)

(defrule steam3
(declare (salience 4700))
(id-root ?id steam)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id BApa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  steam.clp 	steam3   "  ?id "  BApa )" crlf))
)

;"steam","N","1.BApa"
;Steam inhalation cures cold.
;
;