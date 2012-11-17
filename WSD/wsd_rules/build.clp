
;given_word=building && category=noun	$nirmANa)

(defrule build0
(declare (salience 5000))
(id-root ?id build)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id building )
;(id-cat_coarse ?id noun)
(or(viSeRya-viSeRaNa ?id ?id1)(viSeRya-det_viSeRaNa ?id ?id1))
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id imArawa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  build.clp  	build0   "  ?id "  imArawa )" crlf))
)

;given_word=building && category=noun	$imArawa)

;"building","N","1.imArawa"
;There was a three-story building on the corner
;The entire building complained about the noise
;--"2.nirmANa"
;Building of the house is taking too much of my energy.
;
;
(defrule build1
(declare (salience 4900))
(id-root ?id build)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 up)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 nirmANa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " build.clp	build1  "  ?id "  " ?id1 "  nirmANa_kara  )" crlf))
)


(defrule build2
(declare (salience 4700))
(id-root ?id build)
?mng <-(meaning_to_be_decided ?id)
;(id-cat_coarse ?id noun)
(or(viSeRya-viSeRaNa ?id ?id1)(viSeRya-det_viSeRaNa ?id ?id1))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id nirmANa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  build.clp 	build2   "  ?id "  nirmANa )" crlf))
)

;"build","N","1.nirmANa/banAvata"
;Every wrestler should have a big && strong build.
;



(defrule build3
(declare (salience 4600))
(id-root ?id build)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-object ?id ?id1)   
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id banA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  build.clp 	build3   "  ?id "  banA )" crlf))
)

;Added by Shirisha Manju (8-11-12) Suggested by Chaitanya Sir
;The chenna kesava temple of belur built 900 years ago is an exquisite example of hoysala art.
(defrule build4_0
(declare (salience 4500))
(id-root ?id build)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(viSeRya-kqxanwa_viSeRaNa  ? ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id bana))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  build.clp     build4_0   "  ?id "  bana )" crlf))
)


;Added by Meena(26.7.11)
;Hooker's philosophy was to build and sell.
(defrule build4
(declare (salience 0))
(id-root ?id build)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)  
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id banA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  build.clp     build4   "  ?id "  banA )" crlf))
)





;"build","VT","1.banAnA"
;Build a reputation
;Government is building new school in this state
;This investment is building interest
;--"2.nirmANa_karanA"
;Build a modern nation
;These architects build in interesting && new styles
;--"3.sWApiwa_karanA/bala_xenA"
;Build a defense on nothing but the accused person's reputation
;--"4.baDZanA"
;Suspense was building right from the beginning of the opera
;
