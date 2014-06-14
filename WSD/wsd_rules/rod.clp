;a long, thin pole made of wood or metal: 
;----------------------------------
;He was given a fishing rod for his birthday. [cambridge dictionary]
;उन्हें उनके जन्मदिन के लिए एक मछली पकड़ने वाली छड़ी दी गयी थी ।

;The concrete is strengthened with steel rods. [cambridge dictionary]
;लोहे की छड़ के साथ कंकड़ी से मजबूत बनाया गया है ।

;Fishing with rod and line. [oxford learner's dictionary] 
;डंडे और लाइन से मछ्ली पकड़ना ।
;The teacher has a rod in his hand. [Advanced Learner's English-Hindi Dictionary]
;शिक्षक अपने हाथ में एक बेंत लिये है.
;There used to be a saying 'Spare the rod and spoil the child.'[oxford learner's dictionary] 
;एक कहावत है 'छड़ी छोड़ देना और बच्चे को खराब करना है ।
;The rod is not allowed in this school . [Advanced Learner's English-Hindi Dictionary]
;दण्ड की इस स्कूल में अनुमति नहीं है।

;@@@ Added by Anita - 9.5.2014
;He was given a fishing rod for his birthday. [cambridge dictionary]
;उन्हें उनके जन्मदिन के लिए एक मछली पकड़ने वाली छड़ी दी गयी थी ।
(defrule rod0
(declare (salience 1000))
(id-root ?id rod)
?mng <-(meaning_to_be_decided ?id)
(id-root ?id1 birthday)
(viSeRya-for_saMbanXI  ?id ?id1)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id CadZI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  rod.clp     rod0  "  ?id " CadZI )" crlf))
)

;@@@ Added by Anita - 9.5.2014
;Fishing with rod and line. [oxford learner's dictionary] 
;डंडे और लाइन से मछ्ली पकड़ना ।
(defrule rod1
(declare (salience 2000))
(id-root ?id rod)
?mng <-(meaning_to_be_decided ?id)
(kriyA-with_saMbanXI  ?kri ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id daMdA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  rod.clp     rod1  "  ?id " daMdA )" crlf))
)
;@@@ Added by Anita - 9.5.2014
;The teacher has a rod in his hand. [Advanced Learner's English-Hindi Dictionary-Dr. Hardev Bahri]
;शिक्षक अपने हाथ में एक बेंत लिये है.
(defrule rod2
(declare (salience 3000))
(id-root ?id rod)
?mng <-(meaning_to_be_decided ?id)
(id-root ?id1 hand)
(viSeRya-in_saMbanXI  ?id ?id1)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id beMwa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  rod.clp     rod2  "  ?id " beMwa )" crlf))
)

;@@@ Added by Anita - 9.5.2014
;The rod is not allowed in this school . [Advanced Learner's English-Hindi Dictionary-Dr. Hardev Bahri]
;दण्ड की इस स्कूल में अनुमति नहीं है।
(defrule rod3
(declare (salience 4000))
(id-root ?id rod)
?mng <-(meaning_to_be_decided ?id)
(viSeRya-det_viSeRaNa  ?id ?)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pitAI))
(assert (id-wsd_viBakwi ?id kI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  rod.clp     rod3  "  ?id " pitAI )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_viBakwi   " ?*wsd_dir* "  rod.clp      rod3   "  ?id " kI )" crlf))
)

;#################################default-rule############################
;@@@ Added by Anita - 9.5.2014
;The concrete is strengthened with steel rods. [cambridge dictionary]
;लोहे की छड़ के साथ कंकड़ी से मजबूत बनाया गया है ।
(defrule rod_default-rule
(declare (salience 0))
(id-root ?id rod)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id CadZa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  rod.clp     rod_default-rule  "  ?id " CadZa )" crlf))
)