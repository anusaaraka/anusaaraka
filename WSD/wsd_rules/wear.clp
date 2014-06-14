
(defrule wear0
(declare (salience 5000))
(id-root ?id wear)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 down)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 Gata_jA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " wear.clp	wear0  "  ?id "  " ?id1 "  Gata_jA  )" crlf))
)


(defrule wear1
(declare (salience 4800))
(id-root ?id wear)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 off)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 XIre-XIre_lupwa_ho_jA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " wear.clp	wear1  "  ?id "  " ?id1 "  XIre-XIre_lupwa_ho_jA  )" crlf))
)



(defrule wear2
(declare (salience 4600))
(id-root ?id wear)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 on)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 XIre_XIre_bIwa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " wear.clp	wear2  "  ?id "  " ?id1 "  XIre_XIre_bIwa  )" crlf))
)



(defrule wear3
(declare (salience 4400))
(id-root ?id wear)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 out)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 Gisa_jA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " wear.clp	wear3  "  ?id "  " ?id1 "  Gisa_jA  )" crlf))
)

;$$$ Modified by Pramila(BU) on 01-03-2014
;The sheets have worn thin.   ;oald
;चादरें पतली हो गई है.
;meaning changed from 'Gisa_jA' to 'ho'
(defrule wear4
(declare (salience 4200))
(id-root ?id wear)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(id-cat_coarse =(+ ?id 1) adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  wear.clp      wear4   "  ?id "  ho )" crlf))
)


;@@@ Added by Pramila(BU) on 22-03-2014
;He was wearing worn shoes.   ;oald
;वह घिसे हुए जूते पहने हुए था.
(defrule wear5
(declare (salience 4200))
(id-root ?id wear)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(id-cat_coarse =(+ ?id 1) adjective)
(kriyA-subject ?id ?id2)
(id-root ?id2 ?str&:(and (not (numberp ?str))(gdbm_lookup_p "human.gdbm" ?str)))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pahanA_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  wear.clp      wear5   "  ?id "  pahanA_ho )" crlf))
)



;Added by Meena(3.02.10)
;In some countries wearing yashmak is compulsory for women .
(defrule wear6
(declare (salience 4100))
(id-root ?id wear)
?mng <-(meaning_to_be_decided ?id)
(kriyA-object ?id ?id1)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pahana))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  wear.clp      wear6   "  ?id "  pahana )" crlf))
)




;Salience reduced by Meena(3.02.10)
(defrule wear7
(declare (salience 0))
(id-root ?id wear)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pahana))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  wear.clp 	wear7   "  ?id "  pahana )" crlf))
)

;default_sense && category=verb	pahana	0
;"wear","VTI","1.pahananA"
;Wear this jacket   .
;--"2.BAva_honA"
;His face wore a sad look.
;--"3.Gisa_jAnA"
;The tyres are worn due to constant use.
;--"4.jZyAxA_calanA"
;Fashion clothes often do not wear very long.
;
;

;@@@ Added by Pramila(BU) on 01-03-2014
;His face wore a sad look.   ;shiksharthi
;उसके चेहरे पर उदासी लग रही थी.
(defrule wear8
(declare (salience 4900))
(id-root ?id wear)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-object  ?id ?id1)
(id-root ?id1 look|smile)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id laga))
(assert (kriyA_id-subject_viBakwi ?id para))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  wear.clp 	wear8   "  ?id "  laga )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-subject_viBakwi   " ?*wsd_dir* "  wear.clp 	wear8  "?id " para )" crlf))
)

;@@@ Added by Pramila(BU) on 01-03-2014
;He wears a smile  ;shiksharthi
;उसके चेहरे पर मुस्कुराहट रहती है
(defrule wear9
(declare (salience 5000))
(id-root ?id wear)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(id-root-category-suffix-number ?id ? verb s s)
(kriyA-object  ?id ?id1)
(id-root ?id1 look|smile)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id raha))
(assert (kriyA_id-subject_viBakwi ?id para))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  wear.clp 	wear9   "  ?id "  raha )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-subject_viBakwi   " ?*wsd_dir* "  wear.clp 	wear9  "?id " para )" crlf))
)

;@@@ Added by Pramila(BU) on 01-03-2014
;She wears her hair short.    ;shiksharthi
;वह अपने छोटे बाल रखती है.
(defrule wear10
(declare (salience 5000))
(id-root ?id wear)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-object ?id ?id1)
(id-root ?id1 hair)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id raKa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  wear.clp      wear10   "  ?id "  raKa )" crlf))
)

