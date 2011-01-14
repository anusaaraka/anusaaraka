
(defrule criminal0
(declare (salience 5000))
(id-root ?id criminal)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
(id-root =(+ ?id 1) ~charge);added by sheetal
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id AparAXika))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  criminal.clp 	criminal0   "  ?id "  AparAXika )" crlf))
)

;"criminal","Adj","1.AparAXika"
;No one can stop his criminal activities.
;It is criminal to waste energy.
;--"2.POjaxArI_kA"
;He takes up only criminal cases.
;Criminal charges will be brought against the driver.
(defrule criminal1
(declare (salience 4900))
(id-root ?id criminal)
?mng <-(meaning_to_be_decided ?id)
(or (id-cat_coarse ?id noun)(viSeRya-viSeRaNa ?id1 ?id));"viSeRya-viSeRaNa"added by sheetal
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id aparAXI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  criminal.clp 	criminal1   "  ?id "  aparAXI )" crlf))
)

;"criminal","N","1.aparAXI"
;The locality is full of criminal.
;
