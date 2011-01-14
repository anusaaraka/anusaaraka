
(defrule clothe0
(declare (salience 5000))
(id-root ?id clothe)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id clothing )
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id vaswra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  clothe.clp  	clothe0   "  ?id "  vaswra )" crlf))
)

;"clothing","N","1.vaswra"
;During monsoon I prefer water-proof clothing.
;
(defrule clothe1
(declare (salience 4900))
(id-root ?id clothe)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id clothes )
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id kapadZA))
(assert (id-wsd_number ?id s))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  clothe.clp  	clothe1   "  ?id "  kapadZA )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_number  " ?*wsd_dir* "  clothe.clp     clothe1   "  ?id "  s )" crlf))
)

;default_sense && category=noun	vaswra	0
;"clothes","N","1.vaswra"
;In summer I prefer to wear cotton clothes.
;
;
(defrule clothe2
(declare (salience 4800))
(id-root ?id clothe)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pahanA_huA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  clothe.clp 	clothe2   "  ?id "  pahanA_huA )" crlf))
)

;default_sense && category=verb	vaswra_pahana	0
;"clothe","V","1.vaswra_pahananA"
;She clothed herself in a new dress.
;
;
