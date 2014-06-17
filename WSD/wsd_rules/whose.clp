
(defrule whose0
(declare (salience 5000))
(id-root ?id whose)
?mng <-(meaning_to_be_decided ?id)
(id-word =(- ?id 1) tell)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kOna))
(assert (id-H_vib_mng ?id kA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  whose.clp 	whose0   "  ?id "  kOna )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-id-H_vib_mng   " ?*wsd_dir* "  whose.clp     whose0   "  ?id " kA )" crlf))
)

(defrule whose1
(declare (salience 4900))
(id-root ?id whose)
?mng <-(meaning_to_be_decided ?id)
(praSnAwmaka_vAkya      )
;(id-word 1 ?id)
(test (eq ?id 1)) ;Commented above line and added test condition by Roja 04-11-13 automatically by a programme.
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kOna))
(assert (id-H_vib_mng ?id kA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  whose.clp 	whose1   "  ?id "  kOna )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-id-H_vib_mng   " ?*wsd_dir* "  whose.clp     whose1   "  ?id " kA )" crlf))
)

(defrule whose2
(declare (salience 4800))
(id-root ?id whose)
?mng <-(meaning_to_be_decided ?id)
(id-cat ?id wh_adverb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kisakA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  whose.clp 	whose2   "  ?id "  kisakA )" crlf))
)

;"whose","Interro","1.kisakA"
;Whose car is that?.
;

;$$$ Removed category 'relative_pronoun' and added 'viSeRya-jo_samAnAXikaraNa' relation by Roja(28-12-13). Suggested by Sukada.
;"whose","Rel Pron","1.jisakA"
;The boy whose book it is, will come later.
(defrule whose3
(declare (salience 4700))
(id-root ?id whose)
?mng <-(meaning_to_be_decided ?id)
(viSeRya-jo_samAnAXikaraNa ? ?id)
;(id-cat_coarse ?id relative_pronoun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id jisakA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  whose.clp 	whose3   "  ?id "  jisakA )" crlf))
)

;Added by sheetal(23-03-10)
;This is the man whose dog I bought .
(defrule whose4
(declare (salience 4600))
(id-root ?id whose)
?mng <-(meaning_to_be_decided ?id)
(viSeRya-RaRTI_viSeRaNa ?vi ?id)
(id-cat_coarse ?id determiner)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id jisa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  whose.clp     whose4   "  ?id "  jisa )" crlf))
)

;@@@ Added by Pramila(Banasthali University) on 24-02-2014
;The financial difficulties of the University continued while Government added to them by starting new Universities and thereby reducing 
;the number of students on whose examination fees the Calcutta University counted.   ;gyannidhi
;विश्वविद्यालय की वित्तीय कठिनाइयां बनी रही जबकि सरकार ने नये विश्वविद्यालय चाबू कर और इस प्रकार उन छात्रों की संख्या को घटाकर जिनका परीक्षा शुल्क कलकत्ता 
;विश्वविद्यालय के लिए महत्त्वपूर्ण था, इस कठिनाई में वृद्धि कर दी।
(defrule whose5
(declare (salience 5000))
(id-root ?id whose)
?mng <-(meaning_to_be_decided ?id)
(viSeRya-RaRTI_viSeRaNa ?vi ?id)
(id-root-category-suffix-number ?vi ? noun s p)
(id-cat_coarse ?id wh-pronoun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id jinakA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  whose.clp     whose5   "  ?id "  jinakA )" crlf))
)
