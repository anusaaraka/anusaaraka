
(defrule buoyant0
(declare (salience 5000))
(id-root ?id buoyant)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id mUlyoM_kA_baDZAva))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  buoyant.clp 	buoyant0   "  ?id "  mUlyoM_kA_baDZAva )" crlf))
)

(defrule buoyant1
(declare (salience 4900))
(id-root ?id buoyant)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id praPulliwa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  buoyant.clp 	buoyant1   "  ?id "  praPulliwa )" crlf))
)

;"buoyant","Adj","1.praPulliwa"
;Buoyant spirits
;--"2.wErawA_huA/bahawA_huA"
;Buoyant balloons
;
;
