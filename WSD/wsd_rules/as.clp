;@@@ Added by Shirisha Manju 29-04-14 Suggested by Chaitanys sir
;Men as well as women must also be educated.
(defrule as_well_as
(declare (salience 5010))
(id-root ?id as)
?mng <-(meaning_to_be_decided ?id)
(conjunction-components  =(+ ?id 1) ?l $? ?r)
(id-root =(+ ?id 1) well)
(id-root =(+ ?id 2) as)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id =(+ ?id 1) =(+ ?id 2) Ora))
(assert (id-attach_emphatic ?l BI))
(assert (id-attach_emphatic ?r BI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " as.clp   as_well_as " ?id " "(+ ?id 1)" " (+ ?id 2) " Ora )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-id-attach_emphatic " ?*wsd_dir* " as.clp   as_well_as " ?l "  BI)" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-id-attach_emphatic " ?*wsd_dir* " as.clp   as_well_as " ?r "  BI)" crlf)
)
)


(defrule as015
(declare (salience 3700))
(id-root ?id as)
?mng <-(meaning_to_be_decided ?id)
(kriyA-vAkya_viBakwi  ?kri ?id)
(kriyA-subject ?kri ?id1)
(subject-subject_samAnAXikaraNa ?id1 ?id2)
(id-root =(+ ?id1 1) be|know)
(id-root ?id1 ?word)
(id-root ?id3 ?word1)
(id-last_word ?lst ?wrd)
(test (or (> ?id3 ?id1)(< ?id3 ?id)))
=>
(if (> ?id3 ?id) then
(loop-for-count (?i  1  ?lst)
    (if (and (> ?id3 ?id)(eq  ?word  ?word1))  then
         (assert (id-wsd_root_mng ?id kyoMki))
         (retract ?mng)
             (if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  as.clp        as015   "  ?id "  kyoMki )" crlf)) 
        (break)
))
  else
        (if (or(eq ?word it)(eq ?word there)(eq ?word ?word1)) then
             (assert (id-wsd_root_mng ?id kyoMki))
             (retract ?mng)
             (if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  as.clp        as015   "  ?id "  kyoMki )" crlf))
)
;  else
 ;         (assert (id-wsd_root_mng ?id jEsA_ki))
  ;        (retract ?mng)
   ;       (if ?*debug_flag* then
;(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  as.clp        as015   "  ?id "  jEsA_ki )" crlf))
))


;I do not go out as much now.
(defrule as0
(declare (salience 5000))
(id-root ?id as)
?mng <-(meaning_to_be_decided ?id)
(id-word =(+ ?id 1) much)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id -))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  as.clp 	as0   "  ?id  " - )" crlf))
)


;As was decided .., As stated above, ..
(defrule as1
(declare (salience 5000));salience changed from 4900 to 5000 by Garima Singh
(id-root ?id as)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse =(+ ?id 1) verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id jEsA_ki))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  as.clp 	as1   "  ?id "  jEsA_ki )" crlf))
)


(defrule as2
(declare (salience 4800))
(id-root ?id as)
?mng <-(meaning_to_be_decided ?id)
(id-word =(+ ?id 2) as)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id uwanA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  as.clp 	as2   "  ?id "  uwanA )" crlf))
)

(defrule as3
(declare (salience 4700))
(id-root ?id as)
?mng <-(meaning_to_be_decided ?id)
(id-word =(+ ?id 3) as)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id uwanA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  as.clp 	as3   "  ?id "  uwanA )" crlf))
)

(defrule as4
(declare (salience 4600))
(id-root ?id as)
?mng <-(meaning_to_be_decided ?id)
(id-word =(- ?id 3) as)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id jiwanA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  as.clp 	as4   "  ?id "  jiwanA )" crlf))
)

(defrule as5
(declare (salience 4500))
(id-root ?id as)
?mng <-(meaning_to_be_decided ?id)
(id-word =(- ?id 2) as)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id jiwanA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  as.clp 	as5   "  ?id "  jiwanA )" crlf))
)

(defrule as6
(declare (salience 4400))
(id-root ?id as)
?mng <-(meaning_to_be_decided ?id)
(id-word =(- ?id 2) so)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id jiwanA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  as.clp 	as6   "  ?id "  jiwanA )" crlf))
)


