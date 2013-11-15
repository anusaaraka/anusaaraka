
(defrule bonnet0
(declare (salience 5000))
(id-root ?id bonnet)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id SiSu_Ora_swriyoM_kI_wanIxAra_topI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  bonnet.clp 	bonnet0   "  ?id "  SiSu_Ora_swriyoM_kI_wanIxAra_topI )" crlf))
)

(defrule bonnet1
(declare (salience 4900))
(id-root ?id bonnet)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 Mitsubishi )
(viSeRya-under_saMbanXI ?id1 ?id) ;Replaced viSeRya-under_viSeRaNa as viSeRya-under_saMbanXI programatically by Roja 09-11-13
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id SiSu_Ora_swriyoM_kI_wanIxAra_topI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  bonnet.clp 	bonnet1   "  ?id "  SiSu_Ora_swriyoM_kI_wanIxAra_topI )" crlf))
)

(defrule bonnet2
(declare (salience 4800))
(id-root ?id bonnet)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 accommodate)
(kriyA-subject ?id1 ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id SiSu_Ora_swriyoM_kI_wanIxAra_topI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  bonnet.clp 	bonnet2   "  ?id "  SiSu_Ora_swriyoM_kI_wanIxAra_topI )" crlf))
)

(defrule bonnet3
(declare (salience 4700))
(id-root ?id bonnet)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 vice-chancellor)
(viSeRya-with_saMbanXI ?id1 ?id) ;Replaced viSeRya-with_viSeRaNa as viSeRya-with_saMbanXI programatically by Roja 09-11-13
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id SiSu_Ora_swriyoM_kI_wanIxAra_topI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  bonnet.clp 	bonnet3   "  ?id "  SiSu_Ora_swriyoM_kI_wanIxAra_topI )" crlf))
)

(defrule bonnet4
(declare (salience 4600))
(id-root ?id bonnet)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id motara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  bonnet.clp 	bonnet4   "  ?id "  motara )" crlf))
)

;default_sense && category=noun	bonata	0
;"bonnet","N","1.bonata"
;He lifted the cover from the bonnet to see what was wrong in the engine.
;--"2.topI{swriyoM_ke_oDZane_kI}"
;The lady was wearing a black bonnet.
;
;