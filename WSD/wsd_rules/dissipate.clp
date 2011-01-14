
(defrule dissipate0
(declare (salience 5000))
(id-root ?id dissipate)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id dissipated )
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id xurvyasanI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  dissipate.clp  	dissipate0   "  ?id "  xurvyasanI )" crlf))
)

;"dissipated","Adj","1.xurvyasanI"
;He leads a dissipated life .
;
(defrule dissipate1
(declare (salience 4900))
(id-root ?id dissipate)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id xUra_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  dissipate.clp 	dissipate1   "  ?id "  xUra_kara )" crlf))
)

;"dissipate","VT","1.xUra_karanA"
;Her son's letter dissipated all her fears.
;--"2.apavyaya_karanA"
;He dissipated all his income in drinking.
;
;
