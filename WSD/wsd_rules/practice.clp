

;Added by Meena(24.4.10)
;He gave up his lucrative law practice for the sake of the country .
(defrule law_practice1
(declare (salience 4900))
(id-root ?id practice)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 law)
(or (samAsa  ?id ?id1) (viSeRya-viSeRaNa ?id ?id1));modified for OL by Sukhada(6-9-10)

=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 vakAlawa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " practice.clp  law_practice1  "  ?id "  " ?id1 "  vakAlawa  )" crlf))
)

