
(defrule trample0
(declare (salience 5000))
(id-root ?id trample)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id rOMxanA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  trample.clp 	trample0   "  ?id "  rOMxanA )" crlf))
)

(defrule trample1
(declare (salience 4900))
(id-root ?id trample)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kucala))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  trample.clp 	trample1   "  ?id "  kucala )" crlf))
)

;"trample","VT","1.kucalanA"
;The cows trampled the garden.
;--"2.wiraskAra_karanA"
;I trample him because of his misbehaviour .
;
;