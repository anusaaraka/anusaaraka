
(defrule fire0
(declare (salience 5000))
(id-root ?id fire)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id firing )
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id baMxUka_calAnA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  fire.clp  	fire0   "  ?id "  baMxUka_calAnA )" crlf))
)

;"firing","N","1.baMxUka_calAnA"
;The soldiers were being trained in firing small arms at the firing range.
;
(defrule fire1
(declare (salience 4900))
(id-root ?id fire)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id fired )
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id agni_prajjvalana))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  fire.clp  	fire1   "  ?id "  agni_prajjvalana )" crlf))
)

;"fired","Adj","1.agni_prajjvalana"
;In India most of the power is produced by coal fired thermal power stations.
;
;
(defrule fire2
(declare (salience 4800))
(id-root ?id fire)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Aga))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  fire.clp 	fire2   "  ?id "  Aga )" crlf))
)

(defrule fire3
(declare (salience 4700))
(id-root ?id fire)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id xAga))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  fire.clp 	fire3   "  ?id "  xAga )" crlf))
)

;default_sense && category=verb	prahAra_kara{baMxUka_yA_wIra_se}	0
;"fire","V","1.prahAra_karanA{baMxUka_yA_wIra_se}"
;He fired at the robbers.
;--"2.nikAla_xenA"
;He has recently been fired from his job.
;--"3.uwwejiwa_honA"
;The words of the boss fired his imagination for developing a new application for this product.
;--"4.BattI_meM pakAnA"
;Bricks are fired in fire klins to make them stong.
;
;LEVEL 
;"fire"                  "sUwra" (nibanXa)
;----------
;
;"fire","N","1.Aga"
;The fire at the cinema hall resulted in many deaths.
;--"2.golI_calAnA"
;The police opened fire to hold back the violent mob.
;
;"fire","V","1.prahAra_karanA{baMxUka_yA_wIra_se}"
;He fired at the robbers.
;--"2.nikAla_xenA"
;He has recently been fired from his job.
;--"3.uwwejiwa_honA"
;The words of the boss fired his imagination for developing a new application for
; this product.
;--"4.BattI_meM pakAnA"
;Bricks are fired in fire klins to make them stong.
;------------------------------------------------------------
;
;sUwra : Aga`[<PeMkanA]
;
;
;sUwra ko samaJane hewu uparisWiwa vAkyoM ke AXAra para sUwra-saMGataka waWya--
;---------------------------------------------------
; (Aga_lagAnA<wopa_meM_palIwA_lagAnA_<golI_yA_wIra_calAnA<nikAla_PeMkanA)
;
;  saBI arWa `Aga' se Aye hue hEM .
;
;  Aga Sabxa uwwejanA ke arWa meM wo sAXAraNawayA pracaliwa hE . garmI ke kAraNa .
;saBI BARAoM meM Ama prayoga hE . 
;
;  pahale wopa calAne hewu usameM Aga lagAnA padawA WA . jise palIwA lagAnA kahA jAwA hE . 
;isase wopa yA banxUka calAne ke arWa meM AyA lagawA hE, yaha Sabxa . golI calAne ke 
;arWa se wIra calAne ke arWa meM .
;
;  wopa Axi ke calAwe samaya Aga ke prayoga se hI bArUxa yA goloM ko nikAlA
;yA PeMkA jAwA WA . usase nikAlane ke arWa meM, vo BI balAw arWAw-
;nikAla PeMkanA .  
; 
;  BattI meM pakAnA Aga meM pakAnA hI hE . ye wo sAkRAw samaJA jA sakawA hE . 
;
