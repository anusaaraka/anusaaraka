
(defrule facetious0
(declare (salience 5000))
(id-root ?id facetious)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id majZAkiyA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  facetious.clp 	facetious0   "  ?id "  majZAkiyA )" crlf))
)

(defrule facetious1
(declare (salience 4900))
(id-root ?id facetious)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id hazsAnevAle))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  facetious.clp 	facetious1   "  ?id "  hazsAnevAle )" crlf))
)

;"facetious","Adj","1.hazsAnevAle"
;He kept making facetious remarks in the hall.
;
;
