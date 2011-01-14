
(defrule crude0
(declare (salience 5000))
(id-root ?id crude)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id aSoXiwa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  crude.clp 	crude0   "  ?id "  aSoXiwa )" crlf))
)

(defrule crude1
(declare (salience 4900))
(id-root ?id crude)
?mng <-(meaning_to_be_decided ?id)
(id-cat ?id adjective|adjective_comparative|adjective_superlative)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id aSoXiwa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  crude.clp 	crude1   "  ?id "  aSoXiwa )" crlf))
)

;"crude","Adj","1.aSoXiwa"
;Copper occurs in the crude form as sulphide
;--"2.apariRkqwa"
;The boy made a crude sketch of the portrait 
;
;