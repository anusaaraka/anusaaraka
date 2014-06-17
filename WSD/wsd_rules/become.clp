(defrule become1
(declare (salience 4900))
(id-root ?id become)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 friend)
(kriyA-object ?id ?id1)
;(id-cat_coarse ?id verb) this and the above line are automatically modified using a program by Sukhada
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id bana))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  become.clp 	become1   "  ?id "  bana )" crlf))
)

;Modified by Meena(23.3.10) ;added "professional" in the list
;The upper middle-class tend to become the professionals .
;His aim was to become president.(added by garima)
;Added by sheetal(4-12-2009).
(defrule become3
(declare (salience 4850))
(id-root ?id become)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(id-root ?id1 problem|professional|president);modified by Garima Singh(M.Tech-C.S). Added president in the list.
(kriyA-object ?id ?id1)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id bana))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  become.clp    become3   "  ?id "  bana )" crlf))
)
; The sleeping of students is becoming a big problem .

;@@@ Added by Garima Singh(M.Tech-C.S) 18-nov-2013
;Such behaviour did not become her.
;इस तरह का व्यवहार उसको शोभा नही देता
(defrule become4
(declare (salience 5000))
(id-root ?id become)
?mng <-(meaning_to_be_decided ?id)
(kriyA-subject  ?id ?id1)
(kriyA-kriyA_niReXaka  ?id ?id2)
(id-root ?id1 behaviour|language)

=>
(retract ?mng)
(assert (id-wsd_root_mng ?id SoBA_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  become.clp    become4   "  ?id "  SoBA_xe )" crlf))
)

;@@@ Added by Garima Singh(M.Tech-C.S) 18-nov-2013
;Short hair really becomes you.
;छोटे बाल तुम पर वास्तव में  अच्छे लगते हैं.
(defrule become5
(declare (salience 5000))
(id-root ?id become)
?mng <-(meaning_to_be_decided ?id)
(kriyA-subject  ?id ?id1)
(subject-subject_samAnAXikaraNa  ?id1 ?id2) 
(id-root ?id1 hair|color)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id para_acCe_laga))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  become.clp    become5   "  ?id "  para_acCe_laga )" crlf))
)

;@@@ Added by Garima Singh(M.Tech-C.S) 18-nov-2013
;He has just become a father.
;वह अभी पिता बना है
(defrule become6
(declare (salience 5000))
(id-root ?id become)
?mng <-(meaning_to_be_decided ?id)
(kriyA-subject  ?id ?id1)
(subject-subject_samAnAXikaraNa  ?id1 ?id2)
(id-cat_coarse ?id2 noun);added by Garima on 6-feb-2014 conflict ex: He became very emotional
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id bana))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  become.clp    become6   "  ?id "  bana )" crlf))
)

;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith) 10-dec-2013
;And Mickey Adams - I wonder what became of him.
;और मिक्की एडम – मै सोचता हूँ उसका क्या हुआ .
(defrule become7
(declare (salience 5000))
(id-root ?id become)
?mng <-(meaning_to_be_decided ?id)
(kriyA-of_saMbanXI  ?id ?id1)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  become.clp    become7   "  ?id "  ho )" crlf))
)

;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith) 10-dec-2013
;This became a regular business and Hari acquired a great deal of money.[gyananidhi]
;अब यह उसका रोज का धन्धा बन गया और उसके पास काफी पैसा जमा हो गया।
(defrule become8
(declare (salience 5000))
(id-root ?id become)
?mng <-(meaning_to_be_decided ?id)
(kriyA-subject ?id ?sub)
(id-word ?sub this|that)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id bana_jA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  become.clp    become8   "  ?id "  bana )" crlf))
)


;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith) 27-jan-2014
;It became the duty of all colleges, not only to promote intellectual discipline, but also to provide for the physical and moral welfare of the students.[gyananidhi]
;सभी कॉलिजों का यह कर्त्तव्य हो गया कि वे न सिर्फ बौद्धिक अनुशासन को बढ़ावा दें बल्कि विद्यीर्थियों के शारीरिक और नैतिक कल्याण की भी व्यवस्था करें।
(defrule become9
(declare (salience 5000))
(id-root ?id become)
?mng <-(meaning_to_be_decided ?id)
(kriyA-dummy_subject  ?id ?id1)
(id-word ?id1 it)
(subject-subject_samAnAXikaraNa  ?id1 ?)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ho_jA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  become.clp    become9   "  ?id "  ho_jA )" crlf))
)
;@@@ Added by Garima Singh(M.Tech-C.S) 6-feb-2014
;He became very emotional when I told him I was pregnant.
;वह बहुत भावुक हो गया जब मैंने उसको बताया कि मैं गर्भवती हूँ
(defrule become10
(declare (salience 5000))
(id-root ?id become)
?mng <-(meaning_to_be_decided ?id)
(kriyA-subject  ?id ?id1)
(subject-subject_samAnAXikaraNa  ?id1 ?id2)
(id-cat_coarse ?id2 adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ho_jA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  become.clp    become10   "  ?id "  ho_jA )" crlf))
)
;****************************DEFAULT RULES**********************************


(defrule become0
(declare (salience 0)); Salience reduced by Garima Singh(M.Tech-C.S)18-nov-2013
(id-root ?id becoming); Modified by Garima Singh(M.Tech-C.S) 18-Nov-2013
?mng <-(meaning_to_be_decided ?id)
(id-word ?id becoming )
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id yukwa)); Modified by Garima Singh(M.Tech-C.S) 18-Nov-2013
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  become.clp  	become0   "  ?id "  yukwa )" crlf))
)
;"becoming","Adj","1.yukwa/anurUpa"
;She has a becoming hairstyle.


(defrule become2
(declare (salience 0));Salience reduced by Garima Singh(M.Tech-C.S)18-nov-2013
(id-root ?id become)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  become.clp 	become2   "  ?id "  ho )" crlf))
)

;default_sense && category=verb	bana	0
;"become","V","1.bananA"
;I wish to become a translator.
;--"2.PabanA/uciwa_honA"
;Foul language doesn't become her.



