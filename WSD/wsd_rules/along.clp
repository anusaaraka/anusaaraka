;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith) 16-dec-2013
;They met Mongla outside and took him along.[gyananidhi]
;वे बाहर मोंगला से मिले और उसको साथ ले गये.
(defrule along7
(declare (salience 5000))
(id-root ?id along)
?mng <-(meaning_to_be_decided ?id)
(kriyA-upasarga  ?kri ?id)
(id-word ?kri took)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sAWa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  along.clp 	along7   "  ?id "  sAWa )" crlf))
)

;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith) 30-dec-2013
;Further along the same road lived the old woman who sold grass.[gyananidhi]
;They walked slowly along the road.[oald]
(defrule along8
(declare (salience 5000))
(id-root ?id along)
?mng <-(meaning_to_be_decided ?id)
(or (viSeRya-along_saMbanXI  ? ?id1) (kriyA-along_saMbanXI  ? ?id1))
(id-word ?id1 road)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ke_sAWa_sAWa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  along.clp 	along8   "  ?id "  ke_sAWa_sAWa )" crlf))
)

;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith) 30-dec-2013
;I looked along the shelves for the book I needed.[oald]
;जो किताब मुझे चाहिये थी उसके लिये मैंने सभी शेल्फ के एक कोने से दूसरे कोने तक देखा
(defrule along9
(declare (salience 5000))
(id-root ?id along)
?mng <-(meaning_to_be_decided ?id)
(kriyA-along_saMbanXI  ? ?id1)
(id-root ?id1 shelf)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ke_eka_kone_se_xUsare_kone_waka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  along.clp 	along9   "  ?id "  ke_eka_kone_se_xUsare_kone_waka )" crlf))
)

;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith) 30-dec-2013
;I was just walking along singing to myself.[oald]
;मैं बस अपने आप में गाता हुआ आगे चल रहा था 
(defrule along10
(declare (salience 5000))
(id-root ?id along)
?mng <-(meaning_to_be_decided ?id)
(kriyA-along_saMbanXI  =(- ?id 1) =(+ ?id 1))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Age))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  along.clp 	along10   "  ?id "  Age )" crlf))
)

;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith) 30-dec-2013
;He pointed out various landmarks as we drove along.[oald]
;उसने विभिन्न युगान्तरकारी घटनाएँ  दिखाईं जैसे जैसे  हम आगे  बढे.  
(defrule along11
(declare (salience 5500)); salience kept higher so that it does not conflicts with rule12
(id-root ?id along)
?mng <-(meaning_to_be_decided ?id)
(kriyA-upasarga  ?id1 ?id)
(id-root ?id1 drive)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id1 ?id Age_baDe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " along.clp  along11  "  ?id1 "  " ?id "  Age_baDe   )" crlf))
)

;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith) 30-dec-2013
;Why don't you come along?[oald]
;आप साथ क्यों नहीं चलते
(defrule along12
(declare (salience 5000))
(id-root ?id along)
?mng <-(meaning_to_be_decided ?id)
(id-last_word ?id along)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sAWa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  along.clp 	along12   "  ?id "  sAWa )" crlf))
)

;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith) 30-dec-2013
;I'll be along in a few minutes.[oald]
;मैं कुछ मिनटों में साथ होऊँगा . 
(defrule along13
(declare (salience 5000))
(id-root ?id along)
?mng <-(meaning_to_be_decided ?id)
(kriyA-kriyA_viSeRaNa  ?id1 ?id)
(kriyA-in_saMbanXI  ?id1 ?)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sAWa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  along.clp 	along13   "  ?id "  sAWa )" crlf))
)


(defrule along0
(declare (salience 5000))
(id-root ?id along)
?mng <-(meaning_to_be_decided ?id)
(id-word =(- ?id 1) accept|acknowledge|add|admit|agree|allege|announce|answer|argue|arrange|assert|assume|assure|believe|boast|check|claim|comment|complain|concede|conclude|confirm|consider|contend|convince|decide|demonstrate|deny|determine|discover|dispute|doubt|dream|elicit|ensure|estimate|expect|explain|fear|feel|figure|find|foresee|forget|gather|guarantee|guess|hear|hold|hope|imagine|imply|indicate|inform|insist|judge|know|learn|maintain|mean|mention|note|notice|notify|object|observe|perceive|persuade|pledge|pray|predict|pretend|promise|prophesy|prove|read|realize|reason|reassure|recall|reckon|record|reflect|remark|remember|repeat|reply|report|require|resolve|reveal|say|see|sense|show|state|suggest|suppose|swear|teach|tell|think|threaten|understand|vow|warn|wish|worry|write)
(id-word =(+ ?id 1) what|when|where|why|how|who)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id isa_ke_barAbara_barAbara_ki))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  along.clp 	along0   "  ?id "  isa_ke_barAbara_barAbara_ki )" crlf))
)

(defrule along1
(declare (salience 4900))
(id-root ?id along)
?mng <-(meaning_to_be_decided ?id)
(id-word =(+ ?id 1) what|when|where|why|how|who)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id usa_ke_barAbara_barAbara_ki))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  along.clp 	along1   "  ?id "  usa_ke_barAbara_barAbara_ki )" crlf))
)

;By Garima Singh ....this rule needs to be modified as there are many sentences in which category of word preceeding along is verb but sense of 'along' differs in each sentence.
; Ex: I'll be along in a few minutes.[oald]
;ex: The book's coming along nicely.[oald]
(defrule along2
(declare (salience 4800))
(id-root ?id along)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse =(- ?id 1) verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ke_sAWa_sAWa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  along.clp 	along2   "  ?id "  ke_sAWa_sAWa )" crlf))
)

(defrule along3
(declare (salience 4700))
(id-root ?id along)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse =(- ?id 1) noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ke_kinAre))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  along.clp 	along3   "  ?id "  ke_kinAre )" crlf))
)


;Added by sheetal for Open Logos
;It is true that you are my friend but I can not go along with you on this issue.
(defrule along6
(declare (salience 4850))
(id-root ?id along)
?mng <-(meaning_to_be_decided ?id)
;(id-cat_coarse ?id preposition)
(id-word =(+ ?id 1) with)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ke_sAwa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  along.clp     along6   "  ?id "  ke_sAwa )" crlf))
)

;********************DEFAULT RULES***********************************


(defrule along4
(declare (salience 0));salience reduced by Garima Singh
(id-root ?id along)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adverb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Age_baDanA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  along.clp 	along4   "  ?id "  Age_baDanA )" crlf))
)

;"along","Adv","1.Age_baDanA"
;The work is moving along
;

;$$$ modified by Garima Singh(M.Tech-C.S, Banasthali Vidyapith) 30-dec-2013.
(defrule along5
(declare (salience 0));salience reduced by Garima Singh
(id-root ?id along)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id preposition)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ke_sAWa_sAWa)); meaning changed from 'barabara_barAbara' to 'ke_sAWa_sAWa'
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  along.clp 	along5   "  ?id "  ke_sAWa_sAWa )" crlf))
)

;"along","Prep","1.barAbara_barAbara"
;His little sister came along to the movies
;
