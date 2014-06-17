
(defrule urgent0
(declare (salience 5000))
(id-root ?id urgent)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id awyAvaSyaka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  urgent.clp 	urgent0   "  ?id "  awyAvaSyaka )" crlf))
)

(defrule urgent1
(declare (salience 4900))
(id-root ?id urgent)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id awyAvaSyaka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  urgent.clp 	urgent1   "  ?id "  awyAvaSyaka )" crlf))
)

;"urgent","Adj","1.awyAvaSyaka"
;An urgent telephone call came for her.
;
;

;@@@ Added by Prachi Rathore[24-2-14]
;The fossil fuels of the planet are dwindling fast and there is an urgent need to discover new and affordable sources of energy.[ncert]
;.हमारे ग्रह के जीवाश्मी ईन्धन त्वरित क्षीयमान हैं तथा नवीन एवं सस्ते ऊर्जा स्रोतों की खोज अत्यावश्यक है.".
(defrule urgent2
(declare (salience 5000))
(id-root ?id urgent)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
(viSeRya-viSeRaNa  ?id1 ?id)
(id-root ?id1 need)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 awyAvaSyaka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " urgent.clp 	urgent2   "  ?id "  " ?id1 "  awyAvaSyaka )" crlf))
)

;@@@ Added by Sukhada (12-05-14). Automatically generated this rule.
(defrule sub_samA_urgent2
(declare (salience 5000))
(id-root ?id urgent)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
(subject-subject_samAnAXikaraNa ?id1 ?id)
(id-root ?id1 need)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 awyAvaSyaka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng " ?*wsd_dir* " urgent.clp   sub_samA_urgent2   "   ?id " " ?id1 " awyAvaSyaka )" crlf))
)

;@@@ Added by Sukhada (12-05-14). Automatically generated this rule.
(defrule obj_samA_urgent2
(declare (salience 5000))
(id-root ?id urgent)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
(object-object_samAnAXikaraNa ?id1 ?id)
(id-root ?id1 need)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 awyAvaSyaka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng " ?*wsd_dir* " urgent.clp   obj_samA_urgent2   "   ?id " " ?id1 " awyAvaSyaka )" crlf))
)
