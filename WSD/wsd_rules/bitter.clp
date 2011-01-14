;(the meaning 'kadZuA' has been modified as 'kadZavA' by Sukhada. 8-4-10)
(defrule bitter0
(declare (salience 5000))
(id-root ?id bitter)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kadZavA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  bitter.clp 	bitter0   "  ?id "  kadZavA )" crlf))
)

;Ex. Losing to a younger player was a bitter pill to swallow. (the meaning 'kadZuvA' has been modified as 'kadZavA' by Sukhada. 8-4-10)
(defrule bitter1
(declare (salience 4900))
(id-root ?id bitter)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kadZavA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  bitter.clp 	bitter1   "  ?id "  kadZavA )" crlf))
)

;"bitter","Adj","1.kadZuvA"
;The bitter truth is difficult to swallow.
;--"2.Sokamaya"
;All the relatives shed bitter tears on his sudden death.
;--"3.kaTora"
;A bitter struggle
;Bitter cold
;
;
