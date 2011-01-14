
(defrule glimmer0
(declare (salience 5000))
(id-root ?id glimmer)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id glimmering )
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id manxa_prakASa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  glimmer.clp  	glimmer0   "  ?id "  manxa_prakASa )" crlf))
)

;"glimmering","N","1.manxa_prakASa"
;I wrote the book in the glimmering.
;
(defrule glimmer1
(declare (salience 4900))
(id-root ?id glimmer)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ABAsa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  glimmer.clp 	glimmer1   "  ?id "  ABAsa )" crlf))
)

;default_sense && category=noun	camaka	0
;"glimmer","N","1.camaka"
;The glimmer of the bulb helped us to see in the night .
;--"2.Jalaka"
;There is always a glimmer of happiness in every disappointment.
;
;