
;Added by Meena(17.6.10)
;According to Sarah they are not getting on very well at the moment . 
(defrule at_the_moment0
(declare (salience 5000))
(id-root ?id moment)
?mng <-(meaning_to_be_decided ?id)
(id-word =(- ?id 2) at)
(id-word =(- ?id 1) the)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id =(- ?id 1) =(- ?id 2) isa_samaya))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " moment.clp  at_the_moment  "  ?id "  " (- ?id 1) " " (- ?id 2) "  isa_samaya  )" crlf))
)
