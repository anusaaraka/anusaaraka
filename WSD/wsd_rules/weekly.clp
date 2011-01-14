
(defrule weekly0
(declare (salience 5000))
(id-root ?id weekly)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sApwAhika))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  weekly.clp 	weekly0   "  ?id "  sApwAhika )" crlf))
)

;"weekly","Adj","1.sApwAhika"
;His weekly trip was cancelled.
;
(defrule weekly1
(declare (salience 4900))
(id-root ?id weekly)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adverb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id prawi_sapwAha))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  weekly.clp 	weekly1   "  ?id "  prawi_sapwAha )" crlf))
)

;"weekly","Adv","1.prawi_sapwAha"
;The lab must be checked weekly.
;
(defrule weekly2
(declare (salience 4800))
(id-root ?id weekly)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sApwAhika_pawra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  weekly.clp 	weekly2   "  ?id "  sApwAhika_pawra )" crlf))
)

;"weekly","N","1.sApwAhika_pawra"
;I am reading a weekly.
;
