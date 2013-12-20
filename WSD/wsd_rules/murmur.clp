;@@@---Added by Nandini(14-12-13)
;She answered in a faint murmur.[oxford advanced learner's dictionary]
;usane eka nirbala svara meM uwwara xiyA.
(defrule murmur0
(declare (salience 150))
(id-root ?id murmur)
?mng <-(meaning_to_be_decided ?id)
(kriyA-in_saMbanXI  ?id1 ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id svara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  murmur.clp 	murmur0   "  ?id "  svara)" crlf))
)

;@@@---Added by Nandini(14-12-13)
;He paid the extra cost without a murmur.[oxford advanced learner's dictionary]
;usane SikAyawa ke binA awirikwa jyAxA pEse xIye.
(defrule murmur1
(declare (salience 100))
(id-root ?id murmur)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id SikAyawa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  murmur.clp 	murmur1   "  ?id "  SikAyawa)" crlf))
)

;@@@---Added by Nandini(14-12-13)
;The people murmured against the new regime.[oxford advanced learner's dictionary]
;logoM ne naye Sasana ke viruxXa SikAyawa kI.
(defrule murmur2
(declare (salience 250))
(id-root ?id murmur)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 regime)
(kriyA-against_saMbanXI  ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id SikAyawa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  murmur.clp 	murmur2   "  ?id "  SikAyawa_kara)" crlf))
)

;@@@---Added by Nandini(14-12-13)
;The wind murmured in the trees.[oxford advanced learner's dictionary]
;havA pedoM meM sarasarAI.
(defrule murmur4
(declare (salience 300))
(id-root ?id murmur)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 wind)
(kriyA-subject  ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sarasarA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  murmur.clp 	murmur4   "  ?id "  sarasarA)" crlf))
)

;===========Default-rule==============
;@@@---Added by Nandini(14-12-13)
;She was murmuring in his ear.[oxford advanced learner's dictionary]
;vaha usakI kAna meM badabadA rahI WI.
(defrule murmur3
(declare (salience 200))
(id-root ?id murmur)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id badabadA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  murmur.clp 	murmur3   "  ?id "  badabadA)" crlf))
)
