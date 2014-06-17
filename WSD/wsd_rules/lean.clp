
(defrule lean0
(declare (salience 5000))
(id-root ?id lean)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id leaning )
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id JukAva))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  lean.clp  	lean0   "  ?id "  JukAva )" crlf))
)

;"leaning","N","1.JukAva"
;He has rightist leanings.
;
;
(defrule lean1
(declare (salience 4900))
(id-root ?id lean)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 on)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 sahAre_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " lean.clp	lean1  "  ?id "  " ?id1 "  sahAre_ho  )" crlf))
)

;The blind man leaned on a stick.
;anXe vyakwi ne CadZI kA sahArA liyA
(defrule lean2
(declare (salience 4800))
(id-root ?id lean)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 on)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 jZora_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " lean.clp	lean2  "  ?id "  " ?id1 "  jZora_xe  )" crlf))
)

;I'll have to lean on her to work hard.
;muJe use kadZI mehanawa karane ke lie jZora xenA hogA
;(defrule lean3
;(declare (salience 4700))
;(id-root ?id lean)
;?mng <-(meaning_to_be_decided ?id)
;(id-word ?id1 back)
;(kriyA-back_saMbanXI ?id ?) ; delete sukhada's Automatic line
;(id-cat_coarse ?id verb)
;=>
;(retract ?mng)
;(assert (id-wsd_root_mng ?id pICe_Juka)) ; delete sukhada's Automatic line
;(if ?*debug_flag* then
;(printout wsd_fp ;"(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " ;lean.clp	lean3  "  ?id "  " ?id1 "  pICe_Juka  )" crlf))
;)

(defrule lean4
(declare (salience 4600))
(id-root ?id lean)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 back)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 pICe_Juka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " lean.clp	lean4  "  ?id "  " ?id1 "  pICe_Juka  )" crlf))
)

;Added by human being
(defrule lean5
(declare (salience 4500))
(id-root ?id lean)
?mng <-(meaning_to_be_decided ?id)
(id-word =(+ ?id 1) over)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id JukanA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  lean.clp 	lean5   "  ?id "  JukanA )" crlf))
)

;PP_null will absorb over && will not give the ke_upara equivalent.
;PP_null_over	JukanA	0
;pos tagger gives wrong tag, && hence category=verb condition removed
;PP_null_over && category=verb	Juka	0
;He leant over the glass counter.
(defrule lean6
;(declare (salience 4400)) ; salience change
(id-root ?id lean)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id xubalA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  lean.clp 	lean6   "  ?id "  xubalA )" crlf))
)

;"lean","Adj","1.xubalA"
;She is very lean && thin. 
;--"2.kama"
;A lean harvest. 
;--"3.majjAhIna"
;(of meal) He has been advised to take a lean diet.
;
(defrule lean7
(declare (salience 4300))
(id-root ?id lean)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Juka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  lean.clp 	lean7   "  ?id "  Juka )" crlf))
)

;@@@--- Added by Nandini(11-4-14)
;He leans heavily on his family.[oald]
;usakA usake parivAra para bahuw aXika JukAva hE.
(defrule lean8
(declare (salience 4300))
(id-root ?id lean)
?mng <-(meaning_to_be_decided ?id)
(kriyA-on_saMbanXI  ?id ?id1)
(id-root ?id1 family)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id JukAva_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  lean.clp 	lean8   "  ?id "  JukAva_ho )" crlf))
)

;@@@--- Added by Nandini(11-4-14)
;Can I lean my bike against the wall?[oald]
;kyA mEM xIvAra kI ora merI sAikila JukA sakawA hUz?
(defrule lean9
(declare (salience 4300))
(id-root ?id lean)
?mng <-(meaning_to_be_decided ?id)
(kriyA-against_saMbanXI  ?id ?id1)
;(kriyA-object  ?id ?id1)
;(id-root ?id1 bike)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id tikA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  lean.clp 	lean9   "  ?id "  tikA )" crlf))
)

