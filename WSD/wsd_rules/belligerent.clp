
(defrule belligerent0
(declare (salience 5000))
(id-root ?id belligerent)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id yuxXakArI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  belligerent.clp 	belligerent0   "  ?id "  yuxXakArI )" crlf))
)

;"belligerent","Adj","1.yuxXakArI"
;He is quite belligerent.
;
(defrule belligerent1
(declare (salience 4900))
(id-root ?id belligerent)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id yoxXA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  belligerent.clp 	belligerent1   "  ?id "  yoxXA )" crlf))
)

;"belligerent","N","1.yoxXA"
;Maharana Pratap was a great belligerent.
;
