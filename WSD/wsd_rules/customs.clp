;@@@ Added by Preeti(17-2-14)
;As the pagan customs were taken over by the Church they were given new religious meanings. [http://sentence.yourdictionary.com]
;jEsA ki mUrwipUjaka rivAja girajAGara se le lie gaye We unako naye majahabI arWa xie gaye We.
(defrule customs1
(declare (salience 1000))
(id-word ?id customs)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(samAsa_viSeRya-samAsa_viSeRaNa  ?id ?)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id rivAja))
(assert (id-wsd_root ?id custom))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  customs.clp 	customs1   "  ?id "  rivAja )" crlf))
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root   " ?*wsd_dir* "  customs.clp     customs1   "  ?id " custom)" crlf)
)

;@@@ Added by Preeti(17-2-14)
;Communities bound together by customs and traditions.[by mail&verified sentence] 
;samAja rivAjoM Ora paramparAoM se eka sAWa judawe hEM.
(defrule customs2
(declare (salience 1000))
(id-word ?id customs)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(kriyA-by_saMbanXI  ?id1 ?id)
(id-root ?id1 bound)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id rivAja))
(assert (id-wsd_root ?id custom))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  customs.clp 	customs2   "  ?id "  rivAja )" crlf))
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root   " ?*wsd_dir* "  customs.clp     customs2   "  ?id " custom)" crlf)
)

;#############################Defaults rule#######################################
;@@@ Added by Preeti(17-2-14)
;The Customs have seized large quantities of smuggled heroin. [Oxford Advanced Learner's Dictionary]
;sImASulka viBAga ne badI mAwrA meM waskara-vyApAra vale mAxaka paxArWa ko japwa kiyA hEM.
(defrule customs0
(id-word ?id customs)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sImASulka viBAga))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  customs.clp 	customs0   "  ?id "  sImASulka viBAga )" crlf))
)
