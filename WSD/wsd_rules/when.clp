
(defrule when0
(declare (salience 5000))
(id-root ?id when)
?mng <-(meaning_to_be_decided ?id)
(or (praSnAwmaka_vAkya      )(wh_question));Suggested by Sukhada(13-10-10)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kaba))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  when.clp 	when0   "  ?id "  kaba )" crlf))
)

(defrule when1
(declare (salience 4900))
(id-root ?id when)
?mng <-(meaning_to_be_decided ?id)
(id-word =(- ?id 1) tell)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kaba))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  when.clp 	when1   "  ?id "  kaba )" crlf))
)

(defrule when2
(declare (salience 4800))
(id-root ?id when)
?mng <-(meaning_to_be_decided ?id)
(praSnAwmaka_vAkya      )
(id-word 1 ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kaba))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  when.clp 	when2   "  ?id "  kaba )" crlf))
)

(defrule when3
(declare (salience 4700))
(id-root ?id when)
?mng <-(meaning_to_be_decided ?id)
(id-word =(+ ?id 1) to)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kaba))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  when.clp 	when3   "  ?id "  kaba )" crlf))
)

; I did not know when to go
(defrule when4
(declare (salience 4600))
(id-root ?id when)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id conjunction)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id jaba))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  when.clp 	when4   "  ?id "  jaba )" crlf))
)

;"when","Conj","1.jaba"
;Come to our place when you feel like it.
;
(defrule when5
(declare (salience 4500))
(id-root ?id when)
?mng <-(meaning_to_be_decided ?id)
(id-cat ?id wh_adverb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kaba))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  when.clp 	when5   "  ?id "  kaba )" crlf))
)

;"when","Interro","1.kaba"
;When did you go there?.
;
(defrule when6
(declare (salience 4400))
(id-root ?id when)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id relative_pronoun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id jaba))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  when.clp 	when6   "  ?id "  jaba )" crlf))
)

;"when","Rel Pron","1.jaba/jisa_samaya"
;Sunday is the day when I take rest.
;
(defrule when7
(declare (salience 4300))
(id-root ?id when)
?mng <-(meaning_to_be_decided ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id jaba))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  when.clp 	when7   "  ?id "  jaba )" crlf))
)

