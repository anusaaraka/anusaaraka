
(defrule film0
(declare (salience 5000))
(id-root ?id film)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 over)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 JillI_se_Daka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " film.clp	film0  "  ?id "  " ?id1 "  JillI_se_Daka  )" crlf))
)

(defrule film1
(declare (salience 4900))
(id-root ?id film)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 over)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 JillI_se_Daka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " film.clp	film1  "  ?id "  " ?id1 "  JillI_se_Daka  )" crlf))
)

(defrule film2
(declare (salience 4800))
(id-root ?id film)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 over)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 JillI_se_Daka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " film.clp	film2  "  ?id "  " ?id1 "  JillI_se_Daka  )" crlf))
)

(defrule film3
(declare (salience 4700))
(id-root ?id film)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 over)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 JillI_se_Daka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " film.clp	film3  "  ?id "  " ?id1 "  JillI_se_Daka  )" crlf))
)

(defrule film4
(declare (salience 4600))
(id-root ?id film)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id JillI_se_Daka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  film.clp 	film4   "  ?id "  JillI_se_Daka )" crlf))
)

(defrule film5
(declare (salience 4500))
(id-root ?id film)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sinemA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  film.clp 	film5   "  ?id "  sinemA )" crlf))
)

;"film","N","1.sinemA"
;The film now showing at the theater is very good.
;--"2.kEmare_kI_rIla"
;Have you changed the film in your camera.
;--"3.JillI"
;There is a film of oil on the water of this pond.
;
;