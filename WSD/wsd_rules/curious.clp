;Added by Meena(20.10.09)
;Curious Uttama ordered it to be captured .
(defrule curious0
(declare (salience 4600))
(id-root ?id curious)
?mng <-(meaning_to_be_decided ?id)
(viSeRya-viSeRaNa ?id1 ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id jijFAsu))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  curious.clp      curious0   "  ?id "  jijFAsu )" crlf)
)
)

;Added by sheetal.
(defrule curious1
(declare (salience 4700))
(id-root ?id curious)
?mng <-(meaning_to_be_decided ?id)
(viSeRya-viSeRaNa ?id1 ?id)
(id-root ?id1 mixture)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id viciwra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  curious.clp      curious1   "  ?id "  viciwra )" crlf)
)
)
;They speak neither French nor German , but a curious mixture of the two.
