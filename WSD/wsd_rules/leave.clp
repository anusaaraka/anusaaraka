; He left for Mumbai
; He is leaving for Mumbai tomorrow

(defrule leave0
(declare (salience 5000))
(id-root ?id leave)
?mng <-(meaning_to_be_decided ?id)
(id-word =(+ ?id 1) for )
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ravAnA_ho))
(assert (id-wsd_root ?id leave))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  leave.clp 	leave0   "  ?id "  ravAnA_ho )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root   " ?*wsd_dir* "  leave.clp     leave0   "  ?id " leave )" crlf)
)
)


;"left","Adj","1.bAzyA"
;Some people write with their left hand. 
;--"2.vAma paMWa"
;The left parties.

(defrule leave1
(declare (salience 4900))
(id-root ?id leave)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id left )
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id bAzyA))
(assert (id-wsd_root ?id leave))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  leave.clp  	leave1   "  ?id "  bAzyA )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root   " ?*wsd_dir* "  leave.clp     leave1   "  ?id " leave )" crlf))
)


(defrule leave2
(declare (salience 4800))
(id-root ?id leave)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id left )
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id bAzyA))
(assert (id-wsd_root ?id leave))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  leave.clp  	leave2   "  ?id "  bAzyA )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root   " ?*wsd_dir* "  leave.clp     leave2   "  ?id " leave )" crlf)
)
)


(defrule leave3
(declare (salience 4600))
(id-root ?id leave)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 off)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 CodZa_xe))
(assert (id-wsd_root ?id leave))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " leave.clp	leave3  "  ?id "  " ?id1 "  CodZa_xe  )" crlf))
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root   " ?*wsd_dir* "  leave.clp     leave3   "  ?id " leave )" crlf)
)


;Can you leave off this book as i want to talk to you?
;kyA wuma isa kiwAba ko CodZa sakawe ho ?mEM wumase bAwa karanA cAhawI hUz
(defrule leave4
(declare (salience 4500))
(id-root ?id leave)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 out)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 CodZa_xe))
(assert (id-wsd_root ?id leave))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " leave.clp	leave4  "  ?id "  " ?id1 "  CodZa_xe  )" crlf))
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root   " ?*wsd_dir* "  leave.clp     leave4   "  ?id " leave )" crlf)
)


(defrule leave5
(declare (salience 4300))
(id-root ?id leave)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id left )
(id-cat_coarse ?id verb )
(kriyA-object ?id ?)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Coda))
(assert (id-wsd_root ?id leave))
(assert (id-H_vib_mng ?id yA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng  " ?*wsd_dir* "  leave.clp  	leave5   "  ?id "  Coda )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-id-H_vib_mng  " ?*wsd_dir* "  leave.clp      leave5   "  ?id " yA )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root   " ?*wsd_dir* "  leave.clp     leave5   "  ?id " leave )" crlf))

)

(defrule leave6
(declare (salience 4200))
(id-root ?id leave)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 train|bus)
(kriyA-subject ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id CUta))
(assert (id-wsd_root ?id leave))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  leave.clp      leave6   "  ?id "  CUta )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root   " ?*wsd_dir* "  leave.clp     leave6   "  ?id " leave )" crlf)
)
)
;The train left on time.

(defrule leave7
(declare (salience 4100))
(id-root ?id leave)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id left )
(id-cat_coarse ?id verb )
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id calA_jA))
(assert (id-wsd_root ?id leave))
(assert (id-H_vib_mng ?id yA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  leave.clp 	leave7   "  ?id "   calA_jA )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-id-H_vib_mng   " ?*wsd_dir* "  leave.clp     leave7   "  ?id " yA )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root   " ?*wsd_dir* "  leave.clp     leave7   "  ?id " leave )" crlf)
)
)
;He left in the morning

(defrule leave8
(declare (salience 4000))
(id-root ?id leave)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id CuttI))
(assert (id-wsd_root ?id leave))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  leave.clp 	leave8   "  ?id "  CuttI )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root   " ?*wsd_dir* "  leave.clp     leave8   "  ?id " leave )" crlf)
)
)

;"leave","N","1.CuttI"
;He is on casual leave today. 
;--"2.ijAjawa"
;He applied for leave to file a suit.
;


; He left for Mumbai
; He is leaving for Mumbai tomorrow

(defrule leave9
(declare (salience 3800))
(id-root ?id leave)
?mng <-(meaning_to_be_decided ?id)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id CodZa_jA))
(assert (id-wsd_root ?id leave))
(assert (kriyA_id-object_viBakwi ?id ko))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  leave.clp 	leave9   "  ?id "  CodZa_jA )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-object_viBakwi   " ?*wsd_dir* "  leave.clp     leave9   "  ?id " ko  )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root   " ?*wsd_dir* "  leave.clp     leave9   "  ?id " leave )" crlf)
)
)

