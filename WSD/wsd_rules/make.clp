
;Added by Meena(16.10.10)
;It makes sense that the charge approaches zero, since the balloon is losing its charge.
(defrule make_sense0
(declare (salience 5000))
(id-root ?id make)
?mng <-(meaning_to_be_decided ?id)
(id-root =(+ ?id 1) sense)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id =(+ ?id 1) sahI))
;(assert (id-wsd_root_mng ?id saMvexanA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " make.clp  make_sense  "  ?id "  " (+ ?id 1) "  sahI  )" crlf))
)




;Added by Meena(16.10.10)
;The guard was sitting in a cabin made for him. 
(defrule make00
(declare (salience 5000))
(id-root ?id make)
?mng <-(meaning_to_be_decided ?id)
(kriyA-for_saMbanXI  ?id ?id1)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id bane_hue))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  make.clp     make00   "  ?id "  bane_hue)" crlf)
)
)


;Modified by sheetal(3-9-10)
;Added by Meena(25.8.09)
;I made him make some changes in the programme.
(defrule causative_make
(declare (salience 5000))
(id-root ?id make)
?mng <-(meaning_to_be_decided ?id)
(kriyA-prayojya_karwA  ?id ?id2)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  make.clp     causative_make   "  ?id "  kara)" crlf)
)
)



(defrule make-speedy-progress
(declare (salience 5000))
(id-root ?id make)
?mng <-(meaning_to_be_decided ?id)
(id-word =(+ ?id 1) speedy)
(id-word =(+ ?id 2) progress)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  make.clp     make-speedy-progress   "  ?id "  kara)" crlf))
)
;Please do accept the same and bless the Anusaaraka project to make speedy progress 

(defrule make_kriyA_mUla_clear
(declare (salience 5000))
(id-root ?id make)
?mng <-(meaning_to_be_decided ?id)
(kriyA-kriyA_mUla ?id ?id1)
(id-root ?id1 clear)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  make.clp     make_kriyA_mUla_clear   "  ?id "  kara)" crlf))
)

(defrule make0
(declare (salience 5000))
(id-root ?id make)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id making )
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id banAne_kI_prakriyA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  make.clp  	make0   "  ?id "  banAne_kI_prakriyA )" crlf))
)

;"making","N","1.banAne_kI_prakriyA"
;The film beautifully depicts the making of a great man.
;--"2.guNa"
;He has the making of a successful  lawyer.
;
;
(defrule make1
(declare (salience 4900))
(id-root ?id make)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 for)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 kI_ora_jA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " make.clp	make1  "  ?id "  " ?id1 "  kI_ora_jA  )" crlf))
)

;He suddenly got up && made for the exit.
;
(defrule make2
(declare (salience 4800))
(id-root ?id make)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 off)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 BAga_jA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " make.clp	make2  "  ?id "  " ?id1 "  BAga_jA  )" crlf))
)

;The students made off as soon as the teacher arrived.
;
(defrule make3
(declare (salience 4700))
(id-root ?id make)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 out)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 hisAba_lagA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " make.clp	make3  "  ?id "  " ?id1 "  hisAba_lagA  )" crlf))
)

;Please make out the budget of this year.
;
(defrule make4
(declare (salience 4600))
(id-root ?id make)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 out)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 saPala_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " make.clp	make4  "  ?id "  " ?id1 "  saPala_ho  )" crlf))
)

;Don't worry-i'll make out all right.
;
(defrule make5
(declare (salience 4500))
(id-root ?id make)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 out)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 BAzpa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " make.clp	make5  "  ?id "  " ?id1 "  BAzpa  )" crlf))
)

;Can you make out how they did it?
;
(defrule make6
(declare (salience 4400))
(id-root ?id make)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 over)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 haswAMwaraNa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " make.clp	make6  "  ?id "  " ?id1 "  haswAMwaraNa  )" crlf))
)

;Make the cheque over to her.
;
(defrule make7
(declare (salience 4300))
(id-root ?id make)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 up)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 kRawipUrwI_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " make.clp	make7  "  ?id "  " ?id1 "  kRawipUrwI_kara  )" crlf))
)

;Nobody can make up for his husband's death.
;
(defrule make8
(declare (salience 4200))
(id-root ?id make)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 up)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 miwrawA_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " make.clp	make8  "  ?id "  " ?id1 "  miwrawA_kara  )" crlf))
)

