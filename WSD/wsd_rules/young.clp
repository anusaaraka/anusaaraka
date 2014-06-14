;$$$ Modified by Anita  14.3.2014 
;She is the youngest in her class.
;वह अपनी कक्षा में सबसे छोटी है ।
(defrule young0
(declare (salience 5000))
(id-root ?id young)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id ?wrd&youngest) ; Added '?wrd&' by Anita 
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sabase_CotA))
(assert (id-eng-src  ?id ?wrd  Word_mng)) ;Added by Anita
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng  " ?*wsd_dir* "  young.clp  	young0   "  ?id "  sabase_CotA )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-id-eng_src   " ?*wsd_dir* "  young.clp     young0   "  ?id "  "   ?wrd  " Word_mng )" crlf))
)

;Added by Meena(7.4.10)
;Losing to a younger player was a bitter pill to swallow.
(defrule young1
(declare (salience 5200))
(id-root ?id young)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id younger)
(viSeRya-wulanAwmaka_viSeRaNa  ?id1 ?id)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id kaniRTa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  young.clp      young1   "  ?id "    kaniRTa) " crlf))
)


(defrule young2
(id-root ?id young)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id younger)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id CotA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  young.clp  	young2   "  ?id "  CotA )" crlf))
)

;"younger","Adj","1.CotA"
;Her younger sister is smart.
;
;
(defrule young3
(declare (salience 4800))
(id-root ?id young)
?mng <-(meaning_to_be_decided ?id)
(id-word =(- ?id 1) own)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id baccA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  young.clp 	young3   "  ?id "  baccA )" crlf))
)

;they do not look after their own young
;$$$ Modified by Anita 14-03-14
;Changed meaning from "---" to "-"
(defrule young4
(declare (salience 4700))
(id-root ?id young)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 woman)
(viSeRya-viSeRaNa ?id1 ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id -))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  young.clp 	young4   "  ?id "  - )" crlf))
)

; young woman
(defrule young5
(declare (salience 4600))
(id-root ?id young)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 very)
(viSeRya-viSeRaNa ?id1 ?id)
(id-cat ?id adjective|adjective_comparative|adjective_superlative)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id CotA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  young.clp 	young5   "  ?id "  CotA )" crlf))
)


;Added by sheetal(30-12-09).
;She is too young for marriage .
(defrule young8
(declare (salience 4550))
(id-root ?id young)
?mng <-(meaning_to_be_decided ?id)
(viSeRya-for_saMbanXI ?id ?id1)
(id-root ?id1 marriage)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id CotA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  young.clp     young8   "  ?id "  CotA )" crlf))
)

;@@@ Added by Anita--25.2.2014
;He is a representative of the younger generation. [old reprensentative.clp sentence]
;वह युवा पीढ़ी का प्रतिनिधि है ।
(defrule young9
(declare (salience 5100))
(id-root ?id young)
?mng <-(meaning_to_be_decided ?id)
(viSeRya-viSeRaNa  ? ?id)
(id-cat_coarse ?id adjective)
(id-word ?id ?wrd&younger|youngest)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id yuvA))
(assert (id-eng-src  ?id ?wrd  Word_mng))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  young.clp     young9   "  ?id "  yuvA )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-id-eng_src   " ?*wsd_dir* "  young.clp     young9   "  ?id "  "   ?wrd  " Word_mng )" crlf))
)

;@@@ Added by Anita 6.3.2014
;Young soldiers need plenty of drill. [Gyan Nidhi]
;अनुभवहीन सैनिकों को अभ्यास की आवश्यकता अधिक होती है । [using no. 3 parser] 
(defrule young10
(declare (salience 5250))
(id-root ?id young)
?mng <-(meaning_to_be_decided ?id)
(id-root ?id1 soldier)
(viSeRya-viSeRaNa  ?id1 ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id anuBavahIna))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  young.clp     young10  "  ?id "  anuBavahIna )" crlf))
)
; @@@ Added by Anita - 5.4.2014
;On Thursday at around 1 am, the police received information that a young person was lying injured ;near the drainage ditch in the Roshan garden area.  - [By mail]
;गुरुवार को सुबह १ बजे के करीब , पुलिस को सूचना मिली कि रोशन गार्डन क्षेत्र में जल-निकासी मोरी के पास एक युवा व्यक्ति घायल पड़ा है ।
(defrule young11
(declare (salience 5350))
(id-root ?id young)
?mng <-(meaning_to_be_decided ?id)
(id-root ?id1 person)
(viSeRya-viSeRaNa  ?id1 ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id yuvA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  young.clp     young11  "  ?id "  yuvA )" crlf))
)

;--------------------------- Default rules ---------------------------
(defrule young6
(id-root ?id young)
?mng <-(meaning_to_be_decided ?id)
(id-cat ?id adjective|adjective_comparative|adjective_superlative)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id waruNa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  young.clp    young6   "  ?id "  waruNa )" crlf))
)

(defrule young7
(id-root ?id young)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id baccA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  young.clp    young7   "  ?id "  baccA )" crlf))
)



;"young","N","1.baccA"
;She is too young for marriage.

