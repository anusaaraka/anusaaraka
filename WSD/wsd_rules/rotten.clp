

;@@@ Added by Anita - 9.5.2014
;I've had a rotten day! [oxford learner's dictionary]
;मेरा बहुत बेकार दिन था !
;She is a rotten singer. [oxford learner's dictionary]
;वह बहुत बेकार गायक है ।
;vaha eka bahuwa bekAra gAyaka hE. [Anusaarak-out-put] [verified sentence]
(defrule rotten0
(declare (salience 1000))
(id-root ?id rotten)
?mng <-(meaning_to_be_decided ?id)
(viSeRya-viSeRaNa  ? ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id bahuwa_bekAra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  rotten.clp     rotten0  "  ?id" bhuwa_bekAra )" crlf))
)

;@@@ Added by Anita - 10.5.2014
;What rotten luck ! [oxford learner's dictionary]
;कितनी बुरी किस्मत !
(defrule rotten1
(declare (salience 2000))
(id-root ?id rotten)
?mng <-(meaning_to_be_decided ?id)
(id-root ?id1 luck)
(viSeRya-viSeRaNa  ?id1 ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id burA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  rotten.clp     rotten1  "  ?id" burA )" crlf))
)

;@@@ Added by Anita - 10.5.2014
;The organization is rotten to the core. [oxford learner's dictionary]
;संगठन का अन्तर्भाग दूषित है ।
(defrule rotten2
(declare (salience 3000))
(id-root ?id rotten)
?mng <-(meaning_to_be_decided ?id)
(or(viSeRya-to_saMbanXI  ?id ?sam)(viSeRya-viSeRaNa  ? ?id))
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id xURiwa))
;(assert  (id-wsd_viBakwi   ?id1  kA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  rotten.clp     rotten2  "  ?id" xURiwa )" crlf)
;(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_viBakwi   " ?*wsd_dir* "  rotten.clp      rotten2   "  ?id " kA )" crlf)
)
)
;@@@ Added by Anita - 10.5.2014
;She felt rotten. [oxford learner's dictionary]
;वह बीमार महसूस किया.
(defrule rotten3
(declare (salience 500))
(id-root ?id rotten)
?mng <-(meaning_to_be_decided ?id)
(kriyA-object  ?kri ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id bImAra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  rotten.clp     rotten3  "  ?id" bImAra )" crlf))
)
;@@@ Added by Anita - 10.5.2014
;I feel rotten about leaving them behind. [oxford learner's dictionary]
;मैं उन्हें पीछे छोड़ के जाने से दोषी महसूस कर रही हूँ ।
(defrule rotten4
(declare (salience 3500))
(id-root ?id rotten)
?mng <-(meaning_to_be_decided ?id)
(viSeRya-about_saMbanXI  ?id ?sam)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id xoRI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  rotten.clp     rotten4  "  ?id" xoRI )" crlf))
)

;@@@ Added by Anita - 10.5.2014
;The room smelled of rotten vegetables. [cambridge dictionary]
; कमरे में सड़ी हुई सब्जियों की गंध आ रही थी । 
(defrule rotten5
(declare (salience 4500))
(id-root ?id rotten)
?mng <-(meaning_to_be_decided ?id)
(id-root ?id1 vegetable|fruit)
(viSeRya-viSeRaNa  ?id1 ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sadZA_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  rotten.clp     rotten5  "  ?id" sadZA_ho )" crlf))
)
;It was rotten of you to leave without saying goodbye.
;बिना गुड-बाय कहे जाना यह आपका दोष था ।
;########################################default-rule##################################
;@@@ Added by Anita - 9.5.2014
;The fruit is starting to go rotten. [oxford learner's dictionary]
;फल सड़ना शुरू हो रहे हैं ।
(defrule rotten_default-rule
(declare (salience 0))
(id-root ?id rotten)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sadZa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  rotten.clp     rotten_default-rule  "  ?id " sadZa )" crlf))
)


;She spoils the children rotten. [oxford learner's dictionary] [adverb]
;वह बच्चों को पूरी तरह से बिगाड़ती है ।