; Why be so cruel as to take anyone to pieces?
(defrule as7
(declare (salience 5500));salience changed from 4300 to 5500(kept higher than rule19)
(id-root ?id as)
?mng <-(meaning_to_be_decided ?id)
(id-word =(- ?id 2) so)
(id-word =(+ ?id 1) to)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ki))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  as.clp 	as7   "  ?id "  ki )" crlf))
)

;It is named as ...
(defrule as8
(declare (salience 5000));salience changed from 4300 to 5000 by Garima Singh
(id-root ?id as)
?mng <-(meaning_to_be_decided ?id)
(id-word =(- ?id 1) name)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id -))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  as.clp 	as8   "  ?id "  - )" crlf))
)

;It is known as ...
(defrule as9
(declare (salience 5000));salience changed from 4100 to 5000 by Garima Singh
(id-root ?id as)
?mng <-(meaning_to_be_decided ?id)
(id-word =(- ?id 1) known)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ke_nAma_se))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  as.clp 	as9   "  ?id "  ke_nAma_se )" crlf))
)


(defrule as10
(declare (salience 5000));salience changed from 4000 to 5000 by Garima Singh
(id-root ?id as)
?mng <-(meaning_to_be_decided ?id)
(id-word =(- ?id 1) serve|consider)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ke_rUpa_meM))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  as.clp 	as10   "  ?id "  ke_rUpa_meM )" crlf))
)

(defrule as11
(declare (salience 5000));salience changed from 3900 to 5000 by Garima Singh
(id-root ?id as)
?mng <-(meaning_to_be_decided ?id)
(id-word =(+ ?id 1) adviser|writer|evidence) ; Added writer in the list and removed as12 rule and also included evidence by  garima singh-Banasthali Vidyapith(14.8.13)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ke_rUpa_meM))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  as.clp 	as11   "  ?id "  ke_rUpa_meM )" crlf))
)


(defrule as13
(declare (salience 5000));salience changed from 3700 to 5000 by Garima Singh
(id-root ?id as)
?mng <-(meaning_to_be_decided ?id)
(id-word =(+ ?id 1) ruler)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ke_wOra_meM))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  as.clp 	as13   "  ?id "  ke_wOra_meM )" crlf))
)

;$$$ modified by Garima Singh(M.Tech-C.S, Banasthali Vidyapith) 16-dec-2013 
;As they had nothing to do, they decided to go to the river for a swim.[gyananidhi]
;क्योंकि उनके पास करने के लिये कुछ भी नही था, उन्होंने तैराकी के लिये नदी पर जाना तय किया . 
;As he was in a hurry, he took the shortest way.
(defrule as14
(declare (salience 6500)) ;Salience reduced 3600 to 3400 by Roja 04-11-13. Ex: As we go from ooty to gudalur, the change in vegetation is striking. ;salience remodified by garima from 3400 to 6500(conflict with rule15. ex:as he was in a hurry...)
(id-root ?id as) 
?mng <-(meaning_to_be_decided ?id)
;(id-word 1 ?id)
(test (eq ?id 1)) ;Commented above line and added test condition by Roja 04-11-13 automatically by a programme.
(kriyA-vAkya_viBakwi  ?kri1 ?id) ; added by garima
(kriyA-samakAlika_kriyA  ?kri2 ?kri1)  ; added by garima
(kriyA-subject ?kri1 ?sub)  ; added by garima
(id-root ?sub they|he|i|she)  ; added by garima
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kyoMki))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  as.clp 	as14   "  ?id "  kyoMki )" crlf))
)


;$$$ Modified by Garima Singh(M.Tech-C.S, Banasthali Vidyapith) 4-feb-2014
;Added 'can' in the list by Garima singh-Banasthali(4-feb-2014) ex:As you can see in C.T.C. manufacture the leaves are completely shredded, and the juice squeezed out and evenly mixed. 
;Added by Meena(4.6.10)
;As you are aware , this is not a new problem . 
;As we will see, the wave model could satisfactorily explain the phenomena of reflection and refraction.
(defrule as15
;(declare (salience 0))
(declare (salience 6000));salience changed from 3700 to 6000 by Garima Singh
(id-root ?id as)
?mng <-(meaning_to_be_decided ?id)
(kriyA-subject ?kri ?id1)
(kriyA-vAkya_viBakwi  ?kri ?id)
(id-root =(+ ?id1 1) be|know|shall|will|think|can) ;Added shall|will|think in the list by Garima singh-Banasthali (14.8.13)
;(id-cat_coarse ?id conjunction); Commented by  Garima singh
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id jEsA_ki))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  as.clp 	as15   "  ?id "  jEsA_ki )" crlf))
)


