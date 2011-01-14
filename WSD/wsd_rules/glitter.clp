
(defrule glitter0
(declare (salience 5000))
(id-root ?id glitter)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id glittering )
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id camakIlA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  glitter.clp  	glitter0   "  ?id "  camakIlA )" crlf))
)

(defrule glitter1
(declare (salience 4900))
(id-root ?id glitter)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id glittering )
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id camakawA_huA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  glitter.clp  	glitter1   "  ?id "  camakawA_huA )" crlf))
)

;"glittering","Adj","1.camakawA_huA"
;He gifted me a glittering pen on my birthday.
;--"2.SAnaxAra"
;The awards were given at a glittering ceremony in Rashtrapati Bhavan.
;
;
(defrule glitter2
(declare (salience 4800))
(id-root ?id glitter)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id camaka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  glitter.clp 	glitter2   "  ?id "  camaka )" crlf))
)

;"glitter","N","1.camaka"
;The glitter of gold attracts everyone.
;
(defrule glitter3
(declare (salience 4700))
(id-root ?id glitter)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id camaka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  glitter.clp 	glitter3   "  ?id "  camaka )" crlf))
)

;"glitter","V","1.camakanA"
;All that glitters is not gold.
;
