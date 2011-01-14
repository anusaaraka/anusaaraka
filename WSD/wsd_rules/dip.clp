
(defrule dip0
(declare (salience 5000))
(id-root ?id dip)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id dubAva))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  dip.clp 	dip0   "  ?id "  dubAva )" crlf))
)

;"dip","N","1.dubAva"
;There was a slight dip in onion price this week.
;
(defrule dip1
(declare (salience 4900))
(id-root ?id dip)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id dubA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  dip.clp 	dip1   "  ?id "  dubA )" crlf))
)

;"dip","V","1.dubAnA"
;I dipped my pen into the ink.
;--"2.kama_honA"
;The value of rupee has dipped an all time low.
;--"3.nIce_ko_AnA"
;The land dips to the south.
;
