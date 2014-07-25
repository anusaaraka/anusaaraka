
;$$$ Modified by Nandini (16-12-13)
;Added by Sonam Gupta MTech IT Banasthali 2013
;In rainy areas, wet leaves can rot into a slippery mess.
;Leaves turn orange and golden in fall.
;The trees lay their leaves in winter.
(defrule leave0
(declare (salience 6000))
(id-root ?id leave)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(id-cat_coarse ?id1 verb|determiner|adjective|preposition|noun)
(or(kriyA-object ?id1 ?id)(viSeRya-det_viSeRaNa ?id ?id1)(viSeRya-viSeRaNa ?id ?id1)(kriyA-subject ?id1 ?id)(viSeRya-of_saMbanXI  ?id1 ?id)(kriyA-with_saMbanXI  ?id1 ?id))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pawwI))
(assert (id-wsd_root ?id leaf))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  leave.clp 	leave0   "  ?id "  pawwI )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root   " ?*wsd_dir* "  leave.clp     leave0   "  ?id " leaf )" crlf)
)
)

; He left for Mumbai
; He is leaving for Mumbai tomorrow

(defrule leave1
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
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  leave.clp 	leave1   "  ?id "  ravAnA_ho )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root   " ?*wsd_dir* "  leave.clp     leave1   "  ?id " leave )" crlf)
)
)


;"left","Adj","1.bAzyA"
;Some people write with their left hand. 
;--"2.vAma paMWa"
;The left parties.

(defrule leave2
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
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  leave.clp  	leave2   "  ?id "  bAzyA )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root   " ?*wsd_dir* "  leave.clp     leave2   "  ?id " leave )" crlf))
)


(defrule leave3
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
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  leave.clp  	leave3   "  ?id "  bAzyA )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root   " ?*wsd_dir* "  leave.clp     leave3   "  ?id " leave )" crlf)
)
)

;$$$ Modified by Nandini(9-1-14)
;Ex: She took up the story where Tim had left off.
;usane kahAnI lI jahAz se tim ne use CodI WI.
(defrule leave4
(declare (salience 4600))
(id-root ?id leave)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 off)
(kriyA-upasarga ?id ?id1)
(or(kriyA-object ?id ?)(kriyA-aXikaraNavAcI  ?id ?)); added '(kriyA-aXikaraNavAcI_avyaya' by Nandini
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 CodZa_xe))
(assert (id-wsd_root ?id leave))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " leave.clp	leave4  "  ?id "  " ?id1 "  CodZa_xe  )" crlf))
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root   " ?*wsd_dir* "  leave.clp     leave4   "  ?id " leave )" crlf)
)


;Can you leave off this book as i want to talk to you?
;kyA wuma isa kiwAba ko CodZa sakawe ho ?mEM wumase bAwa karanA cAhawI hUz
(defrule leave5
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
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " leave.clp	leave5  "  ?id "  " ?id1 "  CodZa_xe  )" crlf))
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root   " ?*wsd_dir* "  leave.clp     leave5   "  ?id " leave )" crlf)
)


(defrule leave6
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
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng  " ?*wsd_dir* "  leave.clp  	leave6   "  ?id "  Coda )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-id-H_vib_mng  " ?*wsd_dir* "  leave.clp      leave6   "  ?id " yA )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root   " ?*wsd_dir* "  leave.clp     leave6   "  ?id " leave )" crlf))

)

(defrule leave7
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
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  leave.clp      leave7   "  ?id "  CUta )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root   " ?*wsd_dir* "  leave.clp     leave7   "  ?id " leave )" crlf)
)
)
;The train left on time.

(defrule leave8
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
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  leave.clp 	leave8   "  ?id "   calA_jA )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-id-H_vib_mng   " ?*wsd_dir* "  leave.clp     leave8   "  ?id " yA )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root   " ?*wsd_dir* "  leave.clp     leave8   "  ?id " leave )" crlf)
)
)
;He left in the morning

(defrule leave9
(declare (salience 4000))
(id-root ?id leave)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id CuttI))
(assert (id-wsd_root ?id leave))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  leave.clp 	leave   "  ?id "  CuttI )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root   " ?*wsd_dir* "  leave.clp     leave9   "  ?id " leave )" crlf)
)
)

;"leave","N","1.CuttI"
;He is on casual leave today. 
;--"2.ijAjawa"
;He applied for leave to file a suit.
;


