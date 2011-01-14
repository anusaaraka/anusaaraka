
(defrule thin0
(declare (salience 5000))
(id-root ?id thin)
?mng <-(meaning_to_be_decided ?id)
(id-cat ?id adjective|adjective_comparative|adjective_superlative)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pawalA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  thin.clp 	thin0   "  ?id "  pawalA )" crlf))
)

;"thin","Adj","1.pawalA"
;The artist gave a  thin coat of colour to his painting.
;--"2.xubalA_pawalA"
;He is thin && emaciated.
;--"3.kRINa"
;We heard a thin feeble cry.
;--"4.virala"
;Air is thin at high altitudes.
;--"5.kama"
;She has a thin beard.
;
(defrule thin1
(declare (salience 4900))
(id-root ?id thin)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pawalA_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  thin.clp 	thin1   "  ?id "  pawalA_ho )" crlf))
)

;"thin","VI","1.pawalA_honA"
;He has thinned down a lot.
;
(defrule thin2
(declare (salience 4800))
(id-root ?id thin)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pawalA_yA_kama_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  thin.clp 	thin2   "  ?id "  pawalA_yA_kama_kara )" crlf))
)

;"thin","VT","1.pawalA_yA_kama_karanA"
;The silver foil is thinned by thrashing constantly.
;
