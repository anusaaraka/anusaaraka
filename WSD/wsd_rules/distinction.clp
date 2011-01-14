
;Added by human being
(defrule distinction0
(declare (salience 5000))
(id-root ?id distinction)
?mng <-(meaning_to_be_decided ?id)
(id-word =(+ ?id 1) between)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id aMwara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  distinction.clp 	distinction0   "  ?id "  aMwara )" crlf))
)

(defrule distinction1
(declare (salience 4900))
(id-root ?id distinction)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id viSiRta))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  distinction.clp 	distinction1   "  ?id "  viSiRta )" crlf))
)

;default_sense && category=noun	anwara/Bexa/pahacAna	0
;"distinction","N","1.anwara/Bexa/pahacAna"
;It is necessary to make a distinction between love && infatuation
;He learned the distinction between gold && lead
;--"2.viSiRtawA/pramuKawva"
;It has the distinction of being the cheapest restaurant in town
;
;
