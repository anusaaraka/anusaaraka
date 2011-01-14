
(defrule cat0
(declare (salience 5000))
(id-root ?id cat)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 big)
(viSeRya-viSeRaNa ?id1 ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id vyAGrAxi))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  cat.clp 	cat0   "  ?id "  vyAGrAxi )" crlf))
)

;viSeRaNa=big	billI_prajAwi_kA_prANi	0
(defrule cat1
(declare (salience 4900))
(id-root ?id cat)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id billI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  cat.clp 	cat1   "  ?id "  billI )" crlf))
)

;default_sense && category=noun	billI	0
;"cat","N","1.billI"
;What a cat she is!
;
;
;Headword : cat
;
;Examples --
;
;"billI"
;My cat gave birth to three kittens.
;merI billI ne wIna baccoM ko janma xiyA.
;Lions, tigers && leopards all belong to the cat family.
;siMha, Sera Ora weMxue, saBI billI jAwi kI hEM.
;
;"JagadZAlU_mahilA"
;Her sister is a real cat.
;usakI bahana bahuwa JagadZAlU hE.
;
;billiyAz apane JagadZAlU svaBAva ke liye prasixXa howI hEM. awaH 'cat' Sabxa kA
;prayoga aMgrejZI meM EsI mahilAoM ke liye BI howA hE.
;
;aMgrejZI meM 'cat' Sabxa kA prayoga 'big' ke viSeRaNa ke sAWa 'Sera Axi' ke liye
;BI howA hE.
;
;ukwa saBI arWoM ko samete hue aMgrejZI Sabxa 'cat' kA arWa 'billI`' mAnA jA sakawA hE jahAz '`' yaha bawAwA hE ki isakA arWa kuCa PElA huA hE.
;
;sUwra : billI`
