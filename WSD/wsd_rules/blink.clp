
;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith) 7/03/2014
;She bravely blinked back her tears.[oald]
;उसने हिम्मत रखकर उसकी आँखों में आँसू आने से रोके
(defrule blink3
(declare (salience 3000))
(id-root ?id blink)
?mng <-(meaning_to_be_decided ?id)
(kriyA-object  ?id ?id1)
(kriyA-upasarga  ?id ?id2)
(id-word ?id2 back)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id2 AKoM_meM_Ane_se_roka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " blink.clp 	blink3  "  ?id "  " ?id2 "  AKoM_meM_Ane_se_roka )" crlf))
)

;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith) 7/03/2014
;Suddenly a warning light blinked.[oald]
;अचानक एक चेतावनी की रोशनी टिमटिमायी.
(defrule blink4
(declare (salience 3000))
(id-root ?id blink)
?mng <-(meaning_to_be_decided ?id)
(kriyA-subject  ?id ?id1)
(id-word ?id1 light)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id timatimA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  blink.clp 	blink4  "  ?id "  timatimA )" crlf))
)

;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith) 7/03/2014
;When I told him the news he didn't even blink.[oald]
;जब मैंने उसे खबर दी वह जरा भी आश्चर्यचकित नहीं हुआ
(defrule blink5
(declare (salience 3000))
(id-root ?id blink)
?mng <-(meaning_to_be_decided ?id)
(kriyA-kriyA_niReXaka  ?id ?id1)
(id-word ?id1 not)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id AScryacakiwa_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  blink.clp 	blink5  "  ?id "  AScryacakiwa_ho )" crlf))
)

;****************************DEFAULT RULES**********************

(defrule blink0
(declare (salience 0));salience reduced by Garima Singh
(id-root ?id blink)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id timatimAhata))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  blink.clp 	blink0   "  ?id "  timatimAhata )" crlf))
)

;"blink","N","1.timatimAhata/jagamagAhata/Jalaka/Japaka"
(defrule blink1
(declare (salience 0));salience reduced by Garima Singh
(id-root ?id blink)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Japaka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  blink.clp 	blink1   "  ?id "  Japaka )" crlf))
)

;"blink","V","1.Japaka"
(defrule blink2
(declare (salience 0));salience reduced by Garima Singh
(id-root ?id blink)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id AzKa_JapakA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  blink.clp 	blink2   "  ?id "  AzKa_JapakA )" crlf))
)

;"blink","VT","1.AzKa_JapakAnA"
;The TV announcer never seems to blink.
;--"2.timatimAnA"
;One could se the lights blink from a distance.
;
