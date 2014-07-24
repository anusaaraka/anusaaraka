
(defrule desert0
(declare (salience 5000))
(id-root ?id desert)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id deserted )
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id vIrAnA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  desert.clp  	desert0   "  ?id "  vIrAnA )" crlf))
)

;"deserted","Adj","1.vIrAnA"
;On the far side of the deserted street was the man with the umbrella.
;--"2.pariwyakwa
;They entered the deserted hut.
;
(defrule desert1
(declare (salience 4900))
(id-root ?id desert)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id regiswAna))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  desert.clp 	desert1   "  ?id "  regiswAna )" crlf))
)

(defrule desert2
(declare (salience 4000))
(id-root ?id desert)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id vIrAna_ho_jA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  desert.clp 	desert2   "  ?id "  vIrAna_ho_jA )" crlf))
)

;"desert","V","1.vIrAna_ho_jAnA"
;The park was completely deserted by this time in the evening.
;--"2.CodZa_xenA
;The mother deserted her children
;
;LEVEL 
;Headword : desert
;
;Examples --
;
;"desert","N","1.regiswAna"
;Rajasthan is in the Thar desert in the western part of India.
;rAjasWAna hinxuswAna ke paScimI BAga ke WAra regiswAna meM hE.<--jahAz kuCa na ho<--jise saba CodZa gaye hoM<--vIrAnA
;
;"desert","V","1.vIrAna_ho_jAnA"
;The park was completely deserted by this time in the evening.
;SAma ke isa pahara waka pArka pUrI waraha se vIrAna ho gayA WA.<--jisa jagaha para koI na ho<--jise saba CodZa gaye hoM
;--"2.CodZa_xenA
;The mother deserted her children.
;mAz apane baccoM ko CodZa gayI.
;
;
;sUwra : CodZa_xenA`[>vIrAnA]
;
;
;

;@@@ added by Pramila(BU) on 13-12-2013
;The mother deserted her children.          ;sentence of this file
;माँ ने अपने बच्चे को छोड़ दिया.
(defrule desert3
(declare (salience 4900))
(id-root ?id desert)
?mng <-(meaning_to_be_decided ?id)
(kriyA-subject  ?id ?id1)
(id-root ?id1 ?str&:(and (not (numberp ?str))(gdbm_lookup_p "animate.gdbm" ?str)))
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id CodZa_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  desert.clp 	desert3   "  ?id "  CodZa_xe )" crlf))
)