;Added by Meena(17.3.10)
;As the Master grew old and infirm , the disciples begged him not to die . 
(defrule as16
(declare (salience 4000));salience changed from 3500 to 5000 by Garima Singh
(id-root ?id as)
?mng <-(meaning_to_be_decided ?id)
(kriyA-vAkya_viBakwi  ?id1 ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id jaba))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  as.clp        as16   "  ?id "  jaba )" crlf))
)


;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith) 11-dec-2013
;We'll do as the local people do.[gyananidhi]
;Do exactly as I tell you.[oald]
(defrule as19
(declare (salience 5000));salience changed from 4000 to 5000 by Garima Singh
(id-root ?id as)
?mng <-(meaning_to_be_decided ?id)
(kriyA-vAkya_viBakwi  ?kri ?id)
(kriyA-samakAlika_kriyA  ?id1 ?kri)
(not(id-word 1  as))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id jEsA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  as.clp        as19   "  ?id "  jEsA )" crlf))
)

;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith) 16-dec-2013
;As the sun set, the temperature fell sharply.[gyananidhi]
;जैसे ही सूरज अस्त हुआ, तापमान तेजी से गिरा
(defrule as20
(declare (salience 4000));salience changed from 4000 to 5500 by Garima Singh
(id-root 1 as)
?mng <-(meaning_to_be_decided 1)
(kriyA-samakAlika_kriyA  ?kri2 ?kri1)
(kriyA-vAkya_viBakwi  ?kri1 1)
(not(kriyA-object ?kri1 ?))
(id-word ?sub sun|dawn)
=>
(retract ?mng)
(assert (id-wsd_root_mng 1 jEse_hI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  as.clp        as20     1  jEse_hI )" crlf))
)
;note:above sentence was not parsed correctly by default parser . parse it using parser2 to get above relations.

;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith) 28-dec-2013
;Some had prettier ones, some had heavier ones but none had a tail as long.[gyananidhi]
;कुछ की दुम पतली थी, कुछ की मोटी लेकिन किसी की भी दुम इतनी लंबी नहीं थी
(defrule as21
(declare (salience 5000));salience changed from 4000 to 5000 by Garima Singh
(id-root ?id as)
?mng <-(meaning_to_be_decided ?id)
(kriyA_viSeRaNa-kriyA_viSeRaNa_viSeRaka  ?id2 ?id)
(kriyA-kriyA_viSeRaNa  ?id1 ?id2)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id iwanI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  as.clp        as21   "  ?id "  iwanI )" crlf))
)


;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith) 28-dec-2013
;She knew that none of the others had as long a tail.[gyananidhi]
;वह जानती थी कि इतनी लंबी दुम किसी की नहीं है।
(defrule as22
(declare (salience 5000));salience changed from 0 to 5000 by Garima Singh
(id-root ?id as)
?mng <-(meaning_to_be_decided ?id)
(viSeRya-viSeRaka  ?id1 ?id)
(viSeRaNa-viSeRaka  ?id1 ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id iwanI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  as.clp        as22   "  ?id "  iwanI )" crlf))
)

;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith) 30-dec-2013
;He pointed out various landmarks as we drove along.[oald]
;उसने विभिन्न युगान्तरकारी घटनाएँ  दिखाईं जैसे जैसे  हम आगे  बढे.  
(defrule as23
(declare (salience 5000));salience changed from 4500 to 5000 by Garima Singh
(id-root ?id as)
?mng <-(meaning_to_be_decided ?id)
(kriyA-upasarga  ?id1 ?id2)
(kriyA-vAkya_viBakwi  ?id1 ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id jEse_jEse))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  as.clp        as23   "  ?id "  jEse_jEse)" crlf))
)

