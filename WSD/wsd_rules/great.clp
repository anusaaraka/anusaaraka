
;(id-word ?id1 movie) Commented by Meena(19.01.10) to make the rule more general
;We saw a great movie.
(defrule great0
(declare (salience 5000))
(id-root ?id great)
?mng <-(meaning_to_be_decided ?id)
;(id-word ?id1 movie)
(viSeRya-viSeRaNa ?id1 ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id baDZiyA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  great.clp 	great0   "  ?id "  baDZiyA )" crlf))
)





;Added by Meena(20.01.10)
;She is a great fan of Lata.
(defrule great1
(declare (salience 5000))
(id-root ?id great)
?mng <-(meaning_to_be_decided ?id)
(id-root ?id1 fan)
(viSeRya-viSeRaNa ?id1 ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id badZA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  great.clp     great1   "  ?id "  badZA )" crlf))
)




;Added by Meena(19.01.10)
;The painted doors look great . 
;Danish food is great.
(defrule great2
(declare (salience 4800))
(id-root ?id great)
?mng <-(meaning_to_be_decided ?id)
(subject-subject_samAnAXikaraNa  ?id1 ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id bahuwa_baDZiyA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  great.clp 	great2   "  ?id "  bahuwa_baDZiyA )" crlf))
)




;Salience reduced  by Meena(19.01.10)
(defrule great3
(id-root ?id great)
?mng <-(meaning_to_be_decided ?id)
(id-cat ?id adjective|adjective_comparative|adjective_superlative)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id baDZA));inconsistency in the mng in assert & print statement has been corrected by Sukhada (15.3.10)
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  great.clp     great3   "  ?id "  baDZA )" crlf))
)



;"great","Adj","1.badZA"
;Gandhiji was a great human being.
(defrule great4
(declare (salience 4800))
(id-root ?id great)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id badZA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  great.clp     great4   "  ?id "  badZA )" crlf))
)

;@@@ Added by Roja(22-04-14)
;Harishchandra was a great king.
;harIScanxra eka mahAna rAjA WA.
;God is great.

(defrule great5
(declare (salience 5100))
(id-root ?id great)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
(viSeRya-viSeRaNa  ?id1  ?id)
(or (id-root ?id1 ?str&:(and (not (numberp ?str))(gdbm_lookup_p "human.gdbm" ?str))) (id-root ?id1 God|god))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id mahAna))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  great.clp     great5   "  ?id "  mahAna )" crlf))
)

;
;

;@@@ Added by Sukhada (12-05-14). Automatically generated this rule.
(defrule sub_samA_great5
(declare (salience 5100))
(id-root ?id great)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
(subject-subject_samAnAXikaraNa ?id1 ?id)
(or (id-root ?id1 ?str&:(and (not (numberp ?str))(gdbm_lookup_p "human.gdbm" ?str))) (id-root ?id1 God|god)) 
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id mahAna))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng " ?*wsd_dir* " great.clp   sub_samA_great5   "   ?id " mahAna )" crlf))
)

;@@@ Added by Sukhada (12-05-14). Automatically generated this rule.
(defrule obj_samA_great5
(declare (salience 5100))
(id-root ?id great)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
(object-object_samAnAXikaraNa ?id1 ?id)
(or (id-root ?id1 ?str&:(and (not (numberp ?str))(gdbm_lookup_p "human.gdbm" ?str)))(id-root ?id1 God|god))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id mahAna))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng " ?*wsd_dir* " great.clp   obj_samA_great5   "   ?id " mahAna )" crlf))
)
