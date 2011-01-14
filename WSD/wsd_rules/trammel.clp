
(defrule trammel0
(declare (salience 5000))
(id-root ?id trammel)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pAbanxI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  trammel.clp 	trammel0   "  ?id "  pAbanxI )" crlf))
)

;"trammel","N","1.pAbanxI"
;Trammels of superstitions hamper progress.
;
(defrule trammel1
(declare (salience 4900))
(id-root ?id trammel)
?mng <-(meaning_to_be_decided ?id)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id banXana_lagA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  trammel.clp 	trammel1   "  ?id "  banXana_lagA )" crlf))
)

(defrule trammel2
(declare (salience 4800))
(id-root ?id trammel)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id banXana_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  trammel.clp 	trammel2   "  ?id "  banXana_ho )" crlf))
)

;"trammel","VT","1.banXana_honA[lagAnA]"
;He is no longer trammelled by his  duties as Head.
;
