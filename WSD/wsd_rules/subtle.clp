
(defrule subtle0
(declare (salience 5000))
(id-root ?id subtle)
?mng <-(meaning_to_be_decided ?id)
(id-cat ?id adjective|adjective_comparative|adjective_superlative)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sUkRma))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  subtle.clp 	subtle0   "  ?id "  sUkRma )" crlf))
)

(defrule subtle1
(declare (salience 4900))
(id-root ?id subtle)
?mng <-(meaning_to_be_decided ?id)
(id-cat ?id adjective|adjective_comparative|adjective_superlative)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sUkRma))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  subtle.clp 	subtle1   "  ?id "  sUkRma )" crlf))
)

;"subtle","Adj","1.sUkRma"
;Her mind is very subtle.
;
;
