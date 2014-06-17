
;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith) 10/03/2014
;The future looks pretty black.[oald]
;भविष्य काफी निराशाजनक दिखता है . 
(defrule black4
(declare (salience 5000))
;(declare (salience 5000))
(id-root ?id black)
?mng <-(meaning_to_be_decided ?id)
(subject-subject_samAnAXikaraNa  ?id1 ?id)
(id-word ?id1 future)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id nirASAjanaka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  black.clp 	black4   "  ?id "  nirASAjanaka )" crlf))
)


;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith) 10/03/2014
;She's been in a really black mood all day.[oald]
;वह सारा दिन काफी क्रोधित मूड में था
;Rory shot her a black look.[oald]
(defrule black5
(declare (salience 5000))
(id-root ?id black)
?mng <-(meaning_to_be_decided ?id)
(viSeRya-viSeRaNa  ?id1 ?id)
(id-word ?id1 mood|look)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kroXiwa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  black.clp 	black5   "  ?id "  kroXiwa )" crlf))
)

;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith) 10/03/2014
;A power failure blacked out the city last night.[oald]
;बिजली की विफलता ने कल रात शहर को अंधकारमय कर दिया.
(defrule black6
(declare (salience 5000))
(id-root ?id black)
?mng <-(meaning_to_be_decided ?id)
(kriyA-upasarga  ?id ?id1)
(kriyA-subject  ?id ?sub)
(id-word ?id1 out)
(id-word ?sub failure|power)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 aMXakAramaya_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " black.clp 	black6  "  ?id "  " ?id1 "  aMXakAramaya_kara )" crlf))
)

;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith) 10/03/2014
;A house with blacked out windows.
;काली रंगी खिड़कियों वाला घर
(defrule black7
(declare (salience 5000))
(id-word ?id black)
?mng <-(meaning_to_be_decided ?id)
(kriyA-object  ?id ?obj)
(kriyA-upasarga  ?id ?id1)
(id-word ?id1 out)
(id-root ?obj window)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 kAlI_raMgI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " black.clp 	black7  "  ?id "  " ?id1 "  kAlI_raMgI )" crlf))
)

;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith) 10/03/2014
;The driver had probably blacked out at the wheel.[oald]
;ड्राइवर गाड़ी चलाते हुये अचेत हो गया था
(defrule black8
(declare (salience 4500))
(id-word ?id black)
?mng <-(meaning_to_be_decided ?id)
(kriyA-subject  ?id ?sub)
(kriyA-upasarga  ?id ?id1)
(id-word ?id1 out)
(id-root ?sub ?str&:(and (not (numberp ?str))(gdbm_lookup_p "human.gdbm" ?str)))
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 acewa_ho_jA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " black.clp 	black8  "  ?id "  " ?id1 "  acewa_ho_jA )" crlf))
)


;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith) 10/03/2014
;The unions have blacked all imports from the country.[oald]
;यूनियन ने विदेश से सभी आयात का बहिष्कार किया है.
(defrule black9
(declare (salience 5000))
(id-word ?id black)
?mng <-(meaning_to_be_decided ?id)
(kriyA-object  ?id ?id1)
(id-root ?id1 import)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id bahiRkAra_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  black.clp     black9   "  ?id "  bahiRkAra_kara )" crlf))
)



;***********************DEFAULT RULES***************************

;Added by Meena(18.7.11)
;No, it was not Black Monday. 
(defrule black0
(declare (salience 5000))
(id-root ?id black|Black)
?mng <-(meaning_to_be_decided ?id)
(or(viSeRya-viSeRaNa ?id1 ?id)(proper_noun-waxviSiRta_proper_noun ?id ?id1)(samAsa_viSeRya-samAsa_viSeRaNa  ?id1 ?id))
;(id-root ?id1 day|Monday|Tuesday|Wednesday|Thursday|Friday|Saturday|Sunday)
(id-root ?id1 day|monday|tuesday|wednesday|thursday|friday|saturday|sunday);Modified to lowcase by Roja(13-06-13). As now we are using NER to get PropN info , NER doesnt recognize weekdays as Named Entities. So changed to lowcase. Ex:No, it was not Black Monday. 
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id aSuBa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  black.clp     black0   "  ?id "  aSuBa )" crlf))
)




;Salience reduced by Meena(18.7.11)
(defrule black1
(declare (salience 0))
;(declare (salience 5000))
(id-root ?id black)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kAlA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  black.clp 	black1   "  ?id "  kAlA )" crlf))
)


;Salience reduced by Meena(18.7.11)
(defrule black2
(declare (salience 0))
(id-root ?id black)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kAlA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  black.clp 	black2   "  ?id "  kAlA )" crlf))
)


;;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith) 10/03/2014
(defrule black3
(declare (salience 0))
(id-root ?id black)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kAlA_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  black.clp 	black3   "  ?id "  kAlA_kara )" crlf))
)

;"black","Adj","1.kAlA/SyAma"
;The shop specializes in black leather jackets.
;black deeds
;--"2.aMXerA"
;The future looked black
;a black moonless night
;--"3.BayaMkara"
;A face black with fury
;--"4.uxAsa/sogI"
;Black humor
;Black propaganda
;
;
;"black","Adj","1.kAlA/SyAma"
;The shop specializes in black leather jackets.
;black deeds
;--"2.aMXerA"
;The future looked black
;a black moonless night
;--"3.BayaMkara"
;A face black with fury
;--"4.uxAsa/sogI"
;Black humor
;Black propaganda
;

;@@@ Added by Sukhada (12-05-14). Automatically generated this rule.
(defrule sub_samA_black5
(declare (salience 5000))
(id-root ?id black)
?mng <-(meaning_to_be_decided ?id)
(subject-subject_samAnAXikaraNa ?id1 ?id)
(id-word ?id1 mood|look)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kroXiwa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng " ?*wsd_dir* " black.clp   sub_samA_black5   "   ?id " kroXiwa )" crlf))
)

;@@@ Added by Sukhada (12-05-14). Automatically generated this rule.
(defrule obj_samA_black5
(declare (salience 5000))
(id-root ?id black)
?mng <-(meaning_to_be_decided ?id)
(object-object_samAnAXikaraNa ?id1 ?id)
(id-word ?id1 mood|look)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kroXiwa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng " ?*wsd_dir* " black.clp   obj_samA_black5   "   ?id " kroXiwa )" crlf))
)
