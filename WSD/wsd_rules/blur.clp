
;Losing to a weak team like Zimbabwe was a blur on the Indian cricket team.
(defrule blur0
(declare (salience 5000))
(id-root ?id blur)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id XabbA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  blur.clp 	blur0   "  ?id "  XabbA )" crlf))
)




;Rule modified by Meena (25.08.09)
;His eyesight was blurred .
(defrule blur1
(declare (salience 4900))
(id-root ?id blur)
?mng <-(meaning_to_be_decided ?id)
(kriyA-subject ?id ?id1)
;(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id XuMXalA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  blur.clp 	blur1   "  ?id "  XuMXalA )" crlf))
)


;"blur","V","1.XuMXalA_karanA"

;Rule modified by (Meena 25.8.09), replced (id-cat_coarse ?id verb) by (kriyA-object ?id ?id1) and meaning  (XuMXalA_kara) by  (XuMXalA_kara_xe)
;The early morning fog blurred our vision.
(defrule blur2
(declare (salience 4900))
(id-root ?id blur)
?mng <-(meaning_to_be_decided ?id)
(kriyA-object ?id ?id1)
;(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id XuMXalA_kara_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  blur.clp    blur2   "  ?id "  XuMXalA_kara_xe )" crlf))
)

