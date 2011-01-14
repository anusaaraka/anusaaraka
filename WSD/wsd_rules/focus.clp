
(defrule focus0
(declare (salience 5000))
(id-root ?id focus)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id focussed )
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id sAPa_xiKanA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  focus.clp  	focus0   "  ?id "  sAPa_xiKanA )" crlf))
)

;"focussed","Adj","1.sAPa xiKanA"
;As he regained consciousness, his eyes slowly got focussed on his friend standing in the room.
;
(defrule focus1
(declare (salience 4900))
(id-root ?id focus)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id keMxra_biMxu))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  focus.clp 	focus1   "  ?id "  keMxra_biMxu )" crlf))
)

;"focus","N","1.keMxra_biMxu"
;He was the focus of all attention at the party.
;He has taken the photographs without properly focussing his camera causing the images to blurr.
;
(defrule focus2
(declare (salience 4800))
(id-root ?id focus)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id keMxriwa_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  focus.clp 	focus2   "  ?id "  keMxriwa_ho )" crlf))
)

;"focus","V","1.keMxriwa_honA"
;Since he was the chairman, all praises for the better performance of the company were focussed on him.
;The speakers are kept in such a way that the sound is focussed at the centre of the room.
;--"2.sAPa_xiKAI_xenA"
;He fell as he could not focus his eyes in the semidarkness of the hall.
;--"3.kenxriwa_karanA"
;Please focus the lense of the microscope to see the specimen clearly.
;
