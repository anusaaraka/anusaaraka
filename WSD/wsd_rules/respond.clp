
(defrule respond0
(declare (salience 5000))
(id-root ?id respond)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kiwAba_ke_bIca_meM_gAyA_jAnevAlA_Bajana))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  respond.clp 	respond0   "  ?id "  kiwAba_ke_bIca_meM_gAyA_jAnevAlA_Bajana )" crlf))
)

;"respond","N","1.kiwAba_ke_bIca_meM_gAyA_jAnevAlA_Bajana"
;Girls sang respond at musical night. 
;
(defrule respond1
(declare (salience 4900))
(id-root ?id respond)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id prawyuwwara_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  respond.clp 	respond1   "  ?id "  prawyuwwara_xe )" crlf))
)

; changed to prawyuwwara; cmp with answer	Amba
;default_sense && category=verb	uwwara_xe	0
;"respond","VT","1.uwwara_xenA"
;I responded to her letter with a phone call.
;--"2.prawikriyA_karanA"
;Animals respond to kindness.  
;--"3.baxale_me_kuCa_karanA_yA_kahanA"
;He cicked the dog which responded with a growl.
;He responded to my volley with a back hand. 
;
