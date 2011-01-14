
(defrule perfect0
(declare (salience 5000))
(id-root ?id perfect)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id bilkula_TIka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  perfect.clp 	perfect0   "  ?id "  bilkula_TIka )" crlf))
)

;"perfect","Adj","1.bilkula_TIka"
;--"2.saMpUrNa"
;This is an absolutely perfect set of cutlery.
;--"3.hI"
;This is the perfect copy of the original document.
;--"4.AxarSa"
;A perfect score made by the opening batsman gives hope to win the game.
;--"5.pariSuxXa"
;They speak perfect French.
;--"6.BUwakAla_sambanXI"
;I have eaten' is the present perfect tense of'eat'
;
(defrule perfect1
(declare (salience 4900))
(id-root ?id perfect)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pUrNaBUwa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  perfect.clp 	perfect1   "  ?id "  pUrNaBUwa )" crlf))
)

;"perfect","N","1.pUrNaBUwa"
;The verb is in the perfect.
;
(defrule perfect2
(declare (salience 4800))
(id-root ?id perfect)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id paripUrNa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  perfect.clp 	perfect2   "  ?id "  paripUrNa_kara )" crlf))
)

;"perfect","V","1.paripUrNa_karanA"
;She is an artist who spent years perfecting her creativity.
;
