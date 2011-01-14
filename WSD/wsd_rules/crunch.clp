
(defrule crunch0
(declare (salience 5000))
(id-root ?id crunch)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id carvaNa_karanA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  crunch.clp 	crunch0   "  ?id "  carvaNa_karanA )" crlf))
)

;"crunch","N","1.carvaNa_karanA"
;He bit the appricot with a crunch
;
(defrule crunch1
(declare (salience 4900))
(id-root ?id crunch)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id carvaNa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  crunch.clp 	crunch1   "  ?id "  carvaNa_kara )" crlf))
)

;"crunch","VT","1.carvaNa_karanA"
;The boy was crunching the popcorns
;--"2.kucalanA"
;The road roller crunched the gravel
;--"3.saMgaNanA_karanA"
;He crunched the data rapidly
;
