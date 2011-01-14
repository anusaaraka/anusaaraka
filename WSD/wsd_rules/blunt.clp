
(defrule blunt0
(declare (salience 5000))
(id-root ?id blunt)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sAPa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  blunt.clp 	blunt0   "  ?id "  sAPa )" crlf))
)

(defrule blunt1
(declare (salience 4900))
(id-root ?id blunt)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id BOMWarA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  blunt.clp 	blunt1   "  ?id "  BOMWarA )" crlf))
)

;"blunt","Adj","1.BOMWarA"
;Lot of writing blunts a pencil.
;--"2.muzhaPata"
;We shouldn't be blunt in our speech.
;
;
