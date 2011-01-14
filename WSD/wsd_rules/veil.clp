
(defrule veil0
(declare (salience 5000))
(id-root ?id veil)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id veiled )
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id CipA_huA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  veil.clp  	veil0   "  ?id "  CipA_huA )" crlf))
)

;"veiled","Adj","1.CipA_huA"
;Can you see the veiled moon?
;--"2.GUzGata_yukwa"
;A veiled sculpture of a woman is worthseeing in the Salar Jung Museum
;
(defrule veil1
(declare (salience 4900))
(id-root ?id veil)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id GUMGata))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  veil.clp 	veil1   "  ?id "  GUMGata )" crlf))
)

;"veil","N","1.GUMGata"
;The lady covered her face with a veil
;--"2.parxA"
;They did their work behind a veil of secrecy
;
(defrule veil2
(declare (salience 4800))
(id-root ?id veil)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id GUMGata_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  veil.clp 	veil2   "  ?id "  GUMGata_kara )" crlf))
)

;"veil","VT","1.GUMGata_karanA"
;Shakuntala veiled herself to be incognito
;
