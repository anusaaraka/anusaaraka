
(defrule rein0
(declare (salience 5000))
(id-root ?id rein)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id bAgadora))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  rein.clp 	rein0   "  ?id "  bAgadora )" crlf))
)

;"rein","N","1.bAgadora"
;The rider holds && pulls the reins in order to control the horse.
;
(defrule rein1
(declare (salience 4900))
(id-root ?id rein)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id lagAma_caDZA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  rein.clp 	rein1   "  ?id "  lagAma_caDZA )" crlf))
)

;"rein","VT","1.lagAma_caDZAnA"
;The efforts are going on to rein in terrorists' activities at the border.  
;
