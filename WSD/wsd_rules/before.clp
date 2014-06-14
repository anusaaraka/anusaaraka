
;$$$ Modified by Garima Singh(M.Tech-C.S, Banasthali Vidyapith)20-jan-2014
;He puts his work before everything .[oald]
;वह अपने कार्य को सबसे ऊपर रखता है
(defrule before0
(declare (salience 5000))
(id-root ?id before)
?mng <-(meaning_to_be_decided ?id)
(kriyA-before_saMbanXI  ?kri ?id1); added by Garima Singh
(id-word ?id1 everything) ; added by Garima Singh
;(kriyA-object  ?kri ?obj);uncomment these lines if any conflict is found
;(id-word ?obj work);uncomment these lines if any conflict is found
;(id-word =(+ ?id 1) everything)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id se_Upara)) ; changed the meaning from 'ke_pahale' to 'se_Upara' by Garima Singh
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  before.clp 	before0   "  ?id "  se_Upara )" crlf))
)

(defrule before1
(declare (salience 5000));salience changed by Garima Singh
(id-root ?id before)
?mng <-(meaning_to_be_decided ?id)
(id-word =(+ ?id 1) throne|principal|judge|house|board|witnesses|chair|chairman|king)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ke_sAmane))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  before.clp 	before1   "  ?id "  ke_sAmane )" crlf))
)


;Added by Meena(1.4.10)
;She worked in a school for a while before joining the college . 
;I should have talked to you before the inviting of John . 
;I should have talked to you before inviting John . 
;(defrule before4
;(declare (salience 5000))
;(id-root ?id before)
;?mng <-(meaning_to_be_decided ?id)
;(or(kriyA-before_saMbanXI  ?id1 =(+ ?id 1))(kriyA-before_saMbanXI  ?id1 =(+ ?id 2)))
;;(kriyA-before_saMbanXI  ?id1 =(+ ?id 3)))
;(or (kriyA-object =(+ ?id 1)|=(+ ?id 2)  ?id2)(kqxanwa-of_saMbanXI  =(+ ?id 2) ?id2))
;=>
;(retract ?mng)
;(assert (id-wsd_root_mng ?id se_pahale))
;(if ?*debug_flag* then
;(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  before.clp    before4   "  ?id "   se_pahale )" crlf))
;)


;$$$ Modified by Garima Singh(M.Tech-C.S, Banasthali Vidyapith) 02-jan-2014
;Added By Sheetal(11-08-10)
;Above rule commented as its very complicated(This rule works for all the above three sentences)
;She worked in a school for a while before joining the college . 
;I should have talked to you before the inviting of John . 
;I should have talked to you before inviting John .
(defrule before4
(declare (salience 5000));salience reduced by Garima Singh as salience of rule5 is decreased
(id-root ?id before)
?mng <-(meaning_to_be_decided ?id)
(kriyA-before_saMbanXI  ?kri ?id1) ; modified by Garima Singh
(id-cat_coarse ?id1 verb)   ;added by Garima Singh
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id se_pahale))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  before.clp    before4   "  ?id "   se_pahale )" crlf))
)



;$$$ modified by Garima Singh(M.Tech-C.S, Banasthali Vidyapith) 02-jan-2014
;Then the make- believe King weighed the facts laid before him and passed judgment.
;उसके बाद राजा बने हुए लड़के ने उसके सामने रखे तथ्यों को तौला और अपना फैसला सुनाया।
;Added by Meena(30.3.10)
;The hare was once boasting of his speed before the other animals . 
(defrule before5
(declare (salience 4000));salience kept lower than rule4
(id-root ?id before)
?mng <-(meaning_to_be_decided ?id) 
;(or(kriyA-before_saMbanXI  ?id1 =(+ ?id 1))(kriyA-before_saMbanXI  ?id1 =(+ ?id 2))(kriyA-before_saMbanXI  ?id1 =(+ ?id 3))); commented by Garima Singh
(kriyA-before_saMbanXI  ?kri ?id1) ; added by Garima Singh
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ke_sAmane))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  before.clp    before5   "  ?id "   ke_sAmane )" crlf))
)
;conflict-I reached the cinema hall before you.He arrived before me.To be discussed.



