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

;Added By Vivek Singh IIT(BHU)
;The headquarters of the Northern railways is located here. 
(defrule locate1
(declare (salience 6000))
(id-root ?id locate)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(or(kriyA-in_saMbanXI  ?id ?id1)(kriyA-aXikaraNavAcI_avyaya  ?id ?id1))

=>
(retract ?mng)
(assert (id-wsd_word_mng ?id sWiwa_hE))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  locate.clp  	locate1   "  ?id "  sWiwa_hE )" crlf))
)
