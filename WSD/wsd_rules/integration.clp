
(defrule integration0
(declare (salience 5000))
(id-root ?id integration)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 calculate )
(viSeRya-of_saMbanXI ?id1 ?id) ;Replaced viSeRya-of_viSeRaNa as viSeRya-of_saMbanXI programatically by Roja 09-11-13
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id samAkalana))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  integration.clp 	integration0   "  ?id "  samAkalana )" crlf))
)

(defrule integration1
(declare (salience 4900))
(id-root ?id integration)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id samAkalana))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  integration.clp 	integration1   "  ?id "  samAkalana )" crlf))
)

;default_sense && category=noun	ekIkaraNa	0
;"integration","N","1.ekIkaraNa"
;Subramanya Bharati composed songs of integration.
;
;