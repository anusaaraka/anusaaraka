
(defrule earnest0
(declare (salience 5000))
(id-root ?id earnest)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id wawpara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  earnest.clp 	earnest0   "  ?id "  wawpara )" crlf))
)

;"earnest","Adj","1.wawpara"
;--"2.xqDa_saMkalpa"
;He is an earnest student.
;
(defrule earnest1
(declare (salience 4900))
(id-root ?id earnest)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pUrva_sUcanA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  earnest.clp 	earnest1   "  ?id "  pUrva_sUcanA )" crlf))
)

;"earnest","N","1.pUrva_sUcanA"
