;@@@ Added by Krithika 10/12/2013
;The lion gobbled down its prey. [Hinkhoj]
;siMha ne usake SikAra ko nigalA.
;He gobbled up all the news. [freedictionary]
;usane saBI samAcAra ko nigalA.
(defrule gobble_down1
(declare (salience 100))
(id-root ?id gobble)
(id-root ?id1 down|up)
?mng <-(meaning_to_be_decided ?id)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 nigala))
(assert (kriyA_id-object_viBakwi ?id ko))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* "  gobble.clp	gobble_down1  "  ?id "  " ?id1 "  nigala )" crlf))
(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-object_viBakwi   " ?*wsd_dir* "  gobble.clp  gobble_down1   "  ?id " ko )" crlf)
)

;____________________________________________________
;@@@ Added by Krithika 10/12/2013
;We could hear the turkeys gobbling in the farmyard. [freedictionary]
;hama PArma_ke hAwe meM GuraGurAwe_hue pIrU ko suna sake.
(defrule gobble1
(declare (salience 100))
(id-root ?id gobble)
?mng <-(meaning_to_be_decided ?id)
(or(viSeRya-kqxanwa_viSeRaNa  ?id1 ?id) (kriyA-subject  ?id ?id1))
(id-root ?id1 turkey|bird)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id GuraGurA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  gobble.clp 	gobble1    "  ?id " GuraGurA )" crlf))
)
;__________________________________________________________________
;@@@ Added by Krithika 04/03/2014
;When a turkey gobbles, it makes a noise in its throat.	[OALD]
(defrule gobble3
(declare (salience 100))
(id-root ?id gobble)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(viSeRya-of_saMbanXI  ?id3 ?id)
(subject-subject_samAnAXikaraNa  ?id3 ?id2)
(id-root ?id2 sound)
=>	
(retract ?mng)
(assert (id-wsd_root_mng ?id nigala))
(assert (kriyA_id-object_viBakwi ?id ko))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  gobble.clp 	gobble3    "  ?id " nigala )" crlf))
(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-object_viBakwi   " ?*wsd_dir* "  gobble.clp  gobble3   "  ?id " ko )" crlf)
)

;################### Default rules ####################
;@@@ Added by Krithika 10/12/2013
;She gobbled her dinner. [Cambridge]
;usane usake rAwa_ke Bojana ko nigalA.
(defrule gobble0
(id-root ?id gobble)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>	
(retract ?mng)
(assert (id-wsd_root_mng ?id nigala))
(assert (kriyA_id-object_viBakwi ?id ko))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  gobble.clp 	gobble0    "  ?id " nigala )" crlf))
(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-object_viBakwi   " ?*wsd_dir* "  gobble.clp  gobble0   "  ?id " ko )" crlf)

)
;################### Additional Examples ####################
;Don't gobble your food like that!
;She gobbled her dinner.
;When a turkey gobbles, it makes a noise in its throat.
;He gobbled all the beef stew.
;You'll be sick if you keep gobbling your meals like that.
;Hotel costs gobbled up most of their holiday budget.
;It will then become so inflated that it will swallow the closer planets Venus and Mercury and also gobble up the Earth!
;They gobbled down all the sandwiches.
;The children gobbled down most of the birthday cake.
;When Do Turkeys Gobble The Most?
;When a turkey gobbles, it makes a noise in its throat.
;##########################To be resolved###########################
; He is very good at gobbling while imitating the sound of birds.
;  The sound turkeys make is known as a gobble.