;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith) 11-jan-2014
;Asutosh wanted that he should not be transferred from Calcutta as that would put an end to his research.
(defrule as24
(declare (salience 5500));salience kept higher than rule19 as above example was a contradictory example.;salience changed from 4500 to 5500 by Garima Singh
(id-root ?id as)
?mng <-(meaning_to_be_decided ?id)
(kriyA-subject  ?kri =(+ ?id 1))
(id-word =(+ ?id 1) that);added by Garima Singh(25-jan-2014) conflict ex:As you approach the town, you'll see the college on the left. 
(kriyA-vAkya_viBakwi  ?kri ?id)
(kriyA-samakAlika_kriyA  ?id1 ?kri)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kyoMki))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  as.clp        as24   "  ?id "  kyoMki)" crlf))
)

;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith) 25-jan-2014
;The sofa also functions as a bed.
;सोफा बिस्तर की तरह भी काम करता है 
(defrule as25
(declare (salience 5000))
(id-root ?id as)
?mng <-(meaning_to_be_decided ?id)
(kriyA-subject  ?kri ?sub)
(kriyA-as_saMbanXI  ?kri ?)
(not(id-cat_coarse ?sub PropN|pronoun))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kI_waraha))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  as.clp        as25   "  ?id "  kI_waraha)" crlf))
)

;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith) 4-Feb-2014
;She was adopted as parliamentary candidate for Wood Green. 
;वह वुड ग्रीन के लिए संसदीय उम्मीदवार के रूप में चुनी गयी थी.
;added a new condition '(id-cat_coarse ?sub PropN)' on (6-feb-2014)  ex:Mr. Gupta was elected as the President of the Company.
(defrule as26
(declare (salience 5000))
(id-root ?id as)
?mng <-(meaning_to_be_decided ?id)
(kriyA-as_saMbanXI  ?kri ?)
(kriyA-subject  ?kri ?sub)
(kriyA-karma  ?kri ?sub)
(or(id-word ?sub he|she|they|i)(id-cat_coarse ?sub PropN))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ke_rUpa_meM))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  as.clp        as26   "  ?id "  ke_rUpa_meM )" crlf))
)


;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith) 4-feb-2014 
;As she talked she would wave it in front of her or play with it. [gyananidhi]
;जब वह बात करती थी वह उसे अपने आगे हिलाती थी या उसके साथ खेलती थी
(defrule as27
(declare (salience 6500)) 
(id-root 1 as) 
?mng <-(meaning_to_be_decided 1)
(kriyA-vAkya_viBakwi  ?kri1 1) 
(kriyA-samakAlika_kriyA  ? ?kri1)  
(kriyA-subject ?kri1 ?sub)  
(id-root ?sub they|he|i|she|we) 
(not(id-root ?kri1 be|have)) 
=>
(retract ?mng)
(assert (id-wsd_root_mng 1 jaba))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  as.clp 	as27   1  jaba )" crlf))
)


;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith) 4-feb-2014 
;As I grew older,I lost interest in movies. 
;जैसे जैसे मैं बूढ़ा हुआ, मैं चलचिञों में रुची खोता गया
(defrule as28
(declare (salience 5000)) 
(id-root 1 as) 
?mng <-(meaning_to_be_decided 1)
(kriyA-vAkya_viBakwi  ?kri1 1)
(kriyA-samakAlika_kriyA  ?kri2 ?kri1)
(subject-subject_samAnAXikaraNa  ?sub ?kri1)
(kriyA-subject  ?kri ?sub)
=>
(retract ?mng)
(assert (id-wsd_root_mng 1 jEse_jEse))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  as.clp        as28     1  jEse_jEse )" crlf))
)



;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith) 4-feb-2014 
;Use your coat as a blanket. 
;अपने कोट को कम्बल की तरह इसतमाल कीजिये
(defrule as29
(declare (salience 5000)) 
(id-root ?id as) 
?mng <-(meaning_to_be_decided ?id)
(kriyA-object  ?kri ?obj)
;(AjFArWaka_kriyA  ?kri)
(kriyA-as_saMbanXI  ?kri ?)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kI_waraha))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  as.clp        as29   "  ?id "  kI_waraha)" crlf))
)