;@@@ Added by Aditya and Hardik(25-06-2013),IIT(BHU) batch 2012-2017.
;I have seen him before.
;Have you done this before?
(defrule before7
(declare (salience 5000));salience changed by Garima Singh
(id-last_word ?id before)
?mng <-(meaning_to_be_decided ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pahale))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  before.clp 	before7   "  ?id "  pahale )" crlf))
)

;@@@ Added by Garima Singh(M.Tech-C.S) 19-nov-2013
;She wanted to put her affairs in order before she died.[cambridge]
;वह मरने से पहले अपने कार्य व्यवस्थित करना चाहती थी.
(defrule before8
(declare (salience 5000))
(id-root ?id before)
?mng <-(meaning_to_be_decided ?id)
(kriyA-vAkya_viBakwi ?id1 ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id se_pahale))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  before.clp    before8   "  ?id "  se_pahale )" crlf))
)


;@@@ Added by Garima Singh(M.Tech-C.S) 16-dec-2013
;Before Rajvir's astonished eyes the leaves lost their greenish colour and became brown.[gyananidhi]
;राजबीर की आँखो के सामने पत्तियाँ हरे रंग से गहरे भूरे रंग की हो गयी
(defrule before9
(declare (salience 5500)); salience kept higher than rule 13
(id-root ?id before)
?mng <-(meaning_to_be_decided ?id)
;(viSeRya-RaRTI_viSeRaNa  ?id1 ?);commented by Garima Singh 17-jan-2014 .conflict ex:Six months before his actual date of retirement, he decided to retire .Added a new rule before12 for the conflict 
(kriyA-before_saMbanXI  ?kri ?id1)
(id-root ?id eye)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ke_sAmane))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  before.clp    before9   "  ?id "  ke_sAmane )" crlf))
)


;@@@ Added by Garima Singh(M.Tech-C.S) 30-dec-2013
;Sidey stood before her with her head bowed.[oald]
;साईडी सिर झुकाकर उसके सामने खड़ी हो गयी।
(defrule before10
(declare (salience 5000))
(id-root ?id before)
?mng <-(meaning_to_be_decided ?id)
(kriyA-vAkya_viBakwi  ?id1 ?id)
(kriyA-samakAlika_kriyA  =(- ?id 1) ?id1)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ke_sAmane))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  before.clp    before10   "  ?id "  ke_sAmane )" crlf))
)

;@@@ Added by Garima Singh(M.Tech-C.S) 10-jan-2014
;Before he was 25 years old, he had established his position in the world of mathematical research. [oald]
;वह 25 वर्ष का था उससे पेहले ही उन्होने गणित संबंधी शोध की दुनिया में अपना सिक्का जमा लिया था।
(defrule before11
(declare (salience 5000));salience reduced by Garima Singh
(id-root 1 before)
?mng <-(meaning_to_be_decided 1)
(kriyA-vAkya_viBakwi  ?kri 1)
;(kriyA-subject  ?kri ?sub)
(id-word ?kri was)
;(id-word 1  before)
=>
(retract ?mng)
(assert (id-wsd_root_mng 1 usase_pahale_hI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  before.clp    before11   "  1 "  usase_pahale_hI )" crlf))
)


;@@@ Added by Garima Singh(M.Tech-C.S) 17-jan-2014
;Six months before his actual date of retirement, he decided to retire .
;उसकी  सेवानिवृत्ति की वास्तविक तिथि से  छह महीने  पहले  , उसने इस्तीफा देने का फैसला लिया
(defrule before12
(declare (salience 5000)); salience reduced by Garima Singh.No conflicts found
(id-root ?id before)
?mng <-(meaning_to_be_decided ?id)
(viSeRya-RaRTI_viSeRaNa  ?id1 ?)
(kriyA-before_saMbanXI  ?kri ?id1)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pahale))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  before.clp    before12   "  ?id "  pahale)" crlf)
)
)
;note: se vibhakti should be added to word 'date'. To be discussed with sir.


