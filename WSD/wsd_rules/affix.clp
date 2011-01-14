
(defrule affix0
(declare (salience 5000))
(id-root ?id affix)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id prawyaya))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  affix.clp 	affix0   "  ?id "  prawyaya )" crlf))
)

;"affix","N","1.prawyaya"
;'Un' in the word unkind is an affix.
;
(defrule affix1
(declare (salience 4900))
(id-root ?id affix)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id saMyukwa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  affix.clp 	affix1   "  ?id "  saMyukwa_kara )" crlf))
)

;"affix","V","1.saMyukwa_karanA/jodZanA"
;Don't forget to affix a stamp before you post the letter.
;
