;@@@ Added by Preeti(5-3-14)
;I had to struggle through the crush to get to the door. [Cambridge Learner’s Dictionary]
;muJe xaravAje jAne ke liye BIda se safgrAma karanA padA.
(defrule crush0
(id-root ?id crush)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id BIdZa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* " crush.clp 	crush0   "  ?id "  BIdZa )" crlf))
)

;@@@ Added by Preeti(5-3-14)
;I had a huge crush on her. [Oxford Advanced Learner's Dictionary]
;muJe usapara bahuwa aXika kraSa WA.
(defrule crush1
(declare (salience 1000))
(id-root ?id crush)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(viSeRya-on_saMbanXI  ?id ?)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kraSa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* " crush.clp 	crush1   "  ?id "  kraSa )" crlf))
)

;@@@ Added by Preeti(5-3-14)
;The army was sent in to crush the rebellion.[Oxford Advanced Learner's Dictionary]
;bagAvawa ko kucalane ke liye senA BejI gayI WI.
(defrule crush2
(id-root ?id crush)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kucala))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* " crush.clp 	crush2   "  ?id "  kucala )" crlf))
)

;@@@ Added by Preeti(5-3-14)
;He was crushed by the news of the accident. [Cambridge Learner’s Dictionary]
;vaha xurGatanA ke samAcAra se biKarA gayA WA.
(defrule crush3
(declare (salience 1050))
(id-root ?id crush)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-by_saMbanXI  ?id ?id1)
(id-root ?id1 news|criticism)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id biKara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* " crush.clp 	crush3   "  ?id "  biKara )" crlf))
)

;@@@ Added by Preeti(5-3-14)
;My dress got all crushed in my suitcase. [Cambridge Learner’s Dictionary]
;mere sUtakesa meM mere libAsa para silavateM pada gayI.
(defrule crush4
(declare (salience 1000))
(id-root ?id crush)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-in_saMbanXI  ?id ?id1)
(id-root ?id1 suitcase)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id silavateM_padZa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* " crush.clp 	crush4   "  ?id "  silavateM_padZa )" crlf))
)

;@@@ Added by Preeti(5-3-14)
;Over twenty prisoners were crushed into a small dark cell.[Oxford Advanced Learner's Dictionary] 
;karIba bIsa banxiyoM ko eka CotI kAlI koTarI ke aMxara jabaxaswI GusAyA  WA.
(defrule crush5
(declare (salience 1000))
(id-root ?id crush)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-into_saMbanXI  ?id ?)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id jabaxaswI_GusA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* " crush.clp 	crush5   "  ?id "  jabaxaswI_GusA)" crlf))
)

;@@@ Added by Preeti(5-3-14)
;Add three cloves of crushed garlic. [Cambridge Learner’s Dictionary]
;masale huE lahasuna kI wIna kalIyAz milAo.
(defrule crush6
(declare (salience 1000))
(id-root ?id crush)
?mng <-(meaning_to_be_decided ?id)
;(id-cat_coarse ?id verb)
(or(kriyA-with_saMbanXI  ?id ?)(viSeRya-viSeRaNa  ? ?id))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id masala))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* " crush.clp 	crush6   "  ?id "  masala)" crlf))
)

;@@@ Added by Preeti(5-3-14)
;The package had been badly crushed in the post. [Cambridge Learner’s Dictionary]
;pEkeja dAka meM burI waraha se naRta ho gayA WA.
(defrule crush7
(declare (salience 1000))
(id-root ?id crush)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-subject  ?id ?id1)
(id-root  ?id1 package)
;(kriyA-in_saMbanXI  ?id ?)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id naRta_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* " crush.clp 	crush7   "  ?id "  naRta_ho)" crlf))
)

;@@@ Added by Preeti(5-3-14)
;France crushed Wales by 36 to 3 in last Saturday's match in Paris.[Cambridge Learner’s Dictionary] 
;perisa meM piCale SanivAra ke mEca meM PrAMsa ne 36 se 3 se velsa ko parAswa_kiyA.
(defrule crush8
(declare (salience 1000))
(id-root ?id crush)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-in_saMbanXI  ?id ?id1)
(id-root ?id1 match)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id parAswa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* " crush.clp 	crush8   "  ?id "  parAswa_kara)" crlf))
)

;################### Additional Examples ####################
;Tragedy struck when several people were crushed to death in the crowd.
;Several people were crushed to death in the accident.