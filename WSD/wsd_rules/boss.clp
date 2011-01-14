
(defrule boss0
(declare (salience 5000))
(id-root ?id boss)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id bOYsa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  boss.clp 	boss0   "  ?id "  bOYsa )" crlf))
)

;"boss","N","1.bOYsa"
;The boss hired three more men for the new job
;He is his own boss now
;Party bosses have a reputation for corruption
;
(defrule boss1
(declare (salience 4900))
(id-root ?id boss)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id prabanXa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  boss.clp 	boss1   "  ?id "  prabanXa_kara )" crlf))
)

;"boss","VT","1.prabanXa_karanA/xeKaBAla_karanA"
;He bosses around here.
;
