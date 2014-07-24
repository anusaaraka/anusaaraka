
(defrule thunder0
(declare (salience 5000))
(id-root ?id thunder)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 roar)
(kriyA-subject ?id1 ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id bijalI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  thunder.clp 	thunder0   "  ?id "  bijalI )" crlf))
)


;xxxxxxxxxxxx Default rule xxxxxxxxxxxxxxxxx
(defrule thunder1
(declare (salience 4900))
(id-root ?id thunder)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id garaja))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  thunder.clp 	thunder1   "  ?id "  garaja )" crlf))
)

;"thunder","VT","1.garajanA"
;Ramesh thundered at Mohan.
;--"2.gadZagadZAhata_karanA"
;The bus thundered down the road.
;The river thundered below.
;
;

;@@@ Added by Prachi Rathore[6-2-14]
;The thunder of hooves.[oald]
;खुर की गर्जन . 
(defrule thunder2
(declare (salience 5000))
(id-root ?id thunder)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id garjana))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  thunder.clp 	thunder2   "  ?id "  garjana )" crlf))
)


