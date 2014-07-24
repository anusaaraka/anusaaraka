
(defrule object0
(declare (salience 5000))
(id-root ?id object)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id objects )
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id vaswu))
(assert (id-wsd_number ?id s))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  object.clp  	object0   "  ?id "  vaswu )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_number  " ?*wsd_dir* "  object.clp     object0   "  ?id " s )" crlf))
)

; Added by human beings
(defrule object1
(declare (salience 4900))
(id-root ?id object)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 non-living)
(viSeRya-viSeRaNa ?id1 ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id vaswu))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  object.clp 	object1   "  ?id "  vaswu )" crlf))
)

(defrule object2
(declare (salience 4800))
(id-root ?id object)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 living)
(viSeRya-viSeRaNa ?id1 ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id vaswu))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  object.clp 	object2   "  ?id "  vaswu )" crlf))
)

(defrule object3
(declare (salience 4700))
(id-root ?id object)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 dense)
(viSeRya-viSeRaNa ?id1 ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id vaswu))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  object.clp 	object3   "  ?id "  vaswu )" crlf))
)

(defrule object4
(declare (salience 4600))
(id-root ?id object)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id vaswu))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  object.clp 	object4   "  ?id "  vaswu )" crlf))
)

;default_sense && category=noun	karma	0
(defrule object5
(declare (salience 4500))
(id-root ?id object)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Apawwi_vyakwa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  object.clp 	object5   "  ?id "  Apawwi_vyakwa_kara )" crlf))
)



;@@@ Added by Sonam Gupta MTech IT Banasthali 28-1-2014
;In his reply Lord Hardinge stated that he did not think that Government had shown themselves wanting 
;in sympathy for the aims and objects of the University and pointed out the extent of financial assistance 
;which the University had already received from his Government. [Gyannidhi]
;अपने उत्तर में लार्ड हार्डिंग ने कहा कि वे नहीं मानते कि विश्वविद्यालय के लक्ष्यों और उद्देश्यों के प्रति सरकार ने कभी भी सहानुभूति की कमी महसूस होने दी 
;और उस वित्तीय सहायता की ओर ध्यान आकर्षित किया जो विश्वविद्यालय अब तक उनकी सरकार से प्राप्त कर चुका है।

;$$$ modified by Pramila(BU) on 13-02-2014 [condition '(viSeRya-of_saMbanXI  ?id ?id1)'and '(kriyA-in_saMbanXI  ?id1 ?id)' is added]
;What is the object of your visit ?        ;shiksharthi
;तुम्हारी मुलाकात का क्या उद्देश्य है.
;He is determined in his object.  ;shiksharthi
;वह अपने उद्देश्य में दृढ़ है.
(defrule object6
(declare (salience 5500))
(id-root ?id object)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(or(viSeRya-for_saMbanXI  ? ?id)(viSeRya-of_saMbanXI  ?id ?id1)(kriyA-in_saMbanXI  ?id1 ?id))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id uxxeSya))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  object.clp 	object6   "  ?id "  uxxeSya )" crlf))
)


;"object","V","1.Apawwi vyakwa karanA"
;I object to his use of indecent language.
;
;


;@@@ Added by Pramila Banasthali 13-02-2014
;His object was to win the match.  ;shiksharthi
;उसका उद्देश्य मैच जीतना था.
(defrule object7
(declare (salience 5500))
(id-root ?id object)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(kriyA-subject  ?kri ?id)
(kriyA-kriyArWa_kriyA  ?kri ?id1)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id uxxeSya))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  object.clp 	object7   "  ?id "  uxxeSya )" crlf))
)


;@@@ Added by Pramila Banasthali 13-02-2014
;He became the object of ridicule.  ;shiksharthi
;वह उपहास का पात्र बन गया.
(defrule object8
(declare (salience 5600))
(id-root ?id object)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(viSeRya-of_saMbanXI  ?id ?id2)
(subject-subject_samAnAXikaraNa  ?sub ?id)
(id-root ?sub ?str&:(and (not (numberp ?str))(gdbm_lookup_p "human.gdbm" ?str)))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pawra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  object.clp 	object8   "  ?id "  pawra )" crlf))
)


;$$$ Modified by Sonam Gupta MTech IT Banasthali 14-3-2014 (added move in ?id1)
;@@@ Added by Sonam Gupta MTech IT Banasthali 13-3-2014
;Otherwise the object is said to be at rest with respect to this frame of reference. [ncert]
;अन्यथा वस्तु को उस निर्देश तन्त्र के सापेक्ष विरामावस्था में मानते है...
(defrule object9
(declare (salience 5600))
(id-root ?id object)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(kriyA-subject  ?id1 ?id)
(id-root ?id1 say|move)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id vaswu))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  object.clp 	object9   "  ?id "  vaswu )" crlf))
)
