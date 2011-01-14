
(defrule then0
(declare (salience 5000))
(id-root ?id then)
?mng <-(meaning_to_be_decided ?id)
(id-word =(- ?id 1) and)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id bAxa_meM))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  then.clp 	then0   "  ?id "  bAxa_meM )" crlf))
)

(defrule then1
(declare (salience 4900))
(id-root ?id then)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adverb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id waba))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  then.clp 	then1   "  ?id "  waba )" crlf))
)

;"then","Adv","1.waba"
;We were living in Holland then.
;--"2.wawpaScAwa"
;Finish your work && then you play.
;
