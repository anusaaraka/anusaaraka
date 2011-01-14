
(defrule humble0
(declare (salience 5000))
(id-root ?id humble)
?mng <-(meaning_to_be_decided ?id)
(id-cat ?id adjective|adjective_comparative|adjective_superlative)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id namra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  humble.clp 	humble0   "  ?id "  namra )" crlf))
)

;"humble","Adj","1.namra/vinIwa/sIXA_sAxA"
;saMwa rAmAnuja 'humble'svaBAvI We.
;
(defrule humble1
(declare (salience 4900))
(id-root ?id humble)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id nIcAxiKA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  humble.clp 	humble1   "  ?id "  nIcAxiKA )" crlf))
)

;"humble","V","1.nIcAxiKAnA"
;use ucca paxa se hatAkara usakA 'humble' kiyA.
;
