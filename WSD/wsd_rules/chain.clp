
(defrule chain0
(declare (salience 5000))
(id-root ?id chain)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id SruMKalA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  chain.clp 	chain0   "  ?id "  SruMKalA )" crlf))
)

(defrule chain1
(declare (salience 4900))
(id-root ?id chain)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sikadZI_bAzXa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  chain.clp 	chain1   "  ?id "  sikadZI_bAzXa )" crlf))
)

;"chain","V","1.sikadZI_bAzXanA"
;The dog was chained to the post.
;
;