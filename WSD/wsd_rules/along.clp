
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

(defrule along4
(declare (salience 4600))
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
(defrule along5
(declare (salience 4500))
(id-root ?id along)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id preposition)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id barAbara_barAbara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  along.clp 	along5   "  ?id "  barAbara_barAbara )" crlf))
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


;"along","Prep","1.barAbara_barAbara"
;His little sister came along to the movies
;
