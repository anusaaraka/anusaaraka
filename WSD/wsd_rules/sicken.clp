
(defrule sicken0
(declare (salience 5000))
(id-root ?id sicken)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id sickening )
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id GinOnA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  sicken.clp  	sicken0   "  ?id "  GinOnA )" crlf))
)

;"sickening","Adj","1.GinOnA"
;It was a sickening sight.
;--"2.ubAU"
;It is sickening to think that we miss the aeroplane by five minutes.
;--"3.burI waraha"
;The bus hit the truck with a sickening crash.
;
(defrule sicken1
(declare (salience 4900))
(id-root ?id sicken)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id GqNA_uwpanna_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  sicken.clp 	sicken1   "  ?id "  GqNA_uwpanna_kara )" crlf))
)

;"sicken","V","1.GqNA_uwpanna_karanA"
;Cruelty sickens me.
;--"2.bImAra_padZa_jAnA"
;He slowly sickened && died.
;