;She has done nothing for me but i don't know why i always want to make it up to her.
;
(defrule make9
(declare (salience 4100))
(id-root ?id make)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 up)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 ikatTA_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " make.clp	make9  "  ?id "  " ?id1 "  ikatTA_kara  )" crlf))
)

;Have you made whole the money up for charity?
;
(defrule make10
(declare (salience 4000))
(id-root ?id make)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 up)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 saMpUrNa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " make.clp	make10  "  ?id "  " ?id1 "  saMpUrNa_kara  )" crlf))
)

;If i'm late for work,i'll just make it up tomorrow.
;
(defrule make11
(declare (salience 3900))
(id-root ?id make)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 up)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 sajjA_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " make.clp	make11  "  ?id "  " ?id1 "  sajjA_kara  )" crlf))
)

;I forgot to take my make-up off before i went to bed.
;
(defrule make12
(declare (salience 3800))
(id-root ?id make)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 up)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 kalpiwa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " make.clp	make12  "  ?id "  " ?id1 "  kalpiwa_kara  )" crlf))
)

;Can't you make up a story for me?
;
(defrule make13
(declare (salience 3700))
(id-root ?id make)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 fun)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 hazsI_udZA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " make.clp	make13  "  ?id "  " ?id1 "  hazsI_udZA  )" crlf))
)

(defrule make14
(declare (salience 3600))
(id-root ?id make)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 fun)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 hazsI_udZA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " make.clp	make14  "  ?id "  " ?id1 "  hazsI_udZA  )" crlf))
)

(defrule make15
(declare (salience 3500))
(id-root ?id make)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 it)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 pahuzca))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " make.clp	make15  "  ?id "  " ?id1 "  pahuzca  )" crlf))
)

(defrule make16
(declare (salience 3400))
(id-root ?id make)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 it)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 pahuzca))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " make.clp	make16  "  ?id "  " ?id1 "  pahuzca  )" crlf))
)

(defrule make17
(declare (salience 3300))
(id-root ?id make)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 possible)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 samBava_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " make.clp	make17  "  ?id "  " ?id1 "  samBava_kara  )" crlf))
)

(defrule make18
(declare (salience 3200))
(id-root ?id make)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 possible)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 samBava_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " make.clp	make18  "  ?id "  " ?id1 "  samBava_kara  )" crlf))
)

(defrule make19
(declare (salience 3100))
(id-root ?id make)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 room)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 sWAna_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " make.clp	make19  "  ?id "  " ?id1 "  sWAna_xe  )" crlf))
)

(defrule make20
(declare (salience 3000))
(id-root ?id make)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 room)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 sWAna_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " make.clp	make20  "  ?id "  " ?id1 "  sWAna_xe  )" crlf))
)


(defrule make24
(declare (salience 2600))
(id-root ?id make)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 impact)
(kriyA-object ?id ?id1)
;(id-cat_coarse ?id verb) this and the above line are automatically modified using a program by Sukhada
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id dAla))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  make.clp 	make24   "  ?id "  dAla )" crlf))
)


;Modified by Meena(11.01.10)
;The company made him a tempting offer of a high salary . 
(defrule make26
(declare (salience 2400))
(id-root ?id make)
?mng <-(meaning_to_be_decided ?id)
(id-root ?id1 offer)
;(kriyA-object ?id1 ?id)  ;as ?id1 is not a verb here(Meena(11.01.10))
(or(kriyA-object ?id ?id1)(kriyA-object_2 ?id ?id1))
;(id-cat_coarse ?id verb) this and the above line are automatically modified using a program by Sukhada
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  make.clp 	make26   "  ?id "  xe )" crlf))
)

(defrule make39
(declare (salience 1100))
(id-root ?id make)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 money)
(kriyA-object ?id ?id1)
;(id-cat_coarse ?id verb) this and the above line are automatically modified using a program by Sukhada
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kamA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  make.clp 	make39   "  ?id "  kamA )" crlf))
)

(defrule make40
(declare (salience 1000))
(id-root ?id make)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 profit)
(kriyA-object ?id ?id1)
;(id-cat_coarse ?id verb) this and the above line are automatically modified using a program by Sukhada
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kamA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  make.clp 	make40   "  ?id "  kamA )" crlf))
)

(defrule make41
(declare (salience 900))
(id-root ?id make)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 fortune)
(kriyA-object ?id ?id1)
;(id-cat_coarse ?id verb) this and the above line are automatically modified using a program by Sukhada
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kamA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  make.clp 	make41   "  ?id "  kamA )" crlf))
)