;@@@--- Added by Nandini(12-4-14)
;She buy a lean, tender piece of beef.[oald]
;vaha go mAMsa kA eka carabIrahiwa, naram tukadA KarIxawI hE.
(defrule lean10
(declare (salience 4350))
(id-root ?id lean)
?mng <-(meaning_to_be_decided ?id)
(and(viSeRya-viSeRaNa  ?id1 ?id)
(viSeRya-of_saMbanXI  ?id1 ?id2))
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id carabIrahiwa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  lean.clp 	lean10   "  ?id "  carabIrahiwa )" crlf))
)

;@@@--- Added by Nandini(12-4-14)
;This is the leanest time of the year for the tourist industry. [oald]
;yaha paryataka uxyoga ke liye varRa kA vahI sabase aXika bekAra samaya hE.
(defrule lean11
(declare (salience 4300))
(id-root ?id lean)
?mng <-(meaning_to_be_decided ?id)
(viSeRya-viSeRaNa  ?id1 ?id)
(id-cat_coarse ?id adjective|adjective_comparative|adjective_superlative)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id bekAra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  lean.clp 	lean11   "  ?id "  bekAra )" crlf))
)

;@@@--- Added by Nandini(12-4-14)
;The government has been leaning on the TV company not to broadcast the show.[oald]
;sarakAra xUraxarSana kampanI para kAryakrama ko praxarSana nahIM karane ke liye xabAva dAlawI rahI hE.
(defrule lean12
(declare (salience 4800))
(id-root ?id lean)
?mng <-(meaning_to_be_decided ?id)
;(id-word ?id1 on)
;(kriyA-upasarga ?id ?id1)
(kriyA-kriyArWa_kriyA  ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id xabAva_dAla ))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  lean.clp 	lean12   "  ?id " xabAva_dAla )" crlf))
)

;@@@--- Added by Nandini(12-4-14)
;The company recovered well after going through several lean years.[oald]
;kampanI ke maMxI ke kaI varRa jAne ke bAxa acCI waraha ubarkae Ayi hE.
(defrule lean13
(declare (salience 4380))
(id-root ?id lean)
?mng <-(meaning_to_be_decided ?id)
(viSeRya-viSeRaNa  ?id1 ?id)
(id-root ?id1 year|time)
(id-cat_coarse ?id adjective|adjective_comparative|adjective_superlative)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id maMxI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  lean.clp 	lean13   "  ?id "  maMxI )" crlf))
)

;@@@--- Added by Nandini(12-4-14)
;Many animals have a lean time of it in winter.[oald]
;bahuwa sAre paSuoM kA jAde meM  samaya AhAra_kI_xqRtIse_kaTIna_samaya howA hE.
(defrule lean14
(declare (salience 4450))
(id-root ?id lean)
?mng <-(meaning_to_be_decided ?id)
(and(kriyA-subject  ?id2 ?id3)(kriyA-object  ?id2 ?id1))
(viSeRya-viSeRaNa  ?id1 ?id)
(id-root ?id1 time)
(id-root ?id3 animal)
(id-cat_coarse ?id adjective|adjective_comparative|adjective_superlative)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id AhAra_kI_xqRtIse_kaTIna))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  lean.clp 	lean14   "  ?id "  AhAra_kI_xqRtIse_kaTIna )" crlf))
)

;@@@--- Added by Nandini(12-4-14)
;I understand his leans well. [SikRArWI-koSa]
;mEM usakI pravqwwiyoM ko KuUba jAnawA hUz.
(defrule lean15
(declare (salience 5050))
(id-root ?id lean)
?mng <-(meaning_to_be_decided ?id)
(kriyA-object ?id1 ?id)
(id-root ?id1 understand)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pravqwwI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  lean.clp 	lean15   "  ?id "  pravqwwI )" crlf))
)
;"lean","V","1.JukanA"
;She leaned out of the window. 
;--"2.sahAre_tikanA"
;The ladder is leaning against the wall. 
;--"3.sahAre_raKanA"
;He leant his stick against the wall. 
;--"4.nirBara_honA"
;She leans upon her mother for guidance. 
;--"5.pravqwwi_honA"
;His thinking leans towards communism.
;
