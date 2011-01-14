
(defrule tailor0
(declare (salience 5000))
(id-root ?id tailor)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id tailoring )
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id silAI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  tailor.clp  	tailor0   "  ?id "  silAI )" crlf))
)

;"tailoring","N","1.silAI"
;A good tailoring was done for the suit.
;
(defrule tailor1
(declare (salience 4900))
(id-root ?id tailor)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id xarjI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  tailor.clp 	tailor1   "  ?id "  xarjI )" crlf))
)

;"tailor","N","1.xarjI"
;The tailor stitches the uniforms well.
;--"2.ke_anukUla_banA_lenA"
;Everthing was tailored to his needs.
;
;