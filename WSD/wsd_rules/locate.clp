;Added By Vivek Singh IIT(BHU)
;We have located the target.
(defrule locate0
(declare (salience 6000))
(id-root ?id locate)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-object  ?id ?id1)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id pawA_lagA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  locate.clp  	locate0   "  ?id "  pawA_lagA )" crlf))
)

;$$$--- Modified by Nandini(19-5-14) ;condition Added by Nandini(kriyA-near_saMbanXI  ?id ?id1)
;Added By Vivek Singh IIT(BHU)
;The headquarters of the Northern railways is located here. 
;uwwarI relave kA muKyAlaya yahAz sWiwa hE. ;Added hin-sentence  by Nandini(19-5-14)  
(defrule locate1
(declare (salience 6000))
(id-root ?id locate)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(or(kriyA-in_saMbanXI  ?id ?id1)(kriyA-aXikaraNavAcI  ?id ?id1)(kriyA-near_saMbanXI  ?id ?id1))

=>
(retract ?mng)
(assert (id-wsd_word_mng ?id sWiwa_hE))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  locate.clp  	locate1   "  ?id "  sWiwa_hE )" crlf))
)

;@@@--- Added by Nandini(19-5-14)
;The company chose to locate its factory near the airport.[OALD]
;kampanI ne vimAnapawwana ke nikata unakI PEktarI kA sWAna nirXAraNa karanA waya kiyA.
(defrule locate2
(declare (salience 6000))
(id-root ?id locate)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-kriyArWa_kriyA  ?id1 ?id)
(id-root ?id1 choose)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id sWAna_nirXAraNa_karanA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  locate.clp  	locate2   "  ?id "  sWAna_nirXAraNa_karanA )" crlf))
)