(defrule make43
(declare (salience 700))
(id-root ?id make)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 bed)
(kriyA-object ?id ?id1)
;(id-cat_coarse ?id verb) this and the above line are automatically modified using a program by Sukhada
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id bAnA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  make.clp 	make43   "  ?id "  bAnA )" crlf))
)

(defrule make44
(declare (salience 600))
(id-root ?id make)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 fire)
(kriyA-object ?id ?id1)
;(id-cat_coarse ?id verb) this and the above line are automatically modified using a program by Sukhada
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id bAnA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  make.clp 	make44   "  ?id "  bAnA )" crlf))
)

(defrule make47
(declare (salience 300))
(id-root ?id make)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 off)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 BAga_jA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " make.clp	make47  "  ?id "  " ?id1 "  BAga_jA  )" crlf))
)

(defrule make48
(declare (salience 200))
(id-root ?id make)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 off)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 BAga_jA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " make.clp	make48  "  ?id "  " ?id1 "  BAga_jA  )" crlf))
)

(defrule make49
(declare (salience 100))
(id-root ?id make)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 out)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 anumAna_lagA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " make.clp	make49  "  ?id "  " ?id1 "  anumAna_lagA  )" crlf))
)

(defrule make50
(declare (salience 0))
(id-root ?id make)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 out)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 anumAna_lagA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " make.clp	make50  "  ?id "  " ?id1 "  anumAna_lagA  )" crlf))
)

(defrule make51
(declare (salience -100))
(id-root ?id make)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 mind)
(viSeRya-up_viSeRaNa ?id1 ?id)
(id-word ?id1 up)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 niScaya_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " make.clp	make51  "  ?id "  " ?id1 "  niScaya_kara  )" crlf))
)

; He made up his mind to work on this project.
(defrule make52
(declare (salience -200))
(id-root ?id make)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 story)
(viSeRya-up_viSeRaNa ?id1 ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id banA_le))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  make.clp 	make52   "  ?id "  banA_le )" crlf))
)

; She is very good at making up stories.
(defrule make53
(declare (salience -300))
(id-root ?id make)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 decision)
(kriyA-object ?id ?id1)
;(id-cat_coarse ?id verb) this and the above line are automatically modified using a program by Sukhada
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id le))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  make.clp 	make53   "  ?id "  le )" crlf))
)

(defrule make54
(declare (salience -400))
(id-root ?id make)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 up)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 banA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " make.clp	make54  "  ?id "  " ?id1 "  banA  )" crlf))
)

(defrule make55
(declare (salience -500))
(id-root ?id make)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 up)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 banA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " make.clp	make55  "  ?id "  " ?id1 "  banA  )" crlf))
)

(defrule make57
(declare (salience -700))
(id-root ?id make)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id banA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  make.clp 	make57   "  ?id "  banA )" crlf))
)

(defrule make58
(declare (salience -800))
(id-root ?id make)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id gaTana))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  make.clp 	make58   "  ?id "  gaTana )" crlf))
)

;"make","N","1.gaTana"
;The machinery is of an excellent make.
;
;

;He made negative comments to the press .
;usane #prEsa ko nakArAwmaka tippaNiyAz xIM
;Added by sheetal(29-09-09).
(defrule make59
(declare (salience 4950))
(id-root ?id make)
?mng <-(meaning_to_be_decided ?id)
(id-root ?id1 comment)
(kriyA-object ?id ?id1)
(kriyA-to_saMbanXI ?id ?id2)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  make.clp      make59   "  ?id "  xe )" crlf))
)

 ;Added by sheetal (04-02-10). 
; after removing rules- [21,22,23,25,27,28,29,30,31,32,33,34,35,36,37,38,42,45,46,56]
(defrule make60
(declare (salience 4950))
(id-root ?id make)
?mng <-(meaning_to_be_decided ?id)
(kriyA-object ?id ?id1)
(id-word ?id1 attempt|effort|excuse|suggestion|decision|exception|enquiry|call|mistake|request|fuss|noise|arrangement|journey|statement|love|war|peace|comment|observation|inspection) ; list Added by Manju (04-02-10).
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  make.clp      make60   "  ?id "  kara )" crlf))
)
;The Inspector made an accidental inspection of the school .
;She was asked about the pay increase but made no comment .
;She made an request.
;She made an observation.
;He made a request that there be an investigation.
;He made a mistake in inviting John.


