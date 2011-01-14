
(defrule waterproof0
(declare (salience 5000))
(id-root ?id waterproof)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id jala_roXaka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  waterproof.clp 	waterproof0   "  ?id "  jala_roXaka )" crlf))
)

;"waterproof","Adj","1.jala_roXaka"
;This is a waterproof material
;
(defrule waterproof1
(declare (salience 4900))
(id-root ?id waterproof)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id jalaroXaka_kapadZA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  waterproof.clp 	waterproof1   "  ?id "  jalaroXaka_kapadZA )" crlf))
)

;"waterproof","N","1.jalaroXaka_kapadZA"
;You must take the jacket which is waterproof
;
