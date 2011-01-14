
(defrule pastoral0
(declare (salience 5000))
(id-root ?id pastoral)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pAxarI_sambanXI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  pastoral.clp 	pastoral0   "  ?id "  pAxarI_sambanXI )" crlf))
)

;"pastoral","Adj","1.pAxarI_sambanXI"
;This new pastor carries out his pastoral duties whole heartedly.
;--"2.grAmya"
;He talks a lot about pastoral life.
;
(defrule pastoral1
(declare (salience 4900))
(id-root ?id pastoral)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id grAmya))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  pastoral.clp 	pastoral1   "  ?id "  grAmya )" crlf))
)

;"pastoral","N","1.grAmya{grAmINa_jIvana_kA_ciwra_KIMcawI_huI_wasvIra_yA_kaviwA}"
;'Paradise Lost' is a pastoral poem written by Milton.
;
