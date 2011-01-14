
(defrule eerie0
(declare (salience 5000))
(id-root ?id eerie)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id dara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  eerie.clp 	eerie0   "  ?id "  dara )" crlf))
)

(defrule eerie1
(declare (salience 4900))
(id-root ?id eerie)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id darAvanI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  eerie.clp 	eerie1   "  ?id "  darAvanI )" crlf))
)

;"eerie","Adj","1.darAvanI"
;A strange && eerie silence prevailed in the house.
;
;
