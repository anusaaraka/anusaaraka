
(defrule dish0
(declare (salience 5000))
(id-root ?id dish)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 out)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 parosa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " dish.clp	dish0  "  ?id "  " ?id1 "  parosa  )" crlf))
)

;Please dish the rice out for me.
;kqpyA merI WAlI meM cAvala parosa xo
(defrule dish1
(declare (salience 4900))
(id-root ?id dish)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 up)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 parosa_xe))  ;meaning changed by Pramila(BU)on 30-11-2013
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " dish.clp	dish1  "  ?id "  " ?id1 "  parosa_xe  )" crlf))
)

;She dished up my favourite ice-cream on the table.
;usane mejZa para merI manapasaMxa Aisa-krIma parosa xI
(defrule dish2
(declare (salience 4000))
(id-root ?id dish)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id WAlI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  dish.clp 	dish2   "  ?id "  WAlI )" crlf))
)

(defrule dish3
(declare (salience 4000))
(id-root ?id dish)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id WAlI_lagA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  dish.clp 	dish3   "  ?id "  WAlI_lagA )" crlf))
)


;Added by Pramila(BU) on 02-12-2013
;The dishes on the table contained aromatic food.           ;sentence of this file
;mejZapara raKe barwanoM meM KuSabUxAra KAnA WA.
(defrule dish4
(declare (salience 5000))
(id-root ?id dish)
?mng <-(meaning_to_be_decided ?id)
(kriyA-subject  ?id1 ?id)
(id-root ?id1 contain)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id barwana))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  dish.clp 	dish4   "  ?id "  barwana )" crlf))
)

;Added by Pramila(BU) on 02-12-2013
;Vegetable curry was the best dish cooked by her.              ;sentence of this file
;sabjI kA SorabA usake xvArA pakAyA gayA sabase acCA vyaMjana WA.
(defrule dish5
(declare (salience 5000))
(id-root ?id dish)
?mng <-(meaning_to_be_decided ?id)
(or(and(viSeRya-kqxanwa_viSeRaNa  ?id ?id1)(id-root ?id1 cook))(and(subject-subject_samAnAXikaraNa  ?id ?id1)(viSeRya-in_saMbanXI  ?id1 ?id2)))
(id-cat_coarse ?id noun)                ;$$$ modified by Pramila(BU) on 06-12-2013
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id vyaMjana))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  dish.clp 	dish5   "  ?id "  vyaMjana )" crlf))
)


;"dish","VT","1.WAlI_lagAnA"
;We gave them a set of dishes as wedding present.
;
;LEVEL 
;Headword : dish
;
;Examples --
;
;"dish","N","1.WAlI"
;They layed out the dishes for the dinner.
;unhoMne KAne ke liye WAliyAz sajA lIM.
;--"2.barwana"
;The dishes on the table contained aromatic food.
;mejZapara raKe barwanoM meM KuSabUxAra KAnA WA.
;--"3.pakavAna"
;Vegetable curry was the best dish cooked by her.
;sabjI kA SorabA usake xvArA pakAyA gayA sabase acCA pakavAna WA.
;
;anwarnihiwa sUwra ;
;
;
;WAlI --WAlI waWA anya cOdZe barwana jinameM KAnA raKA jA sake -jo ina barwanoM meM raKA jAe vaha
;
;
;sUwra : WAlI`[>pakavAna]
; 
