
(defrule stupid0
(declare (salience 4999))
(id-root ?id stupid)
?mng <-(meaning_to_be_decided ?id)
(id-cat ?id adjective|adjective_comparative|adjective_superlative)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id mUrKa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  stupid.clp 	stupid0   "  ?id "  mUrKa )" crlf))
)

;Added by sheetal(04-03-10) after removing old one bcz both 'stupid0' and 'stupid1' were same.
;I have been grading these stupid exams all day .
(defrule stupid1
(declare (salience 5000))
(id-root ?id stupid)
?mng <-(meaning_to_be_decided ?id)
(id-root =(+ ?id 1) exam)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id nirarWaka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  stupid.clp   stupid1   "  ?id "  nirarWaka )" crlf))
)


;"stupid","Adj","1.mUrKa"
;He is really stupid.
;
;
