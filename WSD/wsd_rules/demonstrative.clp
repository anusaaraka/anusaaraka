
(defrule demonstrative0
(declare (salience 5000))
(id-root ?id demonstrative)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id niScayavAcaka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  demonstrative.clp 	demonstrative0   "  ?id "  niScayavAcaka )" crlf))
)

(defrule demonstrative1
(declare (salience 4900))
(id-root ?id demonstrative)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id BAvapraxarSaka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  demonstrative.clp 	demonstrative1   "  ?id "  BAvapraxarSaka )" crlf))
)

;"demonstrative","Adj","1.BAvapraxarSaka"
;Indians are not very demonstrative.
;--"2.niScayavAcaka
;`that' is a demonstrative pronoun.
;
;
