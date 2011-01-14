
(defrule feed0
(declare (salience 5000))
(id-root ?id feed)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id KAnA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  feed.clp 	feed0   "  ?id "  KAnA )" crlf))
)

;"feed","N","1.KAnA"
;The baby had the last feed two hours ago.
;--"2.mAla{maSIna_meM_iswemAla_kiye_jAnevAlA}"
;--"3.pAIpa{jisase_maSIna_ko_wela_Axi_xewe_hEM}"
;Petrol feed of this car is chocked up.
;
(defrule feed1
(declare (salience 4900))
(id-root ?id feed)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id KAnA_KilA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  feed.clp 	feed1   "  ?id "  KAnA_KilA )" crlf))
)

;"feed","V","1.KAnA_KilAnA"
;She has a large family to feed.
;Feed the wood to the fire.
;--"2.xenA"
;Mohan feeds the information to me.
;--"3.dAlanA"
;To use a public phone, you have to feed coins into it.
;--"4.panapanA"
;Hatred feeds on envy.
;
