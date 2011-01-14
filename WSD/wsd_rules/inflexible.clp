
(defrule inflexible0
(declare (salience 5000))
(id-root ?id inflexible)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id aparivarwanIya))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  inflexible.clp 	inflexible0   "  ?id "  aparivarwanIya )" crlf))
)

(defrule inflexible1
(declare (salience 4900))
(id-root ?id inflexible)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id atala))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  inflexible.clp 	inflexible1   "  ?id "  atala )" crlf))
)

;"inflexible","Adj","1.atala"
;A man of inflexible purpose
;--"2.alacIlI"
;An inflexible iron bar
;
;
