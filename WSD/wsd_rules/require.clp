
;Added by Meena(26.8.10)
;Many sentences are required to test the rule for debugging .
(defrule require00
(declare (salience 4900))
(id-root ?id require)
?mng <-(meaning_to_be_decided ?id)
(or(kriyA-kqxanwa_karma  ?id ?id1)(kriyA-for_saMbanXI  ?id ?id1)(kriyA-subject ?id ?id1))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id  jarUrI_hE))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  require.clp   require00   "  ?id "  jarUrI_hE)" crlf))
)

(defrule require01
(declare (salience 4900))
(id-root ?id require)
?mng <-(meaning_to_be_decided ?id)
(or(kriyA-of_saMbanXI  ?id ?id1)(kriyA-from_saMbanXI  ?id ?id1)
(and(kriyA-kqxanwa_karma  ?id ?id1)(id-root ?id1 put|stop))
)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id  apekRiwa_hE))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  require.clp   require01   "  ?id "  apekRiwa_hE)" crlf))
)





;Added by Meena(26.8.10)
;Mohan requires a book.
(defrule require0
(declare (salience 4800))
(id-root ?id require)
?mng <-(meaning_to_be_decided ?id)
;(id-word ?id required) 
;(or (kriyA-object ?id ?)(kriyA-subject ?id ?))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id  jarUrawa))
(assert (kriyA_id-object_viBakwi ?id kI))
(assert (kriyA_id-subject_viBakwi ?id ko))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  require.clp   require0   "  ?id "  jarUrawa)" crlf))
)

