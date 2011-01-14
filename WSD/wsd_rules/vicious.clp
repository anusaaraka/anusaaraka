
(defrule vicious0
(declare (salience 5000))
(id-root ?id vicious)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id krUra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  vicious.clp 	vicious0   "  ?id "  krUra )" crlf))
)

(defrule vicious1
(declare (salience 4900))
(id-root ?id vicious)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id xurAcArI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  vicious.clp 	vicious1   "  ?id "  xurAcArI )" crlf))
)

;"vicious","Adj","1.xurAcArI"
;Hyde was a vicious person
;--"2.ugra"
;Leopard is a vicious animal
;--"3.kaRtaxAyaka"
;Jane is suffering from vicious migrane
;
;
