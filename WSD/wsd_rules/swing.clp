
(defrule swing0
(declare (salience 5000))
(id-root ?id swing)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id swinging )
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id JUlawA_huA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  swing.clp  	swing0   "  ?id "  JUlawA_huA )" crlf))
)

;"swinging","Adj","1.JUlawA_huA"
;
;
(defrule swing1
(declare (salience 4900))
(id-root ?id swing)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id JUla))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  swing.clp 	swing1   "  ?id "  JUla )" crlf))
)

(defrule swing2
(declare (salience 4800))
(id-root ?id swing)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id JUma))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  swing.clp 	swing2   "  ?id "  JUma )" crlf))
)
;@@@ 
;Added by jagriti(6.12.2013)
;She swung back to face him.[oald]
;वह उसका सामना करने के लिए पीछे मुड़ा.
;The bus swung sharply to the left.[oald]
;बस बाईं ओर तेजी से मुड़ी.
(defrule swing3
(declare (salience 4955))
(id-root ?id swing)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-object ?id ?id1)
(id-root ?id1 round)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 mudZa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  swing.clp 	swing3   "  ?id "  mudZa )" crlf))
)
;@@@ 
;Added by jagriti(6.12.2013)
;She suddenly heard a voice behind her and swung round.[cambridge dict]
;उसने अचानक अपने पीछे से एक आवाज सुनी और  मुड़ गयी.
(defrule swing4
(declare (salience 4950))
(id-root ?id swing)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(or(kriyA-to_saMbanXI ?id ?id1)(kriyA-upasarga ?id ?id1))
(id-root ?id1 left|back|right)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id mudZa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  swing.clp 	swing4  "  ?id "  mudZa )" crlf))
)
;@@@ 
;Added by jagriti(6.12.2013)
;The state has swung from Republican to Democrat.[oald]
;राज्य रिपब्लिकन से डेमोक्रेट में बदल गया.
(defrule swing5
(declare (salience 4955))
(id-root ?id swing)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-from_saMbanXI ?id ?)
(kriyA-to_saMbanXI ?id ?)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id baxala))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  swing.clp 	swing5  "  ?id "  baxala )" crlf))
)

;"swing","N","1.JUma"
;Girls walk with slight swing.
;--"2.JUlA"
;The children are playing on the swings.
;
;
