
(defrule onward0
(declare (salience 5000))
(id-root ?id onward)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id baDZawe_hue))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  onward.clp 	onward0   "  ?id "  baDZawe_hue )" crlf))
)

;"onward","Adj","1.baDZawe_hue"
;They continued the onward march.
;
(defrule onward1
(declare (salience 4900))
(id-root ?id onward)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adverb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Age))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  onward.clp 	onward1   "  ?id "  Age )" crlf))
)

;"onward","Adv","1.Age"
;The library is open from 7.am onwards.
;
