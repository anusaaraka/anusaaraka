
(defrule caper0
(declare (salience 5000))
(id-root ?id caper)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id SarArawa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  caper.clp 	caper0   "  ?id "  SarArawa )" crlf))
)

(defrule caper1
(declare (salience 4900))
(id-root ?id caper)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kUxa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  caper.clp 	caper1   "  ?id "  kUxa )" crlf))
)

;"caper","VT","1.kUxanA"
;From a distance we could see the foals capering around in the green fields.
;"capital","Adj","1.badZA_akRara"
;Proper names are always written in capital letters.
;--"2.mqwyuxaNda"
;Some citizens do not believe in capital punishment for murder.
;
;