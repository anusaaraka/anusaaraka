
(defrule tramp0
(declare (salience 5000))
(id-root ?id tramp)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id AvArAgarxa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  tramp.clp 	tramp0   "  ?id "  AvArAgarxa )" crlf))
)

;"tramp","N","1.AvArAgarxa"
;He is a tramp.
;--"2.paxa_yAwrA"
;During his trams in the forests he discovereds variou new species of plants.
;--"3.paxacApa"
;We heard the tramp of the marching army.
;
(defrule tramp1
(declare (salience 4900))
(id-root ?id tramp)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Xaba-Xaba_karawe_hue_cala))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  tramp.clp 	tramp1   "  ?id "  Xaba-Xaba_karawe_hue_cala )" crlf))
)

;"tramp","VT","1.Xaba-Xaba_karawe_hue_calanA"
;The intruders came tramping through the enterance.
;--"2.paxa_yAwrA_karanA"
;Pilgrims tramp to Badrinath.
;

;@@@ Added by Prachi Rathore[25-2-14]
;--"3.paxacApa"
;We heard the tramp of the marching army.
(defrule tramp2
(declare (salience 5050))
(id-root ?id tramp)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(viSeRya-of_saMbanXI  ?id ?)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id paxacApa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  tramp.clp 	tramp2   "  ?id "  paxacApa )" crlf))
)

