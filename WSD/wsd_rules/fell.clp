
(defrule fell0
(declare (salience 5000))
(id-root ?id fell)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pahAdZI_ilAkA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  fell.clp 	fell0   "  ?id "  pahAdZI_ilAkA )" crlf))
)

;"fell","N","1.ú
;Lakeland fells.
;
(defrule fell1
(declare (salience 4900))
(id-root ?id fell)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kAta_girA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  fell.clp 	fell1   "  ?id "  kAta_girA )" crlf))
)

(defrule fell2
(declare (salience 1300))
(id-root ?id fall)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id gira))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  fell.clp    fell2   "  ?id "  gira )" crlf))
)

;"fell","V","1.kAta_girAnA"
