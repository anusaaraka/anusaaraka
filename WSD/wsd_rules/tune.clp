
(defrule tune0
(declare (salience 5000))
(id-root ?id tune)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Xuna))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  tune.clp 	tune0   "  ?id "  Xuna )" crlf))
)

;"tune","N","1.Xuna"
;Play a tune correctly on the flute.



;Modified by Meena (29.4.10)
;Hindi meaning modified as "lagAnA" seems more appropriate than "milAnA"
;When we want to hear a music programme on the radio , we have to tune the radio to the correct station .
(defrule tune1
(declare (salience 4900))
(id-root ?id tune)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 radio|television|machine)
(kriyA-object ?id ?id1)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id lagA))
;(assert (id-wsd_root_mng ?id milA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  tune.clp      tune1   "  ?id "  lagA )" crlf))
)





(defrule tune2
(declare (salience 4800))
(id-root ?id tune)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sura_milA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  tune.clp 	tune2   "  ?id "  sura_milA )" crlf))
)

;"tune","V","1.sura_milAnA"
;The violinist had to tune his instrument with the guitarist.
;--"2.ke_anukUla_banA_lenA"
;He had to tune his car according to the sharp slopes.
;--"3.ke_anukUla_honA"
;His answers were finely tuned to what the interviewers wanted.
;
