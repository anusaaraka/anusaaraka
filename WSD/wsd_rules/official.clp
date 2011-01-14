
(defrule official0
(declare (salience 5000))
(id-root ?id official)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id AXikArika))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  official.clp 	official0   "  ?id "  AXikArika )" crlf))
)

;"official","Adj","1.AXikArika"
;He has official powers to do anything.
;
(defrule official1
(declare (salience 4900))
(id-root ?id official)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id aXikArI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  official.clp 	official1   "  ?id "  aXikArI )" crlf))
)

;"official","N","1.aXikArI"
;He is a government official.
;
