
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

;$$$        --- Modified by Prachi Rathore
;Meaning changed from xqRti_dAla to xeKa
;She viewed him with suspicion.[oald]
;उसने शक के साथ उसको देखा . 
(defrule view2
(declare (salience 4800))
(id-root ?id view)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id xeKa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  view.clp 	view2   "  ?id "  xeKa )" crlf))
)

;;@@@   ---Added by Prachi Rathore
;Pointing at the view, Devyani asked, Grandpa, these mountains in front, do they have names? [gyannidhi]
;दृश्य की तरफ इशारा करते हुए,देवयानी ले पूछा, दादा, ये जो पर्वत दिख रहे हैं सामने, इनके भी तो नाम होंगें?
(defrule view3
(declare (salience 4900))
(id-root ?id view)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(or(kriyA-at_saMbanXI  ? ?id)(kriyA-into_saMbanXI  ? ?id))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id xqSya))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  view.clp 	view3   "  ?id "  xqSya )" crlf))
)

;;@@@   ---Added by Prachi Rathore
;The sun disappeared from view.[oald]
;दृश्य की तरफ इशारा करते हुए,देवयानी ले पूछा, दादा, ये जो पर्वत दिख रहे हैं सामने, इनके भी तो नाम होंगें?
(defrule view4
(declare (salience 4900))
(id-root ?id view)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(kriyA-from_saMbanXI  ?id1 ?id)
(id-root ?id1 disappear)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id xqSya))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  view.clp 	view4   "  ?id "  xqSya )" crlf))
)


;;@@@   ---Added by Prachi Rathore
;There were magnificent views of the surrounding countryside.[oald]
;चारों और के ग्रामीण क्षेत्र के भव्य दृश्य थे . 
(defrule view5
(declare (salience 4900))
(id-root ?id view)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(viSeRya-of_saMbanXI  ?id ?id1)
(id-root ?id1 ?str&:(and (not (numberp ?str))(gdbm_lookup_p "place.gdbm" ?str)))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id xqSya))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  view.clp 	view5   "  ?id "  xqSya )" crlf))
)

;;@@@   ---Added by Prachi Rathore[12-12-13]
;It was a magnificent view.[gyannidhi]
;सचमुच व‍ह बहुत भव्‍य दृश्‍य था।
(defrule view6
(declare (salience 4900))
(id-root ?id view)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(viSeRya-viSeRaNa  ?id ?id1)
(id-root ?id1 magnificent)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id xqSya))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  view.clp 	view6   "  ?id "  xqSya )" crlf))
)

;"view","VT","1.xqRti_dAlanA"
;The problem should be viewed carefully
;--"2.xeKanA"
;The crowd is eagerly waiting to view the match
;--"3.nirIkRaNa_karanA[Gara_yA_jAyaxAxa"
;The house is open for viewing in the morning 
;
;

;@@@ Added by Sukhada (12-05-14). Automatically generated this rule.
(defrule sub_samA_view6
(declare (salience 4900))
(id-root ?id view)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(subject-subject_samAnAXikaraNa ?id ?id1)
(id-root ?id1 magnificent)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id xqSya))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng " ?*wsd_dir* " view.clp   sub_samA_view6   "   ?id " xqSya )" crlf))
)

;@@@ Added by Sukhada (12-05-14). Automatically generated this rule.
(defrule obj_samA_view6
(declare (salience 4900))
(id-root ?id view)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(object-object_samAnAXikaraNa ?id ?id1)
(id-root ?id1 magnificent)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id xqSya))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng " ?*wsd_dir* " view.clp   obj_samA_view6   "   ?id " xqSya )" crlf))
)
