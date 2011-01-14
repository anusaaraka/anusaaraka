
(defrule pain0
(declare (salience 5000))
(id-root ?id pain)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id xarxa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  pain.clp 	pain0   "  ?id "  xarxa )" crlf))
)

;"pain","N","1.xarxa"
;Her knee joint has a lot of pain.
;usake Gutane ke jodZa meM bahuwa xarxa hE.
;--"2.xuKZa"
;She took lot of pains to get her daughter educated.
;usane apanI betI ko paDZAne ke lie bahuwa xuKa uTAe.
;
(defrule pain1
(declare (salience 4900))
(id-root ?id pain)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id xarxa_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  pain.clp 	pain1   "  ?id "  xarxa_ho )" crlf))
)

;"pain","V","1.xarxa_honA"
;Yesterday Romi's leg was paining thats why she couldn't come to the party.
;
