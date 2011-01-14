
(defrule red0
(declare (salience 5000))
(id-root ?id red)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id lAla))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  red.clp 	red0   "  ?id "  lAla )" crlf))
)

;"red","Adj","1.lAla"
;Maple leaves turn red in the autumn.
;--"2.kisI_ke_svAgawa_ke_liye_biCAI_gayI_xarI"
;Nepal rolled out red carpet to welcome Princess Diana.    
;--"3.kroXa_me_Ape_se_bAhara_ho_jAnA"
;Snobs of any type make him see red.
;--"4.lAla_AzKeM"
;The baby,s eyes were red with weeping. 
;--"5.lAla-BUre_raMga_kA"
;She has seen a red squirrel.
;
(defrule red1
(declare (salience 4900))
(id-root ?id red)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id lAla_raMga))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  red.clp 	red1   "  ?id "  lAla_raMga )" crlf))
)

;"red","N","1.lAla_raMga"
;Her favourate colour is red.
;--"2.GAte_me"
;The countrywide strike put many businesses in the red.
;--"3.reda_vAina"
;Would you prefer red or white?
;
