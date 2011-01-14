
(defrule superlative0
(declare (salience 5000))
(id-root ?id superlative)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sarvowwama))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  superlative.clp 	superlative0   "  ?id "  sarvowwama )" crlf))
)

;"superlative","Adj","1.sarvowwama"
;These fruits are of superlative quality.
;
(defrule superlative1
(declare (salience 4900))
(id-root ?id superlative)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sarvowwamawA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  superlative.clp 	superlative1   "  ?id "  sarvowwamawA )" crlf))
)

;"superlative","N","1.sarvowwamawA"
;He was talking in superlatives.
;
