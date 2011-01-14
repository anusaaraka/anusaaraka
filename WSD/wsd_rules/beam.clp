
(defrule beam0
(declare (salience 5000))
(id-root ?id beam)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 sunlight )
(viSeRya-of_viSeRaNa ?id1 ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id SalAkA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  beam.clp 	beam0   "  ?id "  SalAkA )" crlf))
)

(defrule beam1
(declare (salience 4900))
(id-root ?id beam)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id daNdA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  beam.clp 	beam1   "  ?id "  daNdA )" crlf))
)

(defrule beam2
(declare (salience 4800))
(id-root ?id beam)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 he)
(kriyA-subject ?id ?id1)
;(id-cat_coarse ?id verb) this and the above line are automatically modified using a program by Sukhada
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id muskurA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  beam.clp 	beam2   "  ?id "  muskurA )" crlf))
)

(defrule beam3
(declare (salience 4700))
(id-root ?id beam)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 she)
(kriyA-subject ?id ?id1)
;(id-cat_coarse ?id verb) this and the above line are automatically modified using a program by Sukhada
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id muskurA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  beam.clp 	beam3   "  ?id "  muskurA )" crlf))
)

(defrule beam4
(declare (salience 4600))
(id-root ?id beam)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id prakASa_dAla))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  beam.clp 	beam4   "  ?id "  prakASa_dAla )" crlf))
)

;"beam","V","1.prakASa_dAlanA"
;The sunrise beamed on the whole countryside.
;--"2.muskurAnA"
;She was beaming with joy.
;
;
