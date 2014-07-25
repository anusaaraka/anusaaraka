;$$$ ;ne viBakwi asserts directly from yA tams. So commenting this fact by Roja (13-06-14). Suggested by Chaitanya Sir. 
;Added by Meena(23.06.10)
;We searched all morning for the missing papers and finally discovered them in a drawer . 
(defrule discover0
(declare (salience 5000))
(id-root ?id discover)
?mng <-(meaning_to_be_decided ?id)
(kriyA-subject ?id ?id1)
(kriyA-kriyA_viSeRaNa ?id ?id2)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id DUzDZa_le)) 
;(assert (kriyA_id-subject_viBakwi ?id ne))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  discover.clp       discover0   "  ?id "   DUzDZa_le )" crlf)
;(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-subject_viBakwi   " ?*wsd_dir* "   discover.clp       discover0   "  ?id " ne )" crlf)
)
)

;@@@ Added by Pramila(Banasthali University) on 21-03-2013
; She discovered that her husband was having an affair.          ;cald
;उसे पता चला कि उसके पति का सम्बन्ध किसी और के साथ चल रहा था .
;Following a routine checkup, Mrs Mason was discovered to have heart disease.           ;cald
;सामान्य परिक्षण से पता चला कि ,मिसेज मेसन को दिल  की बीमारी हैं .
(defrule discover1
(declare (salience 5000))
(id-root ?id discover)
?mng <-(meaning_to_be_decided ?id)
(or(id-word =(+ ?id 1) that)(kriyA-kriyArWa_kriyA  ?id ?id1))
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pawA_cala)) 
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  discover.clp       discover1   "  ?id "   pawA_cala )" crlf)
)
)

;@@@ Added by Pramila(Banasthali University) on 21-03-2013
;The boss discovered him (= unexpectedly found him) stealing money from the till.       ;cald
;बॉस ने अचानक उसे दराज से पैसे निकालते हुए पाया .
(defrule discover2
(declare (salience 5000))
(id-root ?id discover)
?mng <-(meaning_to_be_decided ?id)
(viSeRya-viSeRaNa  ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pA)) 
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  discover.clp       discover2   "  ?id "   pA )" crlf)
)
)



;------------------------------default rules---------------------------------

;@@@ Added by Pramila(Banasthali University) on 21-03-2013
;Who discovered America?
;अमेरिका की खोज किसने की ? 
;Scientists have discovered how to predict an earthquake.
;वैज्ञानिकों ने किस प्रकार से भूकंप के बारे भविष्यवाणी की जाए इसकी खोज की .
;added 'kriyA_id-object_viBakwi' on 22-02-2014
(defrule discover3
(declare (salience 4000))
(id-root ?id discover)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Koja_kara)) 
(assert (kriyA_id-object_viBakwi ?id kA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  discover.clp       discover3   "  ?id "   Koja_kara )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-object_viBakwi   " ?*wsd_dir* "  discover.clp   discover3  "?id " kA )" crlf))
)
;Salience reduced by Meena(23.6.10)
;Added by sheetal(18-6-10)
;When Mrs.Chitnis discovered that her husband was an adulterer she divorced him .
(defrule discover4
(declare (salience 0))
;(declare (salience 5000))
(id-root ?id discover)
?mng <-(meaning_to_be_decided ?id)
;(id-root ?id1 predict)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pawA_laga))
(assert (kriyA_id-subject_viBakwi ?id ko))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  discover.clp       discover4   "  ?id "   pawA_laga )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-subject_viBakwi   " ?*wsd_dir* "   discover.clp       discover4   "  ?id " ko )" crlf)
)
)
;
