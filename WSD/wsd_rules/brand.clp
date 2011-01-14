
(defrule brand0
(declare (salience 5000))
(id-root ?id brand)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id brAMda))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  brand.clp 	brand0   "  ?id "  brAMda )" crlf))
)

;"brand","N","1.brAMda{cihna}"
;There's a new brand of hero in the movies now
;
(defrule brand1
(declare (salience 4900))
(id-root ?id brand)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id cihna_banA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  brand.clp 	brand1   "  ?id "  cihna_banA )" crlf))
)

;"brand","VT","1.cihna_banAnA"
;She was branded a loose woman
;
