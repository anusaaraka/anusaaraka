
(defrule way0
(declare (salience 5000))
(id-root ?id way)
?mng <-(meaning_to_be_decided ?id)
(id-word =(- ?id 1) different)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id warIkA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  way.clp 	way0   "  ?id "  warIkA )" crlf))
)

;It has influenced education in different ways.
(defrule way1
(declare (salience 4900))
(id-root ?id way)
?mng <-(meaning_to_be_decided ?id)
(id-word =(- ?id 1) active)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id warIkA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  way.clp 	way1   "  ?id "  warIkA )" crlf))
)

;Behaviour is a specific response which can be seen && observed in an active way.
(defrule way2
(declare (salience 4800))
(id-root ?id way)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id mArga))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  way.clp 	way2   "  ?id "  mArga )" crlf))
)

;default_sense && category=noun	paWa	0
;"way","N","1.paWa"
;This way leads to the field
;

;Added by sheetal(18-01-10).
(defrule way3
(declare (salience 4950))
(id-root ?id way)
?mng <-(meaning_to_be_decided ?id)
(id-root =(- ?id 1) the)
(or (kriyA-kriyA_viSeRaNa ?id1 ?id)(kriyA-object_2 ?id1 ?id)(kriyA-object ?id1 ?id)) 
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id usa_prakAra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  way.clp       way3   "  ?id "  usa_prakAra )" crlf))
)
;Do it the way you have always done it .
;I really like the way you do your hair . 
