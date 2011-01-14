
(defrule salve0
(declare (salience 5000))
(id-root ?id salve)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id marahama))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  salve.clp 	salve0   "  ?id "  marahama )" crlf))
)

;"salve","N","1.marahama"
;We use Betadine ( an antiseptic cream ) as a salve on wounds.
;
(defrule salve1
(declare (salience 4900))
(id-root ?id salve)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id SAnwa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  salve.clp 	salve1   "  ?id "  SAnwa_kara )" crlf))
)

;"salve","V","1.SAnwa_karanA"
;The gift was his way of salving his conscience. 
;
