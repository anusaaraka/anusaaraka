
(defrule expand0
(declare (salience 5000))
(id-root ?id expand)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 balloon)
(kriyA-object ?id ?id1)
;(id-cat_coarse ?id verb) this and the above line are automatically modified using a program by Sukhada
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id PUla))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  expand.clp 	expand0   "  ?id "  PUla )" crlf))
)

(defrule expand1
(declare (salience 4900))
(id-root ?id expand)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id PEla))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  expand.clp 	expand1   "  ?id "  PEla )" crlf))
)

;The Universe is expanding : viSva PEla rahA hE
;"expand","V","1.PEla_jAnA"
;His business expanded rapidly.
;
(defrule expand2
(declare (salience 4800))
(id-root ?id expand)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id PElA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  expand.clp 	expand2   "  ?id "  PElA )" crlf))
)

;"expand","VT","1.PElAnA"
;After two years he expanded his business.
;
