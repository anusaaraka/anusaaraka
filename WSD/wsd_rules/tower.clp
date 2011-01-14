
(defrule tower0
(declare (salience 5000))
(id-root ?id tower)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 above)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 aXika_UzcA_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " tower.clp	tower0  "  ?id "  " ?id1 "  aXika_UzcA_ho  )" crlf))
)

(defrule tower1
(declare (salience 4900))
(id-root ?id tower)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 above)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 aXika_UzcA_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " tower.clp	tower1  "  ?id "  " ?id1 "  aXika_UzcA_ho  )" crlf))
)

(defrule tower2
(declare (salience 4800))
(id-root ?id tower)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id uzcA_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  tower.clp 	tower2   "  ?id "  uzcA_ho )" crlf))
)

;default_sense && category=verb	UzcA_ho	0
;"tower","V","1.UzcA_honA"
;The building towered over the small houses in the area.
;
;