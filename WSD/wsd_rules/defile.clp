
(defrule defile0
(declare (salience 5000))
(id-root ?id defile)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id saMkuciwa_mArga))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  defile.clp 	defile0   "  ?id "  saMkuciwa_mArga )" crlf))
)

;"defile","N","1.saMkuciwa_mArga"
;The route through the mountains was a defile one .
;
(defrule defile1
(declare (salience 4000))
(id-root ?id defile)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id xURiwa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  defile.clp 	defile1   "  ?id "  xURiwa_kara )" crlf))
)

;"defile","V","1.xURiwa_karanA"
;Ganges are defiled by pollutants.
;--"2.apaviwra_karanA"
;The public defiled the holy place by throwing garbage near it.
;

;@@@ Added by Pramila(Banasthali university) on 04-01-2014
;The public defiled the holy place by throwing garbage near it.      ;old clp
;जनता ने पवित्र स्थान के निकट कचरा फेंककर अपवित्र कर दिया.
;The soldiers deliberately defiled all the holy places.         ;cald
;सैनिकों ने जानबूझकर सभी पवित्र स्थानों को अपवित्र कर दिया.
(defrule defile2
(declare (salience 5000))
(id-root ?id defile)
?mng <-(meaning_to_be_decided ?id)
(kriyA-object  ?id ?id1)
(viSeRya-viSeRaNa  ?id1 ?id2)
(id-word ?id2 holy)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id apaviwra_kara_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  defile.clp 	defile2   "  ?id "  apaviwra_kara_xe )" crlf))
)

;@@@ Added by Sukhada (12-05-14). Automatically generated this rule.
(defrule sub_samA_defile2
(declare (salience 5000))
(id-root ?id defile)
?mng <-(meaning_to_be_decided ?id)
(kriyA-object  ?id ?id1)
(subject-subject_samAnAXikaraNa ?id1 ?id2)
(id-word ?id2 holy)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id apaviwra_kara_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng " ?*wsd_dir* " defile.clp   sub_samA_defile2   "   ?id " apaviwra_kara_xe )" crlf))
)

;@@@ Added by Sukhada (12-05-14). Automatically generated this rule.
(defrule obj_samA_defile2
(declare (salience 5000))
(id-root ?id defile)
?mng <-(meaning_to_be_decided ?id)
(kriyA-object  ?id ?id1)
(object-object_samAnAXikaraNa ?id1 ?id2)
(id-word ?id2 holy)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id apaviwra_kara_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng " ?*wsd_dir* " defile.clp   obj_samA_defile2   "   ?id " apaviwra_kara_xe )" crlf))
)
