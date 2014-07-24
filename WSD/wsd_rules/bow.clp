
;@@@ Added by Garima Singh(M.tech-C.S, Banasthali Vidyapith)15-Feb-2014
;She has finally decided it's time to bow out of international tennis.[oald]
;उसने अन्ततः अन्तर्राष्ट्रीय टेनिस से सन्यास लेने का फैसला किया है  
(defrule bow3
(declare (salience 3000))
(id-root ?id bow)
?mng <-(meaning_to_be_decided ?id)
(kriyA-upasarga  ?id ?id1)
(id-word ?id1 out)
(kriyA-of_saMbanXI  ?id ?)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 sanyAsa_le))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " bow.clp	bow3  "  ?id "  " ?id1 "  sanyAsa_le )" crlf))
)



;@@@ Added by Garima Singh(M.tech-C.S, Banasthali Vidyapith)15-Feb-2014
;The people all bowed down before the Emperor.[oald]
;सब लोग सम्राट् के सामने झुके  
(defrule bow2
(declare (salience 3000))
(id-root ?id bow)
?mng <-(meaning_to_be_decided ?id)
(kriyA-upasarga  ?id ?id1)
(id-word ?id1 down)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 Juka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " bow.clp	bow2  "  ?id "  " ?id1 "  Juka )" crlf))
)

;@@@ Added by Garima Singh(M.tech-C.S, Banasthali Vidyapith)15-Feb-2014
;She bowed her head in shame.[oald]
;उसने उसका सिर शर्म से झुकाया
(defrule bow4
(declare (salience 3000))
(id-root ?id bow)
?mng <-(meaning_to_be_decided ?id)
(kriyA-object ?id ?)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id JukA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  bow.clp 	bow4   "  ?id "  JukA )" crlf))
)

;@@@ Added by Garima Singh(M.tech-C.S, Banasthali Vidyapith)15-Feb-2014
;I tied the ribbon around the parcel in a pretty bow.[oald]
;मैंने पार्सल के चारों ओर फीते को एक आकर्षक बो/आकार में बांधा . 
(defrule bow5
(declare (salience 3000))
(id-root ?id bow)
?mng <-(meaning_to_be_decided ?id)
(kriyA-in_saMbanXI  ?kri ?id)
(id-root ?kri tie)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id bo))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  bow.clp 	bow5   "  ?id "  bo )" crlf))
)

;@@@ Added by Garima Singh(M.tech-C.S, Banasthali Vidyapith)15-Feb-2014
;Violins are played with bows.[cambridge]
;वायलन को गज़ से बजाया जाता है
(defrule bow6
(declare (salience 3000))
(id-root ?id bow)
?mng <-(meaning_to_be_decided ?id)
(kriyA-with_saMbanXI  ?kri ?id)
(id-root ?kri play)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id gaja))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  bow.clp 	bow6  "  ?id "  gaja )" crlf))
)

;@@@ Added by Garima Singh(M.tech-C.S, Banasthali Vidyapith)15-Feb-2014
;Bow of a violin.[shiksharthi kosh]
;वायलन का गज़
(defrule bow7
(declare (salience 3000))
(id-root ?id bow)
?mng <-(meaning_to_be_decided ?id)
(and(viSeRya-of_saMbanXI  ?id ?id1)(id-word ?id1 violin))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id gajZa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  bow.clp 	bow7  "  ?id "  gajZa )" crlf))
)

;@@@ Added by Garima Singh(M.tech-C.S, Banasthali Vidyapith)15-Feb-2014
;I greeted the lady with a bow.[shiksharti kosh]
;मैंने उस महिला को झुककर नमस्कार किया
(defrule bow8
(declare (salience 3000))
(id-root ?id bow)
?mng <-(meaning_to_be_decided ?id)
(kriyA-with_saMbanXI  ?kri ?id)
(id-root ?kri greet)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Jukakara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  bow.clp 	bow8   "  ?id " Jukakara )" crlf))
)

;@@@ Added by Garima Singh(M.tech-C.S, Banasthali Vidyapith)15-Feb-2014
;He bowed to the ladies.[shiksharthi]
;उसने महिलाओं को झुककर अभिवादन किया
(defrule bow9
(declare (salience 3000))
(id-root ?id bow)
?mng <-(meaning_to_be_decided ?id)
(kriyA-to_saMbanXI  ?id ?id1)
(id-root ?id1 ?str&:(and (not (numberp ?str))(gdbm_lookup_p "animate.gdbm" ?str)))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Jukakara_aBIvAxana_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  bow.clp 	bow9   "  ?id " Jukakara_aBIvAxana_kara )" crlf))
)

;@@@ Added by Garima Singh(M.tech-C.S, Banasthali Vidyapith)15-Feb-2014
;To bend a bow.[shiksharthi]
;धनुष को मोड़ना
;To draw a bow.[shiksharthi]
;धनुष खींचना
(defrule bow10
(declare (salience 3000))
(id-root ?id bow)
?mng <-(meaning_to_be_decided ?id)
(kriyA-object  ?kri ?id)
(id-root ?id bend|draw)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Jukakara_aBIvAxana_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  bow.clp 	bow10   "  ?id " Jukakara_aBIvAxana_kara )" crlf))
)


;*****************DEFAULT RULES**************************

;$$$ Modified by Garima Singh(M.tech-C.S, Banasthali Vidyapith)15-Feb-2014
;Changed the meaning from 'saraka_PaMxA' to 'aBIvAxana'
;The messenger made a formal bow and left the room.[oald]
;सन्देशवाहक ने एक औपचारिक अभीवादन/नमन/प्रणाम किया और कमरे से चला गया
(defrule bow0
(declare (salience 0));salience reduced by Garima Singh
(id-root ?id bow)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id aBIvAxana))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  bow.clp 	bow0   "  ?id "  aBIvAxana )" crlf))
)

(defrule bow1
(declare (salience 0));salience reduced by Garima Singh
(id-root ?id bow)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Juka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  bow.clp 	bow1   "  ?id "  Juka )" crlf))
)



;"bow","V","1.JukanA"
;The children bowed to the audience after the dance.
;
;
