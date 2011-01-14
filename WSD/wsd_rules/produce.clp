;Added by Meena(18.02.10)
;The native speakers of English do not produce a variable mishmash of words . 
(defrule produce0
(declare (salience 5000))
(id-root ?id produce)
?mng <-(meaning_to_be_decided ?id)
(kriyA-object ?id ?id1)
(id-root ?id2 word)
(viSeRya-of_saMbanXI ?id1 ?id2)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  produce.clp   produce0   "  ?id "  kara )" crlf))
)




;Salience reduced by Meena(24.5.10)
(defrule produce1
(declare (salience 5000))
(id-root ?id produce)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id upaja))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  produce.clp 	produce1   "  ?id "  upaja )" crlf))
)

;"produce","N","1.upaja"
;This year a large part of paddy produce got ruined by heavy rains.
;--"2.uwpAxa"
;The factory sells its produce in the local markets.
;



;Females of birds produce eggs .
(defrule produce2
(declare (salience 4900))
(id-root ?id produce)
(kriyA-object  ?id ?obj)
(id-root ?obj egg)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  produce.clp   produce2   "  ?id "  xe )" crlf))
)




;Added by Meena(20.5.10)
;The factory typically produces 500 chairs a week . 
(defrule produce3
(declare (salience 4800))
(id-root ?id produce)
?mng <-(meaning_to_be_decided ?id)
;(id-root ?id1 chair|table|cot)
(kriyA-object ?id ?id1)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id banA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  produce.clp   produce3   "  ?id "  banA )" crlf))
)



;Salience reduced by Meena(20.5.10)
(defrule produce4
(declare (salience 0))
;(declare (salience 4800))
(id-root ?id produce)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id uwpAxana_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  produce.clp 	produce4   "  ?id "  uwpAxana_kara )" crlf))
)

;"produce","V","1.uwpAxana_karanA"
;My uncle's factory produce shoes.
;--"2.racanA_karanA"
;Monalisa was the best work produced by Picasso.
;--"3.parisWiwi_uwpanna_karanA"
;My arrival at home produced many problems for him.
;--"4.praswuwa_karanA"
;The operator produced the bill immediately.
;