;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith) 6-feb-2014 
;It was obvious that, with Sankaran Nair as Education Member, Sharp was not having everything his own way.[gyananidhi]
;यह स्पष्ट था कि शंकरन नायर के शिक्षा सदस्य के रूप में शार्प प्रत्येक कार्य अपनी मर्ज़ी से नहीं कर पा रहे थे।
;In the same year Asutosh's term of office as a member of the Senate expired.[gyananidhi]
;उसी वर्ष में सीनेट के सदस्य के रूप में आशुतोष के पद की अवधि समाप्त हो गई.
(defrule as30
(declare (salience 5000)) 
(id-root ?id as) 
?mng <-(meaning_to_be_decided ?id)
(viSeRya-as_saMbanXI  ?id1 ?id2)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ke_rUpa_meM))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  as.clp        as30   "  ?id "  ke_rUpa_meM)" crlf))
)

;***********************DEFAULT RULE**********************

;This rule needs to be modified.
;salience reduced by Meena(17.3.10)
(defrule as17
(declare (salience 0))
(id-root ?id as)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id conjunction)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id jEsA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  as.clp        as17   "  ?id "  jEsA )" crlf))
)

;"as","Conj","1.jEsA"
;As I grew older,I lost interest in movies.
;--"2.cUzki"
;As he was busy he could not come.


;;salience reduced by Meena(17.3.10)
(defrule as18
(declare (salience 0))
(id-root ?id as)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id preposition)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ke_jEsA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  as.clp 	as18   "  ?id "  ke_jEsA )" crlf))
)

;ke_jEsA is better than ke_samAna in all the examples, referred from OALD
;default_sense && category=preposition	ke_samAna	0
;"as","Prep","1.ke_samAna/ke_rUpa_meM"
;Treat me as a friend.
;
;as : jiwanI
;   : kI_waraha/ke_rUpa_meM/ke_wOra_para
;   : cUM_ki
;   : jaba,jEse
;   : yaxyapi
;   : jEse, kI_waraha
;
;


;*********************EXAMPLES*******************************

