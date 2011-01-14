
(defrule complicate0
(declare (salience 5000))
(id-root ?id complicate)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id complicated )
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id jatila))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  complicate.clp  	complicate0   "  ?id "  jatila )" crlf))
)

(defrule complicate1
(declare (salience 4900))
(id-root ?id complicate)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id complicated )
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id ulaJA_huA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  complicate.clp  	complicate1   "  ?id "  ulaJA_huA )" crlf))
)

;"complicated","Adj","1.ulaJA_huA"
;He presented a complicated theory in a very simple way.
;
;
(defrule complicate2
(declare (salience 4800))
(id-root ?id complicate)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id jatila))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  complicate.clp 	complicate2   "  ?id "  jatila )" crlf))
)

(defrule complicate3
(declare (salience 4700))
(id-root ?id complicate)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id xurboXa_banA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  complicate.clp 	complicate3   "  ?id "  xurboXa_banA )" crlf))
)

;default_sense && category=verb	ulaJA	0
;"complicate","VT","1.ulaJAnA"
;There was a new development that complicated the matter
;
;
