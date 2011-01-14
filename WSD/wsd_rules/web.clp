
(defrule web0
(declare (salience 5000))
(id-root ?id web)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id webbed )
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id jAlapAxa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  web.clp  	web0   "  ?id "  jAlapAxa )" crlf))
)

;"webbed","Adj","1.jAlapAxa"
;Ducks have webbed feet.
;
(defrule web1
(declare (salience 4900))
(id-root ?id web)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id jAlA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  web.clp 	web1   "  ?id "  jAlA )" crlf))
)

;"web","N","1.jAlA"
;A spider was busily weaving a web in the corner of the room. .
;We have a web of information from the computers.
;--"2.paMjeM_kI_JillI{jalapakRI_va_meMDaka_kI}"
;Ducks can live in water as well as in land due to the web in their feet.
;
;