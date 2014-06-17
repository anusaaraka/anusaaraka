
;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith) 08-03-2014
;The troops fired blanks in the air.[oald]
;सैनिकों ने हवा में खाली कारतूस दागे
(defrule blank2
(declare (salience 3000))
(id-root ?id blank)
?mng <-(meaning_to_be_decided ?id)
(kriyA-object  ?kri ?id)
(id-root ?kri fire)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id KAlI_kArawUsa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  blank.clp 	blank2   "  ?id "  KAlI_kArawUsa )" crlf))
)


;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith) 08-03-2014
;Suddenly the screen went blank.[oald]
;अचानक पर्दा दृष्यहीन हो गया
(defrule blank3
(declare (salience 3000))
(id-root ?id blank)
?mng <-(meaning_to_be_decided ?id)
(subject-subject_samAnAXikaraNa  ?id1 ?id)
(kriyA-subject  ?kri  ?id1)
(id-word ?id1 screen)
;(id-word ?kri went);uncomment if any conflict is found
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id xqRyahIna_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  blank.clp 	blank3   "  ?id "  xqRyahIna_ho )" crlf))
)

;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith) 08-03-2014
;She stared at me with a blank expression on her face.[oald]
;उसने मेरी ओर उसके चेहरे पर भावशून्य हाव-भाव के साथ घूरा
(defrule blank4
(declare (salience 3000))
(id-root ?id blank)
?mng <-(meaning_to_be_decided ?id)
(viSeRya-viSeRaNa  ?id1 ?id)
(id-word ?id1 expression)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id BavaSUnya))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  blank.clp 	blank4   "  ?id "  BavaSUnya )" crlf))
)

;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith) 08-03-2014
;Steve looked blank and said he had no idea what I was talking about.[oald]
;स्टीव भावहीन दिखा और बोला उसे अंदाजा नहीं है कि मैं किस बारे में बात कर रहा हूँ
(defrule blank5
(declare (salience 3000))
(id-root ?id blank)
?mng <-(meaning_to_be_decided ?id)
(subject-subject_samAnAXikaraNa  ?sub ?id)
(kriyA-subject  ?kri ?sub)
(id-root ?kri look)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id BavahIna))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  blank.clp 	blank5   "  ?id "  BavahIna )" crlf))
)

;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith) 10-03-2014
;A blank refusal.[oald]
;पूरी तरह से इन्कार
(defrule blank6
(declare (salience 3000))
(id-root ?id blank)
?mng <-(meaning_to_be_decided ?id)
(viSeRya-viSeRaNa  ?id1 ?id)
(id-word ?id1 refusal|denial)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pUrI_waraha_se))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  blank.clp 	blank6   "  ?id "  pUrI_waraha_se )" crlf))
)



;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith) 10-03-2014
;Suddenly my mind went blank.[oald]
;अचानक मेरा दिमाग विचारशून्य हो गया
(defrule blank7
(declare (salience 3000))
(id-root ?id blank)
?mng <-(meaning_to_be_decided ?id)
(subject-subject_samAnAXikaraNa  ?id1 ?id)
(kriyA-subject  ?id2 ?id1)
(id-word ?id1 mind)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id vicAraSUnya))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  blank.clp 	blank7   "  ?id "  vicAraSUnya )" crlf))
)

;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith) 10-03-2014
;All the names in the letter had been blanked out.[oald]
;पञ में सभी नाम  पूरी तरह से छिपा/मिटा  दिये गये थे
(defrule blank8
(declare (salience 3000))
(id-root ?id blank)
?mng <-(meaning_to_be_decided ?id)
(kriyA-upasarga  ?id ?id1)
(kriyA-subject  ?id ?sub)
(id-word ?id1 out)
(id-root ?sub name)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 pUrI_waraha_se_CipA_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " blank.clp 	blank8  "  ?id "  " ?id1 "    pUrI_waraha_se_CipA_xe )" crlf))
)

;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith) 10-03-2014
;She had tried to blank out the whole experience.[oald]
;उसने पूरे अनुभव को भुलाने की कोशिश की थी.
(defrule blank9
(declare (salience 3000))
(id-root ?id blank)
?mng <-(meaning_to_be_decided ?id)
(kriyA-upasarga  ?id ?id1)
(kriyA-object  ?id ?obj)
(id-word ?id1 out)
(id-word ?obj experience)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 pUrI_waraha_se_BulA_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " blank.clp 	blank9  "  ?id "  " ?id1 "  pUrI_waraha_se_BulA_xe )" crlf))
)


;**********************DEFAULT RULES****************************

;$$$ Modified by Garima Singh(M.Tech-C.S, Banasthali Vidyapith) 08-03-2014
;added '(id-cat_coarse ?id adjective)' in the category
(defrule blank0
(declare (salience 0));salience reduced by Garima Singh
(id-root ?id blank)
?mng <-(meaning_to_be_decided ?id)
(or(id-cat_coarse ?id adjective)(id-cat ?id adjective|adjective_comparative|adjective_superlative))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id KAlI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  blank.clp 	blank0   "  ?id "  KAlI )" crlf))
)

(defrule blank1
(declare (salience 0));salience reduced by Garima Singh
(id-root ?id blank)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id rikwa_sWAna))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  blank.clp 	blank1   "  ?id "  rikwa_sWAna )" crlf))
)

;"blank","N","1.rikwa_sWAna"
;
;



;@@@ Added by Sukhada (12-05-14). Automatically generated this rule.
(defrule sub_samA_blank4
(declare (salience 3000))
(id-root ?id blank)
?mng <-(meaning_to_be_decided ?id)
(subject-subject_samAnAXikaraNa ?id1 ?id)
(id-word ?id1 expression)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id BavaSUnya))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng " ?*wsd_dir* " blank.clp   sub_samA_blank4   "   ?id " BavaSUnya )" crlf))
)

;@@@ Added by Sukhada (12-05-14). Automatically generated this rule.
(defrule obj_samA_blank4
(declare (salience 3000))
(id-root ?id blank)
?mng <-(meaning_to_be_decided ?id)
(object-object_samAnAXikaraNa ?id1 ?id)
(id-word ?id1 expression)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id BavaSUnya))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng " ?*wsd_dir* " blank.clp   obj_samA_blank4   "   ?id " BavaSUnya )" crlf))
)

;@@@ Added by Sukhada (12-05-14). Automatically generated this rule.
(defrule sub_samA_blank6
(declare (salience 3000))
(id-root ?id blank)
?mng <-(meaning_to_be_decided ?id)
(subject-subject_samAnAXikaraNa ?id1 ?id)
(id-word ?id1 refusal|denial)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pUrI_waraha_se))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng " ?*wsd_dir* " blank.clp   sub_samA_blank6   "   ?id " pUrI_waraha_se )" crlf))
)

;@@@ Added by Sukhada (12-05-14). Automatically generated this rule.
(defrule obj_samA_blank6
(declare (salience 3000))
(id-root ?id blank)
?mng <-(meaning_to_be_decided ?id)
(object-object_samAnAXikaraNa ?id1 ?id)
(id-word ?id1 refusal|denial)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pUrI_waraha_se))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng " ?*wsd_dir* " blank.clp   obj_samA_blank6   "   ?id " pUrI_waraha_se )" crlf))
)