;Example sentences from different dictionaries:
;<TITLE>TEST </TITLE>
;<p>
;as (COMPARISON) adverb [not gradable], preposition, conjunction.
;used to express the way in which something or someone is like something or someone else.
;</p>
;
;<p>
;I like this jacket better than that one, but it costs twice as much.
;They live in the same town as my parents.
;I'd never seen him looking so miserable as he did that day.
;Related words.
;She'll soon be as tall as her mother.
;I can't run as fast as you.
;Her skin is (as) soft as a baby's.
;Paolo earns three times as much as I do.
;With modern technology, even babies weighing as little as 1 kilogram at birth can survive.
;It's not as good as it used to be.
;Related words.
;</p>
;
;<p>
;as (COMPARISON).
;used in comparisons to refer to the degree of something:.
;</p>
;<p>
;She'll soon be as tall as her mother.
;I can't run as fast as you.
;skin as soft as a baby's
;It's not as good as it used to be.
;</p>
;
;<p>
;as (BEING)  preposition.
;appearing to be, or being.
;</p>
;
;<p>
;He went to the fancy-dress party dressed as a banana.
;She was praised as an actress, but less so as a director.
;As a child, Mary had lived in India.
;Use your coat as (= in the same way as) a blanket.
;The news came as no surprise.
;What I said was meant as a joke.
;The necklace was reported to the police as having been stolen.
;Related words
;</p>
;
;<p>
;as (FOR THIS PURPOSE)/BEING .
;used to describe the purpose or quality of someone or something:.
;</p>
;<p>
;She works as a waitress.
;It could be used as evidence against him.
;The news came as quite a shock to us.
;I meant it as a joke.
;</p>
;
;<p>
;as (BECAUSE)   conjunction.
;because.
;</p>
;<p>
;As it was getting late, I decided to book into a hotel.
;You can go first as you're the oldest.
;Related words.
;</p>
;
;<p>
;as (BECAUSE).
;because:.
;</p>
;<p>
;As it was getting late, I decided to book into a hotel.
;You can go first as you're the oldest
;</p>
;
;<p>
;as (WHEN)  conjunction.
;while; during the time that.
;</p>
;<p>
;As I was getting into the car, I noticed a piece of paper on the floor.
;He gets more attractive as he gets older.
;Related words.
;As of/As from (= Starting) next month, all the airline's fares will be going up.
;Related words.
;</p>
;
;<p>
;as (WHILE)/WHEN/.
;while; during the time that:.
;</p>
;<p>
;I saw him as I was coming into the building.
;He gets more attractive as he gets older.
;</p>
;
;<p>
;as (ALTHOUGH)  conjunction.
;although.
;</p>
;<p>
;Angry as he was, he couldn't help smiling.
;Related words.
;</p>
;
;<p>
;as (ALTHOUGH).
;although:.
;</p>
;<p>
;Angry as he was, he couldn't help smiling.
;</p>
;
;<p>
;as (SIMILAR)   conjunction.
;in the way that; like.
;</p>
;<p>
;Do as I say!
;When I arrived at the party, someone else was dressed exactly as I was.
;He got divorced, (just) as his parents had done years before.
;As with his earlier movies, the special effects in his latest film are brilliant.
;As is often the case with children, Amy was completely better by the time the doctor arrived.
;As I thought, Danny was to blame.
;As you know, I have a house in the country.
;As I was just saying, I think the proposal needs further consideration.
;Gather ye rosebuds, as Robert Herrick put it.
;Knowing him as I do, I can't believe he would do such a thing.
;As a matter of principle, I don't drink && drive.
;Related words.
;He was thrilled. As for (= Changing the subject to) me, I got used to the idea.
;Related words.
;As if/though means in a way that suggests that something is the situation.
;She looked as if she'd had some bad news.
;My mouth felt as if I'd been eating the blanket.
;They stared at me as if I was crazy.
;Why is she so surprised? It isn't as if she wasn't warned (= this certainly was not the situation).
;Related words.
;As if can also be used for emphasis.
;As if I didn't have enough problems already (= I have a lot of problems && do not need any more)!
;He said that he didn't like the dress I was wearing. As if I cared (= I do not care)!
;Related words.
;(informal) As if! is used to show that you are disappointed when something that you had hoped for has not happened.
;"Did you get a pay rise?" "As if!"
;Related words.
;(esp. US informal) If you buy something as is, you accept it in its present condition.
;All merchandise is sold as is - no refunds, no exchanges.
;Related words.
;If you say as it is/stands/turns out/happens or as it was/stood/turned out/happened or as things are/stand or as things were/stood/turned out/happened, you are referring to the real situation, rather than what might or should have happened.
;We expected to arrive at 6.30, but as it was we didn't get there until after midnight.
;As things stand, I don't think we can ask Elaine to take on any further work.
;Related words.
;As it is can also mean already.
;No, I'm not buying you children anything else today - I've spent far too much money as it is.
;Related words.
;(formal) You can say as you wish/like/prefer, when you are agreeing to a request. This is sometimes used to show that you do not agree with or approve of the request.
;"I want you to do this work again." "As you wish."
;Related words.
;As to/As for means to change the subject to.
;As to where we'll get the money from, we'll talk about that later.
;Related words.
;As to means about.
;I can't answer questions as to how long this will last.
;He was uncertain as to which road to take.
;Related words.
;(UK) As && when (US && ANZ If && when) means at the time or in the way that.
;We don't own a car, but we rent one as && when we need it.
;Related words.
;You use as it were to make what you say sound less certain or humorous.
;He's a little on the large side, as it were (= He is fat).
;</p>
;
;<p>
;as (LIKE)/SIMILAR/.
;in the same way:.
;<p>
;</p>
;He got divorced, (just) as his parents had done years before.
;This year, as in previous years, tickets sold very quickly.
;As with his earlier movies, the special effects in his latest film are brilliant.
;As is often the case with children, Amy was completely better by the time the doctor arrived.
;As I was just saying, I think the proposal needs further consideration.
;Knowing him as I do, I can't believe he would do such a thing.
;<p>
;As I left the room, I asked him to remove the dark glasses so that I can 
;see him.
;As I stand before you, I remember ..
;In these cases, as  usa_samaya_jaba


;As you are aware , this is not a new problem . 
;You can go as you are the oldest.
;As you are the oldest you can go.

