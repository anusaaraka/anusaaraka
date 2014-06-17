
;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith)13-Feb-2014
;The bulk of the population lives in cities.[oald]
;जनसंख्या का अधिकांश हिस्सा शहरो में रहता है
(defrule bulk2
(declare (salience 5000))
(id-root ?id bulk)
?mng <-(meaning_to_be_decided ?id)
(viSeRya-of_saMbanXI  ?id ?id1)
(id-word ?id1 population)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id aXikAMSa_hissA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  bulk.clp 	bulk2   "  ?id " aXikAMSa_hissA )" crlf))
)

;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith)13-Feb-2014
;Sausages often have bread in them to bulk them out.[oald]
;कबाबों  में अकसर ब्रेड होता है उनको बड़ा करने/दिखाने के लिये  . 
(defrule bulk3
(declare (salience 5000))
(id-root ?id bulk)
?mng <-(meaning_to_be_decided ?id)
(kriyA-upasarga  ?id ?id1)
(id-word ?id1 out)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 badZA_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " bulk.clp	bulk3 "  ?id "  " ?id1 " badZA_kara )" crlf))
)
 
;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith)13-Feb-2014
;The issue is likely to bulk large at the next summit meeting.[oald]
;यह विषय अगली शिखर बैठक में बहुत महत्वपूर्ण होने की सम्भावना है . 
(defrule bulk4
(declare (salience 5000))
(id-root ?id bulk)
?mng <-(meaning_to_be_decided ?id)
(viSeRya-to_saMbanXI  ? ?id)
(viSeRya-viSeRaNa  ?id ?id1)
(id-word ?id1 large)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 bahuwa_mahawvapUrNa_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " bulk.clp	bulk4  "  ?id "  " ?id1 " bahuwa_mahawvapUrNa_ho )" crlf))
)


;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith)13-Feb-2014
;He acquired another small airline and bulked up operations.[oald]
;उसने एक और छोटी हवाई कम्पनी अर्जन की और संचालन को बढ़ा लिया. 
(defrule bulk5
(declare (salience 5000))
(id-root ?id bulk)
?mng <-(meaning_to_be_decided ?id)
(kriyA-upasarga  ?id ?id1)
(id-word ?id1 up)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 baDZA_le))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " bulk.clp	bulk5  "  ?id "  " ?id1 " baDZA_le )" crlf))
)

;**************************DEFAULT RULES*****************************
(defrule bulk0
(declare (salience 0));salience reduced by Garima Singh
(id-root ?id bulk)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Woka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  bulk.clp 	bulk0   "  ?id "  Woka )" crlf))
)

;"bulk","N","1.Woka"
;It is cheaper to buy it in bulk
;
(defrule bulk1
(declare (salience 0));salience reduced by Garima Singh
(id-root ?id bulk)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id xiKa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  bulk.clp 	bulk1   "  ?id "  xiKa )" crlf))
)

;"bulk","VI","1.xiKanA"
;The parcel bulked in the sack
;

;@@@ Added by Sukhada (12-05-14). Automatically generated this rule.
(defrule sub_samA_bulk4
(declare (salience 5000))
(id-root ?id bulk)
?mng <-(meaning_to_be_decided ?id)
(viSeRya-to_saMbanXI  ? ?id)
(subject-subject_samAnAXikaraNa ?id ?id1)
(id-word ?id1 large)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 bahuwa_mahawvapUrNa_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng " ?*wsd_dir* " bulk.clp   sub_samA_bulk4   "   ?id " " ?id1 " bahuwa_mahawvapUrNa_ho )" crlf))
)

;@@@ Added by Sukhada (12-05-14). Automatically generated this rule.
(defrule obj_samA_bulk4
(declare (salience 5000))
(id-root ?id bulk)
?mng <-(meaning_to_be_decided ?id)
(viSeRya-to_saMbanXI  ? ?id)
(object-object_samAnAXikaraNa ?id ?id1)
(id-word ?id1 large)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 bahuwa_mahawvapUrNa_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng " ?*wsd_dir* " bulk.clp   obj_samA_bulk4   "   ?id " " ?id1 " bahuwa_mahawvapUrNa_ho )" crlf))
)
