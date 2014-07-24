
(defrule teach0
(declare (salience 5000))
(id-root ?id teach)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id teaching )
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id siKAnA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  teach.clp  	teach0   "  ?id "  siKAnA )" crlf))
)

;given_word=teaching && word_category=noun	$SikRaNa)

;given_word=teaching && word_category=noun	$SikRaNa)

;"teaching","N","1.SikRaNa"
;Teaching is a good profession.
;
;
(defrule teach1
(declare (salience 4900))
(id-root ?id teach)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id siKA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  teach.clp 	teach1   "  ?id "  siKA )" crlf))
(assert (kriyA_id-object2_viBakwi ?id ko))
)

;@@@ Added by Prachi Rathore[18-1-14]
;He teaches English to advanced students.[oald]
(defrule teach2
(declare (salience 5000))
(id-root ?id teach)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-object  ?id ?id1)
(id-root ?id1 english|hindi|physics|chemistry|history)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id paDA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  teach.clp 	teach2   "  ?id "  paDA )" crlf))
)
;default_sense && category=verb	siKA<obj2:ko>	0
;"teach","VT","1.siKAnA"
;Ram taught me to drive the car .
;--"2.SikRA_xenA"
;The teacher taught maths to students.
;
;
