;Added by sheetal(6-10-09)
(defrule manner0
(declare (salience 5000))
(id-root ?id manner)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(id-word =(- ?id 1) good)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id vyavahAra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  manner.clp       manner0   "  ?id "  vyavahAra )" crlf))
)
;It is not a good manner to eat alone.

