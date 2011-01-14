
(defrule stole0
(declare (salience 5000))
(id-root ?id stole)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id xupattA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  stole.clp 	stole0   "  ?id "  xupattA )" crlf))
)

;"stole","N","1.xupattA"
;The stole on her shoulder enhanced her beauty. 
;
(defrule stole1
(declare (salience 4900))
(id-root ?id stole)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id curAyA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  stole.clp 	stole1   "  ?id "  curAyA )" crlf))
)

;"stole","V","1.curAyA"
;My maid servant stole my pair of shoes.
;
