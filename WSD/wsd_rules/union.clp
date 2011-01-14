


;Added by Meena(31.8.09)
;The labour was with the Union leader on this issue . 
(defrule union0
(declare (salience 5000))
(id-root ?id union)
?mng <-(meaning_to_be_decided ?id)
(samAsa ?id1 ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id saMgaTana))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  union.clp    union0   "  ?id "  saMgaTana )" crlf))
)

