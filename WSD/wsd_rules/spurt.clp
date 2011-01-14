
(defrule spurt0
(declare (salience 5000))
(id-root ?id spurt)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id wejZa_gawi))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  spurt.clp 	spurt0   "  ?id "  wejZa_gawi )" crlf))
)

;"spurt","N","1.wejZa_gawi"
;He make a spurt to catch the bus.
;--"2.PuhArA/XArA"
;The main lava come out with a loud spurt.
;
(defrule spurt1
(declare (salience 4900))
(id-root ?id spurt)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id PUta_nikala))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  spurt.clp 	spurt1   "  ?id "  PUta_nikala )" crlf))
)

;"spurt","V","1.PUta_nikalanA"
;Water spurted out from the geyser.
;--"2.WodZI_xera_waka_badZI_wejZI_se_kAma_karanA"
;The thief spurted out when he saw the watchman comming.
;
