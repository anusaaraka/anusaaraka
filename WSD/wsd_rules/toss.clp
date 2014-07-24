;@@@ Added by Prachi Rathore[5-2-14]
;We tossed up to see who went first.[oald]
;हमने देखने के लिए  कि पहले कौन जायेगा सिक्का उछाल कर निर्णय लिया. 
(defrule toss2
(declare (salience 5000))
(id-root ?id toss)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(id-word ?id1 up)
(kriyA-upasarga ?id ?id1)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 sikkA_uCAla_kara_nirNaya_le))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " toss.clp 	toss2  "  ?id "  " ?id1 "  sikkA_uCAla_kara_nirNaya_le )" crlf))
)

;@@@ Added by Prachi Rathore[18-3-14]
;I tossed off my article in half an hour.[oald]
;मैंने आधे घण्टे में मेरा लेख जल्दी से पुरा किया . 
(defrule toss3
(declare (salience 5000))
(id-root ?id toss)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(id-word ?id1 off)
(kriyA-upasarga ?id ?id1)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 jalxI_se_purA_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " toss.clp 	toss3  "  ?id "  " ?id1 " jalxI_se_purA_kara )" crlf))harm
)


;@@@ Added by Prachi Rathore[18-3-14]
; It's time to toss out those bananas.[m-w]
;अब वे केले फेंक देना चाहिये  
(defrule toss4
(declare (salience 5000))
(id-root ?id toss)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(id-word ?id1 out)
(kriyA-upasarga ?id ?id1)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 PeMka_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " toss.clp 	toss4  "  ?id "  " ?id1 " PeMka_xe )" crlf))harm
)

;@@@ Added by Prachi Rathore[18-3-14]
 ;She tossed out a couple of ideas for improving the company's Web site.[m-w]
;उसने कम्पनी की वेब साइट सुधारने के लिये कुछ सुझाव दिये . 
(defrule toss5
(declare (salience 5050))
(id-root ?id toss)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(id-word ?id1 out)
(kriyA-upasarga ?id ?id1)
(kriyA-object  ?id ?id3)
(id-root ?id2 idea)
(viSeRya-of_saMbanXI  ?id3 ?id2)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " toss.clp 	toss5  "  ?id "  " ?id1 " xe )" crlf))harm
)

;@@@ Added by Prachi Rathore[18-3-14]
 ; They tossed him out of the bar after he started a fight. [m-w]
;उसने लडाई शुरु किया उसके बाद उन्होंने उसे शराबघर के बाहर  निकाल दिया  . 
(defrule toss6
(declare (salience 5050))
(id-root ?id toss)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(id-word ?id1 out)
(kriyA-upasarga ?id ?id1)
(kriyA-object  ?id ?id2)
(id-root ?id2 ?str&:(and (not (numberp ?str))(gdbm_lookup_p "animate.gdbm" ?str)))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id nikAla_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  toss.clp 	toss6   "  ?id "  nikAla_xe )" crlf))
)


;@@@ Added by Prachi Rathore[18-3-14]
;His testimony was tossed out by the judge.[m-w]
 ;उसकी गवाही को न्यायाधीश द्वारा रद्द कर दिया गया था . 
(defrule toss7
(declare (salience 5050))
(id-root ?id toss)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(id-word ?id1 out)
(kriyA-upasarga ?id ?id1)
(kriyA-subject  ?id ?id2)
(id-root ?id2 testimony)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 raxxa_kara_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " toss.clp 	toss7  "  ?id "  " ?id1 " raxxa_kara_xe )" crlf))harm
)
;xxxxxxxxxxxxxxxxxxxxxxxxxxx default rules xxxxxxxxxxxxxxxxxxxxxxxxxxxx
(defrule toss0
(declare (salience 5000))
(id-root ?id toss)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id uwkRepaNa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  toss.clp 	toss0   "  ?id "  uwkRepaNa )" crlf))
)

;"toss","N","1.uwkRepaNa"
;Take a toss .
;
(defrule toss1
(declare (salience 4900))
(id-root ?id toss)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id uCAla))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  toss.clp 	toss1   "  ?id "  uCAla )" crlf))
)

;"toss","VTI","1.uCAlanA"
;You toss the coin .
;--"2.karavateM_baxalawe_rahanA"
;The boy could not sleep && spent the night tossing in bed. .
;--"3.hilAnA[milAnA]"
;Toss the salad in oil.
;