;@@@ Added by Garima Singh(M.Tech-C.S,Banasthali Vidyapith) 20-jan-2014
;Before the days of printing, our holy books were written on birch bark.
(defrule before13
(declare (salience 5000))
(id-root 1 before)
?mng <-(meaning_to_be_decided 1)
(kriyA-before_saMbanXI  ?kri ?id1)
(id-cat_coarse 1 preposition)
;(id-root ?id1 day);uncomment this line if conflicts are found and reduce the salience of rule9 to 5000
=>
(retract ?mng)
(assert (id-wsd_root_mng 1 se_pahale))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  before.clp    before13   1  se_pahale)" crlf)
)
)

;@@@ Added by Garima Singh(M.Tech-C.S,Banasthali Vidyapith) 21-jan-2014
;Your name is before mine on the list.[oald]
;तुम्हारा नाम सूची में मेरे नाम से पहले है
;You are bound by the contract to pay before the end of the month.[oald]
;तुम महीने के अन्त से पहले भुगतान करने के लिये संविदा से बंधे हुए हो
(defrule before14
(declare (salience 5000))
(id-root ?id before)
?mng <-(meaning_to_be_decided ?id)
(kriyA-before_saMbanXI  ?kri ?id1)
(id-word ?id1 mine|yours|hers|end);added 'end' in the list by Garima Singh 1-Feb-2014
;(id-root ?kri is) ; uncomment this line if any conflict is found
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id se_pahale))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  before.clp    before14   " ?id "  se_pahale)" crlf)
)
)


;*********************DEFAULT RULES*******************************************

;Salience reduced by Meena(30.3.10)
(defrule before6
(declare (salience 0));salience reduced by Garima Singh
;(declare (salience 4600))
(id-root ?id before)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id preposition)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id se_pahale))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  before.clp 	before6   "  ?id "  se_pahale )" crlf))
)


;"before","Prep","1.ke_pahale"
;I had known her before you introduced her to me.
;--"2.ke_sAmane"
;They danced before me.
;--"3.ke_Age"
;


(defrule before2
(declare (salience 0));salience reduced by Garima Singh
(id-root ?id before)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id conjunction)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id isase_pahale_ki))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  before.clp 	before2   "  ?id "  isase_pahale_ki )" crlf))
)

;I had known her before you introduced her to me.
(defrule before3
(declare (salience 0));salience reduced by Garima Singh
(id-root ?id before)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adverb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ke_pahale))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  before.clp 	before3   "  ?id "  ke_pahale )" crlf))
)

;"before","Adv","1.ke_pahale"
;I reached the cinema hall before you.



;************************EXAMPLES********************************

;Before the days of printing, our holy books were written on birch bark.
;I should have talked to you before inviting John .
;She worked in a school for a while before joining the college . 
;I should have talked to you before the inviting of John .
;I should have talked to you before inviting John .
;The hare was once boasting of his speed before the other animals .
;Then the make- believe King weighed the facts laid before him and passed judgment.
;I had known her before you introduced her to me.
;I reached the cinema hall before you.
;Then the make- believe King weighed the facts laid before him and passed judgment.
;I have seen him before.
;Have you done this before?
;She wanted to put her affairs in order before she died.
;Before Rajvir's astonished eyes the leaves lost their greenish colour and became brown.
;Sidey stood before her with her head bowed.
;Before he was 25 years old, he had established his position in the world of mathematical research.
;Six months before his actual date of retirement, he decided to retire .
