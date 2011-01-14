
(defrule spent0
(declare (salience 5000))
(id-root ?id spent)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Karca_kiyA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  spent.clp 	spent0   "  ?id "  Karca_kiyA )" crlf))
)

(defrule spent1
(declare (salience 4900))
(id-root ?id spent)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id WakA-hArA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  spent.clp 	spent1   "  ?id "  WakA-hArA )" crlf))
)

;"spent","Adj","1.WakA-hArA"
;He returned to the pavilion spent & cold.
;
;
