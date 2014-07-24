;@@@ Added by Anita  13.3.2014
;The special effects were so realistic. [cambridge dictionary]
;विशेष तकनीक इतनी यथार्थ थी ।
(defrule realistic1
(declare (salience 4000))
(id-root ?id realistic)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
(subject-subject_samAnAXikaraNa  ? ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id yaWArWa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  realistic.clp 	realistic1   "  ?id "  yaWArWa )" crlf))
)

;@@@ Added by Anita  13.3.2014
;It is not realistic to expect people to spend so much money. [OALD]
;लोगों से इतना पैसा खर्च करने की उम्मीद करना उचित नहीं है ।
(defrule realistic2
(declare (salience 4800))
(id-root ?id realistic)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
(saMjFA-to_kqxanwa  ?id ?)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id uciwa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  realistic.clp 	realistic2   "  ?id "  uciwa )" crlf))
)
;#####################################default-rule#######################################
;@@@ Added by Anita 13.3.2014
;In any realistic situation the functions will be differentiable at all points and the graphs will be smooth.  [ncert]
;परन्तु किसी वास्तविक परिस्थिति में सभी ग्राफ निष्कोण वक्र होङ्गे और उनके सभी बिन्दुओं पर फलनों का अवकलन प्राप्त किया जा सकता है।
(defrule realistic0
(id-root ?id realistic)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id vAswavika))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  realistic.clp 	realistic0   "  ?id "  vAswavika )" crlf))
)
