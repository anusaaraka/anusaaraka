
(defrule very0
(declare (salience 5000))
(id-root ?id very)
?mng <-(meaning_to_be_decided ?id)
(id-word =(- ?id 1) those)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id -))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  very.clp 	very0   "  ?id "  - )" crlf))
)

(defrule very1
(declare (salience 4900))
(id-root ?id very)
?mng <-(meaning_to_be_decided ?id)
(id-word =(+ ?id 1) same )
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id bilakula))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  very.clp 	very1   "  ?id "  bilakula )" crlf))
)

;On very same day ..
(defrule very2
(declare (salience 4800))
(id-root ?id very)
?mng <-(meaning_to_be_decided ?id)
(id-word =(+ ?id 1) next)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id TIka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  very.clp 	very2   "  ?id "  TIka )" crlf))
)

;On very next day ..
(defrule very3
(declare (salience 4700))
(id-root ?id very)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id bahuwa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  very.clp 	very3   "  ?id "  bahuwa )" crlf))
)

;"very","Adj","1.bahuwa[uwwamA_sUcaka]"
;The flower is very beautiful
;--"2.usI"
;She was sitting in the very seat
;
(defrule very4
(declare (salience 4600))
(id-root ?id very)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adverb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id awyaMwa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  very.clp 	very4   "  ?id "  awyaMwa )" crlf))
)

;"very","Adv","1.awyaMwa"
;She sang very well
;


;@@@ Added by Prachi Rathore[19-2-14]
;She got very high marks in her geography exam.[cambridge]
;उसने उसकी भूगोल परीक्षा में बहुत अच्छे अङ्क प्राप्त किये है. 
(defrule very5
(declare (salience 4800))
(id-root ?id very)
?mng <-(meaning_to_be_decided ?id)
(id-word =(+ ?id 1) high)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id bahuwa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  very.clp 	very5   "  ?id "  bahuwa )" crlf))
)

;@@@ Added by Prachi Rathore[19-2-14]
;The very thought of drink made him feel sick. [oald]
;पेय या शरबत के  विचार से ही उससे अस्वस्थ महसूस किया 
(defrule very6
(declare (salience 4800))
(id-root ?id very)
?mng <-(meaning_to_be_decided ?id)
(id-word =(+ ?id 1) thought|idea)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id hI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  very.clp 	very6   "  ?id "  hI )" crlf))
)


;@@@ Added by Prachi Rathore[19-2-14]
;That's the very thing I need.[oald]
;वह वही चीज है जिसकी मुझे जरूरत  है . 
(defrule very7
(declare (salience 4800))
(id-root ?id very)
?mng <-(meaning_to_be_decided ?id)
(id-word =(+ ?id 1) thing|man|moment|word|own)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id vahI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  very.clp 	very7   "  ?id "  vahI )" crlf))
)


;@@@ Added by Prachi Rathore[19-2-14]
;She always leaves her homework to the very last moment. [oald]
;वह हमेशा उसके गृहकार्य को  बिल्कुल आखरी क्षण पर करने के लिये छोड देती है . 
(defrule very8
(declare (salience 4750))
(id-root ?id very)
?mng <-(meaning_to_be_decided ?id)
(viSeRya-viSeRaka  ?id1 ?id)
(id-root ?id1 moment)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id bilkula))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  very.clp 	very8   "  ?id "  bilkula )" crlf))
)

;@@@ Added by Prachi Rathore[19-2-14]
;This is the very same place we sat in the last time we came. [cambridge]
 ;यह  बिल्कुल वही स्थान है  जहाँ हम बैठे थे जब हम पिछली बार आए थे. 
(defrule very9
(declare (salience 4800))
(id-root ?id very)
?mng <-(meaning_to_be_decided ?id)
(id-word =(+ ?id 1) same )
(id-cat_coarse ?id adverb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id bilkula))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  very.clp 	very9   "  ?id "  bilkula )" crlf))
)

;@@@ Added by Prachi Rathore[19-2-14]
;very best[shiksharthi-kosh]
;अति श्रेष्ठ
(defrule very10
(declare (salience 4800))
(id-root ?id very)
?mng <-(meaning_to_be_decided ?id)
(id-word =(+ ?id 1) best|beautiful)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id awi))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  very.clp 	very10   "  ?id "  awi )" crlf))
)

