
(defrule hurdle0
(declare (salience 5000))
(id-root ?id hurdle)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id hurdling )
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id bAXA_pAra_karawe_hue))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  hurdle.clp  	hurdle0   "  ?id "  bAXA_pAra_karawe_hue )" crlf))
)

;"hurdling","N","1.bAXA pAra karawe hue"
;'hurdling' meM BArawa ke wejZa XAvaka BAga le rahe hEM.
;
(defrule hurdle1
(declare (salience 4900))
(id-root ?id hurdle)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id hardala))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  hurdle.clp 	hurdle1   "  ?id "  hardala )" crlf))
)

;"hurdle","N","1.hardala{bAXA}"
;CAwra 'hurdles'meM BAga le rahe hEM.
;
(defrule hurdle2
(declare (salience 4800))
(id-root ?id hurdle)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id bAXA_uCala_kara_pAra_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  hurdle.clp 	hurdle2   "  ?id "  bAXA_uCala_kara_pAra_kara )" crlf))
)

;"hurdle","V","1.bAXA_uCala_kara_pAra_karanA"
;pI.tI. uRA 'hurdle'karawe prawiyogiwA meM rajawa paxaka jIwI
;
