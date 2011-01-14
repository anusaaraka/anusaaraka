
(defrule prostitute0
(declare (salience 5000))
(id-root ?id prostitute)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id veSyA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  prostitute.clp 	prostitute0   "  ?id "  veSyA )" crlf))
)

;"prostitute","N","1.veSyA"
;The circumstances forced her to work as a prostitute.
;
(defrule prostitute1
(declare (salience 4900))
(id-root ?id prostitute)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id nIca_kAma_meM_laga))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  prostitute.clp 	prostitute1   "  ?id "  nIca_kAma_meM_laga )" crlf))
)

;"prostitute","V","1.nIca_kAma_meM_laganA"
;He prostituted his talents as an artist by painting cinema posters.
;
