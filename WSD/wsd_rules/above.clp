
(defrule above0
(declare (salience 5000))
(id-root ?id above)
?mng <-(meaning_to_be_decided ?id)
(id-root =(- ?id 1) the)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Upara_vAlA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  above.clp 	above0   "  ?id "  Upara_vAlA )" crlf))
)

;The above definitions ...
(defrule above1
(declare (salience 4900))
(id-root ?id above)
?mng <-(meaning_to_be_decided ?id)
(id-word =(- ?id 1) accept|acknowledge|add|admit|agree|allege|announce|answer|argue|arrange|assert|assume|assure|believe|boast|check|claim|comment|complain|concede|conclude|confirm|consider|contend|convince|decide|demonstrate|deny|determine|discover|dispute|doubt|dream|elicit|ensure|estimate|expect|explain|fear|feel|figure|find|foresee|forget|gather|guarantee|guess|hear|hold|hope|imagine|imply|indicate|inform|insist|judge|know|learn|maintain|mean|mention|note|notice|notify|object|observe|perceive|persuade|pledge|pray|predict|pretend|promise|prophesy|prove|read|realize|reason|reassure|recall|reckon|record|reflect|remark|remember|repeat|reply|report|require|resolve|reveal|say|see|sense|show|state|suggest|suppose|swear|teach|tell|think|threaten|understand|vow|warn|wish|worry|write)
(id-word =(+ ?id 1) what|when|where|why|how|who)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id isa_ke_pAra_ki))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  above.clp 	above1   "  ?id "  isa_ke_pAra_ki )" crlf))
)

(defrule above2
(declare (salience 4800))
(id-root ?id above)
?mng <-(meaning_to_be_decided ?id)
(id-word =(+ ?id 1) what|when|where|why|how|who)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id usa_ke_pAra_ki))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  above.clp 	above2   "  ?id "  usa_ke_pAra_ki )" crlf))
)

(defrule above3
(declare (salience 4700))
(id-root ?id above)
?mng <-(meaning_to_be_decided ?id)
(viSeRya-above_saMbanXI  ?id1 ?id2)
;(id-cat_coarse =(- ?id 1) noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ke_Upara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  above.clp 	above3   "  ?id "  ke_Upara )" crlf))
)

(defrule above4
(declare (salience 4600))
(id-root ?id above)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Upara_vAlA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  above.clp 	above4   "  ?id "  Upara_vAlA )" crlf))
)

;default_sense && category=adjective	Upara_kA	0
;"above","Adj","1.Upara_kA"
;Please reply at the above mentioned address.
;
(defrule above5
(declare (salience 4500))
(id-root ?id above)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adverb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id UzcA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  above.clp 	above5   "  ?id "  UzcA )" crlf))
)

;"above","Adv","1.UzcA"
;Grades B && above are considered satisfactory.
;
(defrule above6
(declare (salience 4400))
(id-root ?id above)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id preposition)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ke_Upara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  above.clp 	above6   "  ?id "  ke_Upara )" crlf))
)

;"above","Prep","1.Upara"
;The water came above our shoulder.
;
(defrule above7
(declare (salience 4300))
(id-root ?id above)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Upara_vAlA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  above.clp 	above7   "  ?id "  Upara_vAlA )" crlf))
)


;Ex. This initial explanation given above refers to the ideal aspect of culture. The metals described above are toxic to fish and other aquatic life. Added by Sukhada (27-03-10)
(defrule above8
(declare (salience 4800))
(id-root ?id above)
(kriyA-aXikaraNavAcI ?kri ?id) ; kriyA-lupwa_prep_saMbanXI  is now changed to kriyA-aXikaraNavAcI (Modified by Roja 28-12-10 Suggested by Sukhada)
?mng <-(meaning_to_be_decided ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Upara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  above.clp     above8   "  ?id "  Upara )" crlf))
)

;All the above have passed the examination.
;LEVEL 
;Headword : above
;
;Examples --
;
;"above","Adv","1.Upara"
;Grades B && above are considered satisfactory.
;bI waWA usake Upara ke greda saMwoRajanaka mAne jAwe hEM.
;
;"above","Prep","1.ke Upara"
;The sun rose above the horizon.
;sUraja kRiwija ke Upara uTa gayA.
;
;"above","Adj","1.Upara_kA"
;Please reply at the above mentioned address.
;kqpayA Upara ke pawe para uwwara xeM.
;
;       sUwra : Upara`
;
;
