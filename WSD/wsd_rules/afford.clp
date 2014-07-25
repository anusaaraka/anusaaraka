;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith) 03-jan-2014
;He became poorer and poorer and could no longer afford to give Nandini gold necklaces and beautiful saris.[gyananidhi]
;वह दिन पर दिन गरीब होता गया और अब नन्दनी को सोने के हार और खूबसूरत साड़ीयाँ देने का खर्च नहीं उठा सकता
(defrule afford1
(declare (salience 4000))
(id-root ?id afford)
?mng<-(meaning_to_be_decided ?id)
(kriyA-kriyArWa_kriyA  ?id ?id1)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Karca_uTA))
(assert (kriyA_id-object_viBakwi ?id kA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  afford.clp    afford1   "  ?id "  Karca_uTA )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-object_viBakwi   " ?*wsd_dir* "  afford.clp      afford1   "  ?id " kA )" crlf)
)
)

;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith) 03-jan-2014
;The tree affords some shelter from the sun.[oald]
;पेड़ सूरज से कुछ छाया जुटाने में समर्थ है.
(defrule afford2
(declare (salience 4000))
(id-root ?id afford)
?mng<-(meaning_to_be_decided ?id)
(kriyA-from_saMbanXI  ?id ?id1)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id jutAne_meM_samarWa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  afford.clp    afford2   "  ?id "  jutAne_meM_samarWa )" crlf))
)


;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith) 03-jan-2014
;We cannot afford to ignore this warning.[oald] 
;They could ill afford to lose any more staff.[oald]
(defrule afford3
(declare (salience 4000))
(id-root ?id afford)
?mng<-(meaning_to_be_decided ?id)
(kriyA-kriyArWa_kriyA  ?id ?id1)
(to-infinitive  =(+ ?id 1) ?id1)
(id-word ?id1 lose|ignore)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id galawI_kara))
(assert (kriyA_id-object_viBakwi ?id kA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  afford.clp    afford3   "  ?id "  galawI_kara )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-object_viBakwi   " ?*wsd_dir* "  afford.clp      afford3   "  ?id " kA )" crlf)
)
)


;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith) 03-jan-2014
;We cannot afford any more delays.[oald] 
;हम और अधिक देर नहीं कर सकते
(defrule afford4
(declare (salience 4000))
(id-root ?id afford)
?mng<-(meaning_to_be_decided ?id)
(kriyA-object  ?id ?obj)
(id-word ?obj delay)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  afford.clp    afford4   "  ?id "  kara )" crlf))
)


;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith) 03-jan-2014
;The legislation aims to afford protection to employees.[oald] 
;कानून का उद्देश्य कर्मचारियों को संरक्षण देना है.
(defrule afford5
(declare (salience 4000))
(id-root ?id afford)
?mng<-(meaning_to_be_decided ?id)
(kriyA-object  ?id ?obj)
(kriyA-to_saMbanXI  ?id ?id1)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  afford.clp    afford5   "  ?id "  xe )" crlf))
)

;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith) 06-jan-2014
;She felt she couldn't afford any more time off work.[oald] 
;उसने महसूस किया कि वह कार्य से हटकर कुछ अधिक समय नहीं निकाल पा रही है 
(defrule afford6
(declare (salience 3000))
(id-root ?id afford)
?mng<-(meaning_to_be_decided ?id)
(kriyA-object  ?id ?obj)
(id-word ?obj time)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id nikAla_pA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  afford.clp    afford6   "  ?id "  nikAla_pA )" crlf))
)

;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith) 06-jan-2014
;I'd give up work if I could afford it.[oald] 
;मैं कार्य छोड दूँगा यदि मैं यह करने का सामर्थ्य रखता 
(defrule afford7
(declare (salience 4000))
(id-root ?id afford)
?mng<-(meaning_to_be_decided ?id)
(kriyA-samakAlika_kriyA  ?id1 ?id)
(kriyA-object ?id ?obj)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id karane_kA_sAmarWya_raKa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  afford.clp    afford7   "  ?id "  karane_kA_sAmarWya_raKa )" crlf))
)


;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith) 06-jan-2014
;She never took a taxi, even though she could afford to.[oald] 
;उसने कभी टैक्सी नहीं ली जबकी वह खर्च उठा सकती है . 
(defrule afford8
(declare (salience 4000))
(id-root ?id afford)
?mng<-(meaning_to_be_decided ?id)
(kriyA-samakAlika_kriyA  ?id1 ?id)
(not(kriyA-object ?id ?obj))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Karca_uTA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  afford.clp    afford8   "  ?id "  Karca_uTA )" crlf))
)

;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith) 06-jan-2014
;He couldn't afford the money to go on the trip.[oald] 
;वह यात्रा पर जाने का खर्च नहीं उठा सका
(defrule afford9
(declare (salience 4000))
(id-root ?id afford)
?mng<-(meaning_to_be_decided ?id)
(kriyA-object  ?id ?id1)
(id-word ?id1 money)
(saMjFA-to_kqxanwa  ?id1 ?id2)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 Karca_uTA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " afford.clp	afford9  "  ?id "  " ?id1 "  Karca_uTA  )" crlf))
)


;*********************DEFAULT RULES************************

;$$$ modified mng from 'Karca_kara' to 'Karca_uTA' by Garima Singh(M.Tech-C.S, Banasthali Vidyapith) 06-jan-2014
(defrule afford0
(id-root ?id afford)
?mng<-(meaning_to_be_decided ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Karca_uTA))
(assert (kriyA_id-object_viBakwi ?id kA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  afford.clp    afford0   "  ?id "  Karca_uTA )" crlf))1
(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-object_viBakwi   " ?*wsd_dir* "  afford.clp      afford0   "  ?id " kA )" crlf)
)