; He left for Mumbai
; He is leaving for Mumbai tomorrow

(defrule leave10
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
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  leave.clp 	leave10   "  ?id "  CodZa_jA )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-object_viBakwi   " ?*wsd_dir* "  leave.clp     leave10   "  ?id " ko  )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root   " ?*wsd_dir* "  leave.clp     leave10   "  ?id " leave )" crlf)
)
)

;
(defrule leave11
(declare (salience 3700))
(id-root ?id leave)
?mng <-(meaning_to_be_decided ?id)
(kriyA-object ?id ?) ;$$$ added relation by Roja. Suggested by Chaitanya Sir (22-04-14)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Coda))
(assert (id-wsd_root ?id leave))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  leave.clp 	leave11   "  ?id "  Coda )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root   " ?*wsd_dir* "  leave.clp     leave11   "  ?id " leave )" crlf)
)
)

;@@@ Added by Roja. Suggested by Chaitanya Sir.(22-04-14)
;I am ready to leave.
;mEM jAne ke liye wEyAra hUz. (Translation suggested by Sukhada)
(defrule leave_default
(declare (salience 3700))
(id-root ?id leave)
?mng <-(meaning_to_be_decided ?id)
(not (kriyA-object ?id ?))
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id jA))
(assert (id-wsd_root ?id leave))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  leave.clp    leave_default   "  ?id "  jA )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root   " ?*wsd_dir* "  leave.clp     leave_default   "  ?id " leave )" crlf)
)
)


;Modified CodZa as Coda

;@@@ Added by Nandini (5-12-13)
;The core that is finally left is very hot but as a star it does not radiate much energy in the visible range.
;अंत में जो क्रोड़ बचा रहता है, वह बहुत गर्म होता है परन्तु तारा के जैसा यह दृश्य पङ्क्ति श्रृङ्खला में बहुत ऊर्जा किरण नहीं फेंकता है।
(defrule leave12
(declare (salience 4650))
(id-root ?id leave)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 core|all)
(kriyA-karma  ?id ?id1)
(viSeRya-jo_samAnAXikaraNa  ?id1 ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id baca))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  leave.clp 	leave12   "  ?id " baca)" crlf))
)

;@@@ Added by Nandini (12-12-13)
;He made it plain that we should leave. 
;usane yaha spaRta kiyA ki hameM cale jAnA cAhie.
(defrule leave13
(declare (salience 3750))
(id-root ?id leave)
?mng <-(meaning_to_be_decided ?id)
(kriyA-vAkya_viBakwi  ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id cale_jA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  leave.clp 	leave14   "  ?id "cale_jA)" crlf))
)

;@@@ Added by Nandini (16-12-13)
;You have to ask permission to leave.[via mail]
;Apako jAne ke liye ijAjawa lenI hE.
(defrule leave14
(declare (salience 3760))
(id-root ?id leave)
?mng <-(meaning_to_be_decided ?id)
(id-root ?id1 ask)
(kriyA-kriyArWa_kriyA  ?id1 ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id jA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  leave.clp 	leave14   "  ?id " jA )" crlf))
)


;@@@ Added by Nandini (16-12-13)
;If you pluck more than two leaves and a bud the quality of the tea will suffer.
(defrule leave15
(declare (salience 4500))
(id-root ?id leave)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(id-root ?id1 pluck) 
(kriyA-object  ?id1 ?id2)
(conjunction-components  ?id2 ?id ?)
;(id-word ?id2 bud)
;(or(kriyA-object ?id1 ?id)(viSeRya-det_viSeRaNa ?id ?id1)(viSeRya-viSeRaNa ?id ?id1)(kriyA-subject ?id1 ?id))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pawwI))
(assert (id-wsd_root ?id leaf))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  leave.clp 	leave15   "  ?id "  pawwI )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root   " ?*wsd_dir* "  leave.clp     leave15   "  ?id " leaf )" crlf)
)
)

;@@@ Added by Nandini (15-1-14)
;Drain off any liquid that is left in the rice.[via mail]
;
(defrule leave16
(declare (salience 4950))
(id-root ?id leave)
?mng <-(meaning_to_be_decided ?id)
;(kriyA-in_saMbanXI  ?id ?id1)
(kriyA-karma  ?id ?id1)
(id-root ?id1 liquid)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id raha))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  leave.clp 	leave16   "  ?id " raha )" crlf))
)

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
