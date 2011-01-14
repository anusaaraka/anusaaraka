
(defrule chap0
(declare (salience 5000))
(id-root ?id chap)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ladZakA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  chap.clp 	chap0   "  ?id "  ladZakA )" crlf))
)

;"chap","N","1.ladZakA"
;That chap is your host
;
(defrule chap1
(declare (salience 4900))
(id-root ?id chap)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id wadZaka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  chap.clp 	chap1   "  ?id "  wadZaka )" crlf))
)

;"chap","V","1.wadZakanA"
;My lips chap in this dry weather
;
