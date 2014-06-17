
;@@@ Added by Garima Singh
;In 1922, Bohr was awarded Nobel Prize in Physics.[physics parralel corpus]
;1922 में, बोर को भौतिक विज्ञान में  Nobel पुरस्कार दिया गया था .
;The judges awarded equal points to both finalists.
;न्यायाधीशों ने अन्तिम दौर में पहुँचने वाले दोनो प्रतिभागीयों को समान अकं दिए . 
(defrule award3
(declare (salience 5000))
(id-root ?id award)
?mng <-(meaning_to_be_decided ?id)
(kriyA-object ?id ?id1)
(id-word ?id awarded)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  award.clp 	award3   "  ?id "  xe )" crlf))
)


;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith)11-jan-2014
;He was awarded for his courage.
;उसे उसकी बहादुरी के लिये पुरस्कृत किया गया था
(defrule award4
(declare (salience 5000))
(id-root ?id award)
?mng <-(meaning_to_be_decided ?id)
(kriyA-for_saMbanXI  ?id ?id1)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id puraskqwa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  award.clp 	award4   "  ?id "  puraskqwa_kara )" crlf))
)



;*********************DEFAULT RULES**************************************

(defrule award0
(declare (salience 0)); salience reduced by Garima Singh
(id-root ?id award)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id puraskAra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  award.clp 	award0   "  ?id "  puraskAra )" crlf))
)

;"award","N","1.puraskAra"
;Ram && Shyam received an award for their excellent performance.
;rAma Ora SyAma ko apane acCe praxarSana ke liye puraskAra milA.
;--"2.anuxAna"
;Ram has received an award from the University funds.
;rAma ko viSvavixyAlaya koRa se anuxAna milA hE.
;--"3.xaMda"
;The judge has pronounced an award of Rs.1000/- as damages. 
;jaja ne usapara jurmAne ke wOra para 1000 ru ke xaMda kI GoRaNA kI hE.
;


;Commented by Sukhada and Dipti ma'm on 19-08-11. Ex. California's Glendale Federal Bank awarded its $12 million to $15 million account to the Los Angeles office of Omnicom Group's BBDO agency.
;(defrule award1
;(declare (salience 4900))
;(id-root ?id award)
;?mng <-(meaning_to_be_decided ?id)
;(id-cat_coarse ?id verb)
;(kriyA-subject ?id ?sub)
;=>
;(retract ?mng)
;(assert (id-wsd_root_mng ?id puraskAra_xe))
;(assert (kriyA_id-subject_viBakwi ?id ko))
;(if ?*debug_flag* then
;(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  award.clp     award1   "  ?id "  puraskAra_xe )" crlf)
;(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-subject_viBakwi   " ?*wsd_dir* "  award.clp      award1   "  ?id "  ko )" crlf))
;)
;


;$$$ Modified by Garima Singh(M.Tech-C.S, Banasthali Vidyapith)11-jan-2014
(defrule award2
(declare (salience 0));salience reduced by Garima Singh
(id-root ?id award)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id puraskqwa_kara));meaning changed from 'puraskAra_xenA' to 'puraskqwa_kara'
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  award.clp 	award2   "  ?id "  puraskqwa_kara )" crlf))
)

;"award","VT","1.puraskAra_xenA"
;The Jury awarded the best film title to Shyam Benegal's film.
;jUrI ne SyAma benegala kI Pilma ko sarvowwama Pilma kA puraskAra_xene kA nirNaya kiyA.
;


