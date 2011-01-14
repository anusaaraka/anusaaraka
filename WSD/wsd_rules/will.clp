
(defrule will0
(declare (salience 5000))
(id-root ?id will)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id willing )
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id uxyawa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  will.clp  	will0   "  ?id "  uxyawa )" crlf))
)

;"willing","Adj","1.uxyawa"
;The carpenter is willing to do the work.
;
(defrule will1
(declare (salience 4900))
(id-root ?id will)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id xqDZa_icCA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  will.clp 	will1   "  ?id "  xqDZa_icCA )" crlf))
)



;Commented by Meena(1.11.10)
;(defrule will2
;(declare (salience 4800))
;(id-root ?id will)
;?mng <-(meaning_to_be_decided ?id)
;(id-cat_coarse ?id verb)
;=>
;(retract ?mng)
;(assert (id-wsd_root_mng ?id gA))
;(if ?*debug_flag* then
;(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  will.clp 	will2   "  ?id "  gA )" crlf))
;)

; more frequently 'will' will occur as an auxiliary. However, it is necessary to list instances where 'will' will have the meaning of 'cAhanA'.
;default_sense && category=verb	cAha	0
;"will","VTI","1.cAhanA"
;He willed && every thing went accordingly.
;
;
