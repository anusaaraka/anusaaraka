
(defrule ace0
(declare (salience 5000))
(id-root ?id ace)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id bahuwa_acCA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  ace.clp 	ace0   "  ?id "  bahuwa_acCA )" crlf))
)

;"ace","Adj","1.bahuwa_acCA"
;V.Anand is an ace chess player.
;
(defrule ace1
(declare (salience 4900))
(id-root ?id ace)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ikkA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  ace.clp 	ace1   "  ?id "  ikkA )" crlf))
)

;"ace","N","1.ikkA{wASa_kA)"
;I just need an ace of diamond to win the game.
;--"2.kuSala"
;V.Anand is an ace chess player of India.
;--"3.{tenisa_meM)sarvisa_jo_prawixvanxI_nahIM_Kela_pAwA"
;Pete Sampras hit 21 aces in yesterday's match.
;
