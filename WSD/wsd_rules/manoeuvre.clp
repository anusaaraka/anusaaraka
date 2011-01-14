
(defrule manoeuvre0
(declare (salience 5000))
(id-root ?id manoeuvre)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id cAla))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  manoeuvre.clp 	manoeuvre0   "  ?id "  cAla )" crlf))
)

;"manoeuvre","N","1.cAla"
;He devised a crafty manoeuvre to outwit the police.
;
(defrule manoeuvre1
(declare (salience 4900))
(id-root ?id manoeuvre)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id yukwicAla_cala))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  manoeuvre.clp 	manoeuvre1   "  ?id "  yukwicAla_cala )" crlf))
)

;"manoeuvre","V","1.yukwicAla_calanA"
;He manoeuvred the car rapidly && avoided the truck.
;
