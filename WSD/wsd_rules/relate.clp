
(defrule relate0
(declare (salience 5000))
(id-root ?id relate)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id related)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id saMbanXiwa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng  " ?*wsd_dir* "  relate.clp  	relate0   "  ?id "  saMbanXiwa )" crlf))
)

;given_word=related && word_category=adjective	$banXu)

;"related","Adj","1.banXu"
;She is related to him by her mother's side.
;He is not related to me in any way.
;
;
(defrule relate1
(declare (salience 4900))
(id-root ?id relate)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id saMbaMXiwa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  relate.clp 	relate1   "  ?id "  saMbaMXiwa_kara )" crlf))
)

;default_sense && category=verb	varNana_kara	0
;"relate","VTI","1.varNana_karanA"
;My grandfather related to me the story of a clever fox.
;--"2.sambaMXa_jodZanA"
;It is not easy to relate cause && effect in this case.  
;--"3.sambaxXa_honA"     
;Does the new law relate only to reservation of seats for the handicapped?
;--"4.hamaxarxI_prakata_karanA"   
;Some ladies just can't relate to other's children.
;
;LEVEL 
;
;
;
;"relate","V","1.varNana_karanA" 
;(1) They related how the accident occured.
;unhoMne varNana kiyA kEse vaha xurGatanA huI
;
;--"2.saMbaMXiwa_karanA"  	     
;(2) She found it difficult to relate the two events.
;use xono GatanAo meM saMbaMXa jodanA kaTina lagA
;
;
;
;"related","Adj","1.saMbaMXiwa"
;(3) We organised a seminar on pollution, conservation && other related topics.
;hamane praxURaNa, saMrakRaNa Ora saMbaMXiwa viRayoM para goRTI Ayojiwa kI
;(4) This boy is related to her husband.
;yaha ladakA usake pawi se saMbaMXiwa hE
;
;
;upara liKiwa vAkyoM ((2),(3),(4)) meM "relate" kA mUlArWa "saMbaMXiwa" liyA jA sakawA 
;hE. lekina vAkya (1) meM "relate" kA arWa "saMbaMXiwa" nahIM, "varNana_karanA" ho rahA hE.
;kisI cIjZa kA varNana karane ke lie usameM sammiliwa vaswuoM ke bIca kaWAkrama sWApiwa 
;karanA/bawAnA padZawA hE Ora kaWAkrama sWApiwa karane ke lie una vaswuoM meM saMbaMXa jodanA 
;padZawA hE. wo aba varNana karane meM Ora kaWAkrama bawAne meM BI saMbaMXiwa karane kA BAva A rahA
;hE. "relate" ke isa Binna laganevAle arWa kA aba sUwra banAyA jAe wo usakA 
;arWa-viswAra AsAnI se samaJA jA sakawA.
;
;
;sUwra : saMbaMXiwa_karanA[>kaWAkrama__bawAnA]  
;
