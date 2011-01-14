
(defrule foolish0
(declare (salience 5000))
(id-root ?id foolish)
?mng <-(meaning_to_be_decided ?id)
(id-word =(- ?id 2) lazy)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id mUrKA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  foolish.clp 	foolish0   "  ?id "  mUrKA )" crlf))
)

(defrule foolish1
(declare (salience 4900))
(id-root ?id foolish)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective )
(id-cat_coarse =(+ ?id 1) adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id mUrKa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  foolish.clp 	foolish1   "  ?id "  mUrKa )" crlf))
)

(defrule foolish2
(declare (salience 4800))
(id-root ?id foolish)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective )
(id-cat_coarse =(+ ?id 1) noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id mUrKa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  foolish.clp 	foolish2   "  ?id "  mUrKa )" crlf))
)

(defrule foolish3
(declare (salience 4700))
(id-root ?id foolish)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id mUrKawApUrNa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  foolish.clp 	foolish3   "  ?id "  mUrKawApUrNa )" crlf))
)

;"foolish","Adj","1.mUrKawApUrNa"
;--"2.mUrKa"
;It would be foolish to believe such rumours.
;
