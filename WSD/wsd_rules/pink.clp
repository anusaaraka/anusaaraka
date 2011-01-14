
(defrule pink0
(declare (salience 5000))
(id-root ?id pink)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id gulAbI_raMga_kA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  pink.clp 	pink0   "  ?id "  gulAbI_raMga_kA )" crlf))
)

;"pink","Adj","1.gulAbI_raMga_kA"
;Preeti came to the party in a pink coloured dress.
;--"2.bahuwa_acCA"
;During elections, everyone want to be pink.
;
(defrule pink1
(declare (salience 4900))
(id-root ?id pink)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id gulAbI_raMga))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  pink.clp 	pink1   "  ?id "  gulAbI_raMga )" crlf))
)

;"pink","N","1.gulAbI_raMga"
;Pink colour suits you a lot.
;--"2.gulAbI_kapade"
;Neetu was in pink coloured dress.
;--"3.gulAbI_PUla"
;Those roses are red.
;
(defrule pink2
(declare (salience 4800))
(id-root ?id pink)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Sora_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  pink.clp 	pink2   "  ?id "  Sora_kara )" crlf))
)

;"pink","V","1.Sora_karanA"
;A truck was making a lot of pink sound.
;
