
(defrule average0
(declare (salience 5000))
(id-root ?id average)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Osawa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  average.clp 	average0   "  ?id "  Osawa )" crlf))
)

;"average","Adj","1.Osawa"
;Indian team needs an average of 6 runs per over.
;BArawIya tIma ko Osawa 6 rana prawi ovara kI AvaSyakawA hE.
;
(defrule average1
(declare (salience 4900))
(id-root ?id average)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Osawa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  average.clp 	average1   "  ?id "  Osawa )" crlf))
)

;"average","N","1.Osawa"
;This car has an average 40 miles an hour.
;isa gAdZI  kA 40 mIla prawi GaMtA Osawa hE.
;
(defrule average2
(declare (salience 4800))
(id-root ?id average)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Osawa_nikAla))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  average.clp 	average2   "  ?id "  Osawa_nikAla )" crlf))
)

;"average","VT","1.Osawa_nikAlanA"
;Meals average out at about Rs.10/- per head .
;KAne kA 1.rupaye prawi vyakwi kA Osawa nikalawA hE.
;
