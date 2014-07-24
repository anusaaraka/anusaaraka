
(defrule think0
(declare (salience 5000))
(id-root ?id think)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id thinking )
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id vicAra_karawA_huA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  think.clp  	think0   "  ?id "  vicAra_karawA_huA )" crlf))
)

;@@@ Added by Prachi Rathore[24-1-14]
;I keep thinking back to the day I arrived here.[oald]
;मैं याद करना जारी रखता हूँ वो दिन जब मैं यहाँ आया . 
(defrule think3
(declare (salience 5000))
(id-root ?id think)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-upasarga  ?id ?id1)
(id-root ?id1 back)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 yAxa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " think.clp  think3  "  ?id "  " ?id1 " yAxa_kara )" crlf))
)


;@@@ Added by Prachi Rathore[24-1-14]
;He'd like more time to think things over.[oald]
;वह चीजों पर विचार करने के लिए अधिक समय चाहेगा . 
(defrule think4
(declare (salience 5000))
(id-root ?id think)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-upasarga  ?id ?id1)
(id-root ?id1 over)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 vicAra_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " think.clp  think4  "  ?id "  " ?id1 " vicAra_kara )" crlf))
)


;@@@ Added by Prachi Rathore[24-1-14]
;Can't you think up a better excuse than that?[oald]
;क्या आप उसकी अपेक्षा एक अधिक बेहतर बहाना नहीं खोज सकते हैं ? 
(defrule think5
(declare (salience 5000))
(id-root ?id think)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-upasarga  ?id ?id1)
(id-root ?id1 up)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 Koja))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " think.clp  think5  "  ?id "  " ?id1 " Koja )" crlf))
)

;@@@ Added by Prachi Rathore[24-1-14]
;This new building accommodated the post-graduate classes including the classes of the University Law College, the University Library, and the administrative offices of the University.Asutosh Mukherjee pointed out the impropriety of the proposal to the Chancellor, Lord Minto, and asked that the University might be permitted to deal with this matter as it thought proper. [gyan-nidhi]
;आशुतोष मुकर्जी ने प्रस्ताव के अनुपयुक्तता की ओर कुलाधिपति लार्ड मिंटो का ध्यान आकर्षित किया और अग्रतह के इस मामले को जैसा विश्वविद्यालय उचित समझे वैसे ही निपटाने की अनुमति दी जाये।
(defrule think6
(declare (salience 5000))
(id-root ?id think)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-subject  ?id ?id1)
(subject-subject_samAnAXikaraNa  ?id1 ?)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id samaJa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  think.clp 	think6   "  ?id "  samaJa )" crlf))
)

;@@@ Added by Prachi Rathore[24-1-14]
;I've been thinking over what you said.[oald]
;आपने जो कहा  मैं उस पर विचार कर रहा हूँ . 
(defrule think7
(declare (salience 5000))
(id-root ?id think)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-over_saMbanXI  ?id ?)
(id-root ?id1 over)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 vicAra_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " think.clp  think7  "  ?id "  " ?id1 " vicAra_kara )" crlf))
)
;given_word=thinking && word_category=noun	$vicAra_karane_kI_kriyA)

;"thinking","N","1.vicAra_karane_kI_kriyA"
;My way of thinking is totally different.
;

;xxxxxxxxxxxxxxxxx Default Rule xxxxxxxxxxxxxxxxx
(defrule think1
(declare (salience 4900))
(id-root ?id think)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id soca))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  think.clp 	think1   "  ?id "  soca )" crlf))
)

(defrule think2
(declare (salience 4800))
(id-root ?id think)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id soca))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  think.clp 	think2   "  ?id "  soca )" crlf))
)

;"think","VTI","1.soca"
;Think before you act.
;I think he is very smart.
;--"2.kalpanA_karanA"
;Just think-you could be rich one day.
;--"3.manana_karanA"
;Think of good thoughts.
;
;
