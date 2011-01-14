
(defrule carpet0
(declare (salience 5000))
(id-root ?id carpet)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kAlIna))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  carpet.clp 	carpet0   "  ?id "  kAlIna )" crlf))
)

;"carpet","N","1.kAlIna"
;They bought carpets from Kashmir.
;
(defrule carpet1
(declare (salience 4900))
(id-root ?id carpet)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kAlIna_biCA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  carpet.clp 	carpet1   "  ?id "  kAlIna_biCA )" crlf))
)

;"carpet","VT","1.kAlIna_biCAnA"
;They carpeted the stairs of the hall. 
;
