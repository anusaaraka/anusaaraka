
(defrule spiral0
(declare (salience 5000))
(id-root ?id spiral)
?mng <-(meaning_to_be_decided ?id)
(id-word =(- ?id 2) elliptical)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sarpila))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  spiral.clp 	spiral0   "  ?id "  sarpila )" crlf))
)

(defrule spiral1
(declare (salience 4900))
(id-root ?id spiral)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sarpila))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  spiral.clp 	spiral1   "  ?id "  sarpila )" crlf))
)

;"spiral","Adj","1.sarpila"
;A solenoid is in spiral form.
;
(defrule spiral2
(declare (salience 4800))
(id-root ?id spiral)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kuNdalI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  spiral.clp 	spiral2   "  ?id "  kuNdalI )" crlf))
)

;"spiral","N","1.kuNdalI/pecaka"
;Galaxies are generally of two kinds : spiral && non-spiral.
;--"2.uwwarowwara_vqxXi_yA_GatawI"
;Destructive spirals of the crime.
;
