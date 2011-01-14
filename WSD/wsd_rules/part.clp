
(defrule part0
(declare (salience 5000))
(id-root ?id part)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id parting )
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id alagAI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  part.clp  	part0   "  ?id "  alagAI )" crlf))
)

;"parting","N","1.alagAI"
;I remember my parting from my parents when I was a child.
;
;
(defrule part1
(declare (salience 4900))
(id-root ?id part)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 with)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " part.clp	part1  "  ?id "  " ?id1 "  xe  )" crlf))
)

;She doesn't like parting with dresses.
;vaha (kisI ko) apane kapadZe xenA pasaMxa nahIM karawI hE
(defrule part2
(declare (salience 4800))
(id-root ?id part)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id BAga))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  part.clp 	part2   "  ?id "  BAga )" crlf))
)

(defrule part3
(declare (salience 4700))
(id-root ?id part)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id viBakwa_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  part.clp 	part3   "  ?id "  viBakwa_ho )" crlf))
)

;default_sense && category=verb	alaga_ho	0
;"part","V","1.alagahonA"
;He was parted from his family after division.
;
;
