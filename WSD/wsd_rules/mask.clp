
(defrule mask0
(declare (salience 5000))
(id-root ?id mask)
?mng <-(meaning_to_be_decided ?id)
(id-root =(+ ?id 1) man)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id muKotA_XArI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  mask.clp 	mask0   "  ?id "  muKotA_XArI )" crlf))
)

(defrule mask1
(declare (salience 4900))
(id-root ?id mask)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id masked )
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id muKOtA_XArI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  mask.clp  	mask1   "  ?id "  muKOtA_XArI )" crlf))
)

;
(defrule mask2
(declare (salience 4800))
(id-root ?id mask)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id masked )
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id CipA))
;(assert (id-H_vib_mng ?id ed_en)) ;Suggested by Sukhada(20-05-13)
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng  " ?*wsd_dir* "  mask.clp  	mask2   "  ?id "  CipA )" crlf)
;(printout wsd_fp "(dir_name-file_name-rule_name-id-H_vib_mng  " ?*wsd_dir* "  mask.clp       mask2   "  ?id " ed_en )" crlf))
))

;
(defrule mask3
(declare (salience 4700))
(id-root ?id mask)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id muKOtA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  mask.clp 	mask3   "  ?id "  muKOtA )" crlf))
)

;"mask","N","1.muKOtA"
;She conceals her worries behind a mask of cheerfulness.
;
(defrule mask4
(declare (salience 4600))
(id-root ?id mask)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id CipA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  mask.clp 	mask4   "  ?id "  CipA )" crlf))
)

;"mask","V","1.CipAnA"
;The thief had masked his features with a stocking.
;