(defrule leave10
(declare (salience 3700))
(id-root ?id leave)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Coda))
(assert (id-wsd_root ?id leave))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  leave.clp 	leave10   "  ?id "  Coda )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root   " ?*wsd_dir* "  leave.clp     leave10   "  ?id " leave )" crlf)
)
)
;Modified CodZa as Coda

;They left the supper uneaten
;"leave","V","1.CodZa_jAnA"
;He left the city long ago. Leave her alone. 
;His remarks left me bewildered. 
;--"2.cale_jAnA"
;She leaves for college early in the morning. 
;--"3.tAlanA"
;Some workers deliberately leave the work for the evening. 
;--"4.SeRa_vacanA"
;Have you left any money in my purse? 
;--"5.BUla_jAnA"
;Childhood memories do not leave you all your life. 
;--"6.SeRa_raha_jAnA{mqwyu_ke_bAxa}"
;He left behind his wife one daughter && two sons. 
;--"7.uwwaraxAyiwva_sOMpanA"
;He left all his money to the orphanage.
;You can safely leave it to him.
;
;LEVEL 
;
;
;                leave   sUwra (nibanXa) 
;                -----
;
;"leave","V","1.cale jAnA"   ---- < Codane ke bAxa kI kriyA 
;She leaves for college early in the morning.
;--"2.Coda jAnA"        ---- < Codane ke bAxa kI kriyA 
;He left the city long ago. Leave her alone.
;His remarks left me bewildered.
;--"3.tAlanA"      ---- < Codawe jAnA
;Some workers deliberately leave the work for the evening.
;--"4.SeRa vacanA"     ---- < CodA huA
;Have you left any money in my purse?
;--"5.BUla jAnA"    ------ < (smqwi xvArA) CodA huA
;Childhood memories do not leave you all your life.
;--"6.SeRa raha jAnA{mqwyu ke bAxa}" ---- < (mqwa vyakwi xvArA) 
;                                          Coda jAnA 
;He left behind his wife one daughter && two sons.
;--"7.xe xenA uwwaraxAyiwva sOMpanA"  ----- < ke liye Coda xenA(kara xiyA jAnA)
;He left all his money to the orphanage.
;
;--'8.uwwaraxAyiwva_xenA"   <--kisI para koI kAma CodZa xenA
;You can safely leave it to him.
;
;"leave","N","1.CuttI"  ---- < (rojamarre ke kAma kA) CodanA 
;He is on casual leave today.
;--"2.ijAjawa."  ----- < (rojamarre ke kAma ko) Codane kI AjFA mAzganA 
;He applied for leave to file a suit.
;------------------------------------------------------- 
;
;sUwra : CuttI[<Coda`]
;-------------
;
;  isa sUwra xvArA `leave' ke sampUrNa arWa saralawayA samaJe jA sakawe hEM . jo 
;arWa-viviXawAez xIKa rahI hEM . ve saBI isa sUwra(Sabxa) xvArA hinxI meM BI samaJe 
;jAwe hEM . arWa-viswAra ko kramaSaH isa rUpa meM xeKa sakawe hEM----- 
; 
;--  `Coda jAnA' va `cale jAnA' meM CodanA vixyamAna hE . Codakara jAnA . jaba
;  kisI cIja ko CodA jAwA hE, waBI (calA) jAyA jA sakawA hE (vaswu, sWAna,
;  smqwi kuCa BI) . Codane ke bAxa kI kriyA .
;
;-- `tAlanA' . kisI cIja ko Age ke liye Codawe rahawe hEM wo use tAlanA kahA jAwA hE . 
;   iwanA viSeRa kahA jA sakawA hE ki `tAlanA' aXikawara buxXiparaka howA hE . 
;   
;-- `SeRa bacanA' . kisI ke bAxa yaxi kuCa CUta jAwA hE wo vaha SeRa bacawA hE . yaha Codane kA pariNAmasvarUpa Pala hE .
;
;-- `SeRa raha jAnA(mqwyu ke bAxa)' . mqwa vyakwi marane ke bAxa apanI smqwiyoM ke kAraNa
;   SeRa raha jAwA hE . vAswava meM vaha apanI smqwiyAz Coda jAwA hE . 
;
;-- `uwwaraxAyiwva sOMpanA' . jaba uwwaraxAyiwva xiyA jAwA hE wo usako sOMpanevAlA 
;   vyakwi usako CodawA hE, waba grahaNa karanevAlA usako lewA hE . 
;
;-- `CuttI' . kisI rojamarre ke kAma kA CodA jAnA . 
;
;-- `ijAjawa' . Coda se CuttI, CuttI se- CuttI ke lie Avexana karanA- AjFA mAzganA .
;   AjFA mAzganA hI `ijAjawa' . 
;
