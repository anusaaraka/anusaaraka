
(defrule lament0
(declare (salience 5000))
(id-root ?id lament)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id lamented )
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id Kexa_yogya))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  lament.clp  	lament0   "  ?id "  Kexa_yogya )" crlf))
)

;"lamented","Adj","1.Kexa yogya"
;
(defrule lament1
(declare (salience 4900))
(id-root ?id lament)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Soka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  lament.clp 	lament1   "  ?id "  Soka )" crlf))
)

;"lament","N","1.Soka"
;Pathetic laments of the family
;--"2.marsiyA"
;It is customary to compose laments over the death of an important person.
;
(defrule lament2
(declare (salience 4800))
(id-root ?id lament)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Soka_prakata_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  lament.clp 	lament2   "  ?id "  Soka_prakata_kara )" crlf))
)

;"lament","V","1.Soka_prakata_karanA"
;Mere lamenting over corruption is not going to remove it.
;They lamented as their friend's demise.

;@@@ Added by Nandini(18-1-14)
;The woman continued to lament the death of her child. [vidyarWI koSa]
;swrI apane bacce kI mqwyu para Soka karanA jAri raKI.
(defrule lament3
(declare (salience 4850))
(id-root ?id lament)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-object  ?id ?id1)
(id-root ?id1 death)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Soka_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  lament.clp 	lament3   "  ?id "  Soka_kara )" crlf))
)
