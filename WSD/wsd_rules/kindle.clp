
(defrule kindle0
(declare (salience 5000))
(id-root ?id kindle)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id kindling )
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id Aga_jalAne_kI_CotI_lakadZiyAz))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  kindle.clp  	kindle0   "  ?id "  Aga_jalAne_kI_CotI_lakadZiyAz )" crlf))
)

;"kindling","N","1.Aga_jalAne_kI_CotI_lakadZiyAz"
;Collect some kindling to warm the house.
;
(defrule kindle1
(declare (salience 4900))
(id-root ?id kindle)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id uxxIpwa_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  kindle.clp 	kindle1   "  ?id "  uxxIpwa_ho )" crlf))
)

;default_sense && category=verb	jalA	0
;"kindle","V","1.jalAnA"
;People kindle the lamp on deepawali.
;--"2.jAgrawa_karanA
;It is very wrong to kindle false hopes in anybody.
;His nonsense talk kindled her anger.
;
;