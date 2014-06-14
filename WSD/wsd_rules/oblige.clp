
(defrule oblige0
(declare (salience 5000))
(id-root ?id oblige)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id obliging )
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id maxaxa_ke_lie_wEyAra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  oblige.clp  	oblige0   "  ?id "  maxaxa_ke_lie_wEyAra )" crlf))
)

;"obliging","Adj","maxaxa ke lie wEyAra"
;Elizabeth-I was a very obliging queen.
;
(defrule oblige1
(declare (salience 4900))
(id-root ?id oblige)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id oblige )
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id upakqwa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  oblige.clp  	oblige1   "  ?id "  upakqwa )" crlf))
)

;"obliged","Adj","upakqwa"
;I am much obliged to you for your timely help.
;
;
(defrule oblige2
(declare (salience 4800))
(id-root ?id oblige)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id maxaxa_karane_upakqwa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  oblige.clp 	oblige2   "  ?id "  maxaxa_karane_upakqwa_kara )" crlf))
)

;@@@ Added by Sonam Gupta MTech IT Banasthali 4-1-2014
;Sellers are not legally obliged to accept the highest offer. [Cambridge]
;विक्रेता सबसे अधिक ऊँचा प्रस्ताव स्वीकार करने के लिये कानूनन मजबूर नहीं हैं . 
(defrule oblige3
(declare (salience 5000))
(id-root ?id oblige)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(or(kriyA-kriyArWa_kriyA  ?id ?)(kriyA-vAkyakarma  ?id ?))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id majabUra_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  oblige.clp 	oblige3   "  ?id "  majabUra_ho )" crlf))
)

;@@@ Added by Sonam Gupta MTech IT Banasthali 4-1-2014
;Thank you, I'm much obliged to you. [Cambridge]
;आपका धन्यवाद, मैं आपको बहुत आभारी हूँ . 
(defrule oblige4
(declare (salience 5000))
(id-root ?id oblige)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-to_saMbanXI  ?id ?)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ABArI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  oblige.clp 	oblige4   "  ?id "  ABArI )" crlf))
)

;@@@ Added by Sonam Gupta MTech IT Banasthali 4-1-2014
;Would you oblige me with some information? [OALD]
;क्या आप थोडी सूचना देकर मेरी सहायता करेंगे? 
(defrule oblige5
(declare (salience 5000))
(id-root ?id oblige)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-with_saMbanXI  ?id ?)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sahAyawA_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  oblige.clp 	oblige5   "  ?id "  sahAyawA_kara )" crlf))
)

;@@@ Added by Sonam Gupta MTech IT Banasthali 4-1-2014
;The law obliges the government to release certain documents to the public. [MW]
;कानून जनता के लिए कुछ दस्तावेज छोडने के लिये सरकार को मजबूर करता है . 
(defrule oblige6
(declare (salience 5000))
(id-root ?id oblige)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(id-root ?id1 law|duty|government)
(kriyA-subject  ?id ?id1)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id majabUra_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  oblige.clp 	oblige6   "  ?id "  majabUra_kara )" crlf))
)

;@@@ Added by Sonam Gupta MTech IT Banasthali 4-1-2014
;“Thank you for your help.” “I'm happy to oblige.” [MW]
;आपकी सहायता के लिए धन्यवाद, मैं कृतज्ञ होकर खुश हूँ . 
(defrule oblige7
(declare (salience 5000))
(id-root ?id oblige)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(id-root ?id1 happy|lucky|glad|please|delight)
(saMjFA-to_kqxanwa  ?id1 ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kqwajFa_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  oblige.clp 	oblige7   "  ?id "  kqwajFa_ho )" crlf))
)


;"oblige","V","1.maxaxa_karane_upakqwa_karanA"
;He would be obliged to help.
;--"2.nEwika_niyamoM_se_majZabUra_karanA"
;No law can oblige children to take case of their aged parents.
;
