
(defrule lord0
(declare (salience 5000))
(id-root ?id lord)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id aXipawi))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  lord.clp 	lord0   "  ?id "  aXipawi )" crlf))
)

;"lord","N","1.aXipawi"
;He is the lord in this area. Everybody has to obey him.
;--"2.sAmanwa"
;The British Lords.
;--"3.praBu"
;Lord Christ.
;--"4.lArda{upAXi}"
;The Lords of the treasury.
;
(defrule lord1
(declare (salience 4900))
(id-root ?id lord)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id aXipawya_xiKA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  lord.clp 	lord1   "  ?id "  aXipawya_xiKA )" crlf))
)

;"lord","V","1.aXipawya_xiKAnA"
;Because of their muscle power the goons lord over the local residents.
;
