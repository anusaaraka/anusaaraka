
(defrule frank0
(declare (salience 5000))
(id-root ?id frank)
?mng <-(meaning_to_be_decided ?id)
(id-cat ?id adjective|adjective_comparative|adjective_superlative)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id spaRtavAxI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  frank.clp 	frank0   "  ?id "  spaRtavAxI )" crlf))
)

;"frank","Adj","1.spaRtavAxI"
;--"2.spaRtavAxI/sarala"
;Everybody should be frank in speech/reply.
;
(defrule frank1
(declare (salience 4900))
(id-root ?id frank)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id tikata_lagA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  frank.clp 	frank1   "  ?id "  tikata_lagA )" crlf))
)

;"frank","V","1.tikata_lagA"
;They franked the letters.
;
