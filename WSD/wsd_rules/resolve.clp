;@@@ Added by Anita--5.3.2014
;They can almost resolve atoms and molecules in a material. [NCRT]
;वे पदार्थ में परमाणुओं और अणुओं को लगभग विभाजित कर सकते हैं ।
(defrule resolve3
(declare (salience 4850))
(id-root ?id resolve)
?mng <-(meaning_to_be_decided ?id)
(kriyA-in_saMbanXI  ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id viyojiwa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  resolve.clp 	resolve3   "  ?id " viyojiwa_kara)" crlf))
)

;@@@ Added by Anita-5.3.2014
;Hence an optical microscope can not resolve particles with sizes smaller than this. [NCRT]
;अतः प्रकाशीय सूक्ष्मदर्शी इससे छोटे आकार के कणों का विभेदन नहीं कर सकता ।
(defrule resolve4
(declare (salience 4950))
(id-root ?id resolve)
?mng <-(meaning_to_be_decided ?id)
(kriyA-than_saMbanXI  ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id viBexana_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  resolve.clp 	resolve4   "  ?id " viBexana_kara)" crlf))
)

(defrule resolve0
(declare (salience 5000))
(id-root ?id resolve)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id resolved )
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id vicAra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  resolve.clp  	resolve0   "  ?id "  vicAra )" crlf))
)

;"resolved","Adj","1.vicAra"
;I was firmly resolved not to see him.
;
;---------------- Default rules---------------------------
(defrule resolve1
(id-root ?id resolve)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id hala_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  resolve.clp 	resolve1   "  ?id "  hala_kara )" crlf))
)

(defrule resolve2
(id-root ?id resolve)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id saMkalpa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  resolve.clp 	resolve2   "  ?id "  saMkalpa )" crlf))
)

;"resolve","N","1.saMkalpa"
;Make a resolve to help someone.
;

