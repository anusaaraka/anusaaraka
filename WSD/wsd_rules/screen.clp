
(defrule screen0
(declare (salience 5000))
(id-root ?id screen)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id paraxA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  screen.clp 	screen0   "  ?id "  paraxA )" crlf))
)

(defrule screen1
(declare (salience 4900))
(id-root ?id screen)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id AdZa_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  screen.clp 	screen1   "  ?id "  AdZa_xe )" crlf))
)

;"screen","V","1.AdZa xenA"
;The trees screen the house from view.
;--"2.CipAnA"
;He screened my necklace from every one because it is very costly.
;--"3.jAzcanA"
;Government employees are regularly screened by the security services.
;--"4.praxarSiwa karanA"
;The wild life documentary will be screened tonight on discovery channel.
;
;