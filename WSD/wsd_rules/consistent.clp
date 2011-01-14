
(defrule consistent0
(declare (salience 5000))
(id-root ?id consistent)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id saMgawa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  consistent.clp 	consistent0   "  ?id "  saMgawa )" crlf))
)

(defrule consistent1
(declare (salience 4900))
(id-root ?id consistent)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id aparivarwanaSIla))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  consistent.clp 	consistent1   "  ?id "  aparivarwanaSIla )" crlf))
)

;"consistent","Adj","1.aparivarwanaSIla/samAna/eka_sA"
;Steffi Graf had been very consistent in her game.
;
;
