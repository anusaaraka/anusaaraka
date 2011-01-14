;Added by Meena(15.9.10)
;A more massive object changes its motion more slowly in response to a given force.
(defrule in_response_to0
(declare (salience 5000))
(id-root ?id response)
?mng <-(meaning_to_be_decided ?id)
(id-word =(- ?id 1) in )
(id-word =(+ ?id 1) to)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id =(- ?id 1) =(+ ?id 1) kI_prawikriyA_meM))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " response.clp  response0  "  ?id "  " (- ?id 1) " " (+ ?id 1) "  kI_prawikriyA_meM  )" crlf))
)



