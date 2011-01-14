;Added by Meena(23.3.10)
;If you were a middle-class American without a job , who would you vote for . 
(defrule middle-class0
(declare (salience 5000))
(id-root ?id middle-class)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 ?)
(or(viSeRya-viSeRaNa  ?id1 ?id)(subject-subject_samAnAXikaraNa ?id1 ?id))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id maXyama_vargIya))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* " middle-class.clp  middle-class0  "  ?id "   maXyama_vargIya  )" crlf))
)



;Modified by Meena(27.4.10) ;changed root_mng to word_mng
;Added by Meena(23.3.10)
;The upper middle-class tend to go into business or the professions .
(defrule  middle-class1
(declare (salience 5000))
(id-root ?id middle-class)
?mng <-(meaning_to_be_decided ?id)
(or(viSeRya-viSeRaNa  ?id ?id1)(samAsa  ?id ?id1))
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id maXyama_varga))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng   " ?*wsd_dir* " middle-class.clp  middle-class1  "  ?id "  maXyama_varga  )" crlf))
)

