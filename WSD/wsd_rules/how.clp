
(defrule how0
(declare (salience 1000))
(id-root ?id how)
(kriyA-kriyA_viSeRaNa ?id1 ?id)
?mng <-(meaning_to_be_decided ?id)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id kEse ))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  how.clp       how0   "  ?id "  kEse )" crlf)
)
)
;Added by Shirisha Manju
;How did John do it ? How do you operate this machine ?



(defrule how1
(declare (salience 4000))
(id-root ?id how)
?mng <-(meaning_to_be_decided ?id)
(or(id-cat_coarse =(+ ?id 1)  adjective)(id-cat_coarse =(+ ?id 1)  adverb))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kiwanA ))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  how.clp      how1   "  ?id "  kiwanA )" crlf)
)
)

(defrule how2
(declare (salience 4000))
(id-word ?id how)
?mng <-(meaning_to_be_decided ?id)
(or (id-word =(+ ?id 1)  much)  (id-word =(+ ?id 1)  many))
(samAsa  =(+ ?id 1) ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id - ))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  how.clp      how2   "  ?id " - )" crlf)
)
)


