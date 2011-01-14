
(defrule view0
(declare (salience 5000))
(id-root ?id view)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 as)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 mAna))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " view.clp	view0  "  ?id "  " ?id1 "  mAna  )" crlf))
)

(defrule view01
(declare (salience 4900))
(id-root ?id view)
?mng <-(meaning_to_be_decided ?id)
(viSeRya-RaRTI_viSeRaNa  ?id ?id1)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id vicAra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  view.clp      view01   "  ?id "  vicAra )" crlf))
)




(defrule view1
;(declare (salience 4900))
(declare (salience 0))
(id-root ?id view)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id xqRtikoNa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  view.clp 	view1   "  ?id "  xqRtikoNa )" crlf))
)

(defrule view2
(declare (salience 4800))
(id-root ?id view)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id xqRti_dAla))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  view.clp 	view2   "  ?id "  xqRti_dAla )" crlf))
)

;"view","VT","1.xqRti_dAlanA"
;The problem should be viewed carefully
;--"2.xeKanA"
;The crowd is eagerly waiting to view the match
;--"3.nirIkRaNa_karanA[Gara_yA_jAyaxAxa"
;The house is open for viewing in the morning 
;
;