;@@@ Added by Pramila(BU) on 01-03-2014
;This material wears well.    ;shiksharthi
;यह माल बहुत चलता है.
(defrule wear11
(declare (salience 5000))
(id-root ?id wear)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-kriyA_viSeRaNa  ?id ?id2)
(id-root ?id2 well)
(kriyA-subject ?id ?id1)
(id-root ?id1 ?str)
(test (and (neq (numberp ?str) TRUE) (neq (gdbm_lookup_p "animate.gdbm" ?str) TRUE)))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id cala))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  wear.clp      wear11   "  ?id "  cala )" crlf))
)


;@@@ Added by Pramila(BU) on 01-03-2014
;This cloth will wear for years.    ;shiksharthi
;यह कपड़ा वर्षो चलेगा.
(defrule wear12
(declare (salience 5000))
(id-root ?id wear)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-for_saMbanXI  ?id ?id2)
(kriyA-subject ?id ?id1)
(id-root ?id1 ?str)
(test (and (neq (numberp ?str) TRUE) (neq (gdbm_lookup_p "animate.gdbm" ?str) TRUE)))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id cala))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  wear.clp      wear12   "  ?id "  cala )" crlf))
)

;@@@ Added by Pramila(BU) on 01-03-2014
;He is worn with hard work.    ;shiksharthi
;वह कठिन परिश्रम से थक गया है.
(defrule wear13
(declare (salience 5000))
(id-root ?id wear)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-with_saMbanXI  ?id ?id2)
(kriyA-subject ?id ?id1)
(id-root ?id1 ?str&:(and (not (numberp ?str))(gdbm_lookup_p "human.gdbm" ?str)))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Waka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  wear.clp      wear13   "  ?id "  Waka )" crlf))
)

;@@@ Added by Pramila(BU) on 01-03-2014
;His coat has worn away.    ;shiksharthi
;उसका कोट जीर्ण हो गया है.
(defrule wear14
(declare (salience 5000))
(id-root ?id wear)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-upasarga ?id ?id1)
(id-word ?id1 away)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 jIrNa_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " wear.clp	wear14  "  ?id "  " ?id1 "  jIrNa_ho  )" crlf))
)

;@@@ Added by Pramila(BU) on 01-03-2014
;I use this suit as common wear.   ;shiksharthi
;मैं इस सूट को आम पोशाक की तरह इस्तेमाल करता हूँ.
(defrule wear15
(declare (salience 0))
(id-root ?id wear)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id poSAka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  wear.clp      wear15   "  ?id "  poSAka )" crlf))
)

;@@@ Added by Pramila(BU) on 01-03-2014
;The carpets are starting to wear.   ;oald
;कालीन घिसना शुरू हो रहे हैं.
(defrule wear16
(declare (salience 5000))
(id-root ?id wear)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-kriyArWa_kriyA  ?id2 ?id)
(kriyA-subject ?id ?id1)
(id-root ?id1 ?str)
(test (and (neq (numberp ?str) TRUE) (neq (gdbm_lookup_p "animate.gdbm" ?str) TRUE)))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Gisa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  wear.clp      wear16   "  ?id "  Gisa )" crlf))
)

;@@@ Added by Pramila(BU) on 01-03-2014
;I've worn holes in all my socks.   ;oald
;मैंने अपने सभी मोजे में छेद कर दिए.
(defrule wear17
(declare (salience 5000))
(id-root ?id wear)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-object  ?id ?id1)
(viSeRya-in_saMbanXI  ?id1 ?id2)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  wear.clp      wear17   "  ?id "  kara )" crlf))
)

;@@@ Added by Pramila(BU) on 01-03-2014
;His shoes were beginning to show signs of wear.   ;oald
;उसके जूतो ने घिसाव के लक्षण दिखाने शुरू कर दिए है.
;The machines have to be checked regularly for wear.   ;oald
;मशीनों की घिसाव के लिए नियमित रूप से जाँच की जानी चाहिए.
(defrule wear18
(declare (salience 5000))
(id-root ?id wear)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(or(viSeRya-of_saMbanXI  ?id1 ?id)(kriyA-for_saMbanXI  ?id1 ?id))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id GisAva))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  wear.clp      wear18   "  ?id "  GisAva )" crlf))
)
