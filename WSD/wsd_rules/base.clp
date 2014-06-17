
;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith) 10-dec-2013
;The film is based on a short story by Thomas Mann.[cambridge]
;फ़िल्म थोमस मन् कीं कहानी पर आधरित है.
(defrule base3
(declare (salience 5000))
(id-root ?id base)
?mng <-(meaning_to_be_decided ?id)
(kriyA-on_saMbanXI  ?id ?id1)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id AXAriwa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  base.clp 	base3   "  ?id "  AXAriwa )" crlf))
)

;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith) 10-dec-2013
;Where is your firm based?[cambridge]
;तुम्हारी फर्म कहाँ पर स्थापित है.
(defrule base4
(declare (salience 5000))
(id-root ?id base)
?mng <-(meaning_to_be_decided ?id)
(kriyA-subject  ?id ?id1)
(id-root ?id1 firm|company|organization)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sWApiwa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  base.clp 	base4   "  ?id "  sWApiwa )" crlf))
)


;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith) 10-dec-2013
;Nice is an excellent base for exploring the French Riviera.[cambridge]
;निस फ्रेन्च उष्ण तटीय क्षेत्र के बारे जानने के लिए एक बहुत ही बढिया रहने का स्थान है..
(defrule base5
(declare (salience 5000))
(id-root ?id base)
?mng <-(meaning_to_be_decided ?id)
(viSeRya-for_saMbanXI  ?id ?id1)
(id-root ?id1 tour|explore)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id rahane_kA_sWAna))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  base.clp 	base5   "  ?id "  rahane_kA_sWAna )" crlf))
)

;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith) 10-dec-2013
;A crystal glass with a heavy base.[cambridge]
;भारी तल का काँच का ग्लास
(defrule base6
(declare (salience 5000))
(id-root ?id base)
?mng <-(meaning_to_be_decided ?id)
(viSeRya-with_saMbanXI  ?id1 ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id wala))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  base.clp 	base6   "  ?id "  wala )" crlf))
)



;******************DEFAULT RULES***************************************


(defrule base0
(declare (salience 0)); salience reduced by Garima Singh(M.Tech-C.S, Banasthali Vidyapith) 10-dec-2013
(id-root ?id base)
?mng <-(meaning_to_be_decided ?id)
(id-cat ?id adjective|adjective_comparative|adjective_superlative)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id wucCa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  base.clp 	base0   "  ?id "  wucCa )" crlf))
)

;"base","Adj","1.wucCa/nIca"
;They spend most of their time in taking about base topics.
;
(defrule base1
(declare (salience 0)); salience reduced by Garima Singh(M.Tech-C.S, Banasthali Vidyapith) 10-dec-2013
(id-root ?id base)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id AXAra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  base.clp 	base1   "  ?id "  AXAra )" crlf))
)

;"base","N","1.AXAra"
;It is said that Sanskrit is the base of all European languages.
;
(defrule base2
(declare (salience 0)); salience reduced by Garima Singh(M.Tech-C.S, Banasthali Vidyapith) 10-dec-2013
(id-root ?id base)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id AXAriwa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  base.clp 	base2   "  ?id "  AXAriwa_kara )" crlf))
)

;"base","VT","1.AXAriwa_karanA"
;Ram's PHD dissertation was based on computer.
;
