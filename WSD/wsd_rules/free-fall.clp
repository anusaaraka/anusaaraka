;Added by Meena(19.7.11)
;When the dollar is in a free-fall, even central banks can not stop it. 
(defrule free-fall01
(declare (salience 4800))
(id-root ?id free-fall)
?mng <-(meaning_to_be_decided ?id)
;(id-word ?id1 free)
(id-cat_coarse ?id noun)
(id-root ?id2 dollar|pound|price|value|euro)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id  BArI_girAvata))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* " free-fall.clp  free-fall01  "  ?id "   BArI_girAvata  )" crlf))
)


