;$$$ Modified by Prachi Rathore[3-3-14]
;Added quantity,electricity in the list
;The units of all other physical quantities can be expressed as combinations of the base units. [ncert]
;इनके अतिरिक्त अन्य सभी भौतिक राशियों के मात्रकों/इकाईयों को मूल मात्रकों/इकाईयों के संयोजन द्वारा व्यक्त किया जा सकता है.
;We consumes 200 units of electricity every month.[oald]
;Added by Meena(29.7.11)
;Pratt and Whitney is a unit of United Technologies Inc..
(defrule unit1
(declare (salience 3200))
(id-root ?id unit)
?mng <-(meaning_to_be_decided ?id)
(viSeRya-of_saMbanXI  ?id ?id1)
(not(id-root ?id1 length|volume|pressure|force|distance|mass|weight|velocity|acceleration|area|quantity|electricity)) 
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id viBAga))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  unit.clp      unit1   "  ?id "  viBAga )" crlf)))


;@@@ Added by Prachi Rathore[3-3-14]
;Medical units were operating in the disaster area.[oald]
;आयुर्विज्ञान दस्ते दुर्घटना क्षेत्र में काम कर रहे थे . 
; Division is regarded as a unit of an army.[shiksharthi-kosh]
;
(defrule unit3
(declare (salience 3500))
(id-root ?id unit)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(or(viSeRya-of_saMbanXI  ?id ?id1)(samAsa_viSeRya-samAsa_viSeRaNa  ?id ?id1))
(id-root ?id1 army|police|military|medical)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id xaswA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  unit.clp      unit3   "  ?id "  xaswA )" crlf)))


;@@@ Added by Prachi Rathore[3-3-14]
;The present perfect is covered in Unit 8.[oald]
; present perfect अध्याय ८ में  covered है
(defrule unit4
(declare (salience 3500))
(id-root ?id unit)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(kriyA-in_saMbanXI  ?id1 ?id)
(id-root ?id1 cover)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id aXyAya))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  unit.clp      unit4   "  ?id "  aXyAya )" crlf)))

;xxxxxxxxxxxxxxx Default Rule xxxxxxxxxxxxxxxxx


;@@@ Added by Prachi Rathore[3-3-14]
;The units of all other physical quantities can be expressed as combinations of the base units. [ncert]
;इनके अतिरिक्त अन्य सभी भौतिक राशियों के मात्रकों/इकाईयों को मूल मात्रकों/इकाईयों के संयोजन द्वारा व्यक्त किया जा सकता है.
(defrule unit2
(declare (salience 200))
(id-root ?id unit)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ikAI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  unit.clp      unit2   "  ?id "  ikAI )" crlf))
)

;@@@ Added by Prachi Rathore[3-3-14]
;The units of all other physical quantities can be expressed as combinations of the base units. [ncert]
;इनके अतिरिक्त अन्य सभी भौतिक राशियों के मात्रकों/इकाईयों को मूल मात्रकों/इकाईयों के संयोजन द्वारा व्यक्त किया जा सकता है.
(defrule unit5
(declare (salience 100))
(id-root ?id unit)
?mng <-(meaning_to_be_decided ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ikAI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  unit.clp      unit5   "  ?id "  ikAI )" crlf))
)
