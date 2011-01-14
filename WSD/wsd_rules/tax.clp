
(defrule tax0
(declare (salience 5000))
(id-root ?id tax)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id taxing )
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id BAra_dAlanA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  tax.clp  	tax0   "  ?id "  BAra_dAlanA )" crlf))
)

;"taxing","Adj","1.BAra_dAlanA"
;You are taxing him beyond his ability.
;
(defrule tax1
(declare (salience 4900))
(id-root ?id tax)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  tax.clp 	tax1   "  ?id "  kara )" crlf))
)

(defrule tax2
(declare (salience 4800))
(id-root ?id tax)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kara_lagA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  tax.clp 	tax2   "  ?id "  kara_lagA )" crlf))
)

;"tax","VT","1.kara_lagAnA"
;His property was taxed.
;
;LEVEL 
;
;
;"tax","N","1.kara"
;We have to pay tax regularly.
;
;"tax","VT","1.kara_lagAnA" <--kara`
;His property was taxed.
;
;"2.kara xenA" <--kara`
;His car is taxed until december.  
;
;"3.xavAba dAlanA" <--xabAva dAlanA
;All these employees are beginning to tax my patience.
;
;"taxing","Adj","1.BAra_dAlanA" <--xabAva dAlanA
;You are taxing him beyond his ability.
;
;
;nota :--uparyukwa samaswa vAkyoM para yaxi xqRti dAleM wo "tax" Sabxa ke liye sUwra 
;       nimna prakAra se liKa sakawe hEM.
;          
;sUwra : kara`[>xabAva dAlanA]  
;
