;Added by sheetal(13-12-2009).
(defrule two0
(declare (salience 5000))
(id-root ?id two)
?mng <-(meaning_to_be_decided ?id)
(id-word =(- ?id 2) of)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id xonoM))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  two.clp       two0   "  ?id "  xonoM )" crlf))
)
;They speak neither French nor German but a curious mixture of the two. (see this sent. in 3rd likage)
