;@@@ Added by jagriti(4.3.2014)
;This place is on the skirts of the city.[rajpal]
;यह स्थान शहर के किनारे पर है . 
(defrule skirt2
(declare (salience 5000))
(id-root ?id skirt)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(viSeRya-of_saMbanXI ?id ?id1)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kinArA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  skirt.clp 	skirt2   "  ?id "  kinArA )" crlf))
)
;...default rule....
(defrule skirt0
(declare (salience 100))
(id-root ?id skirt)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id GAGarA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  skirt.clp 	skirt0   "  ?id "  GAGarA )" crlf))
)
;"skirt","N","1.GAGarA"
;Girls look beatiful in skirt.
;
(defrule skirt1
(declare (salience 100))
(id-root ?id skirt)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ke_kinAre_kinAre_cala))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  skirt.clp 	skirt1   "  ?id "  ke_kinAre_kinAre_cala )" crlf))
)

;"skirt","V","1.ke_kinAre_kinAre_calanA"
;We skirted the field && crossed the bridge.
;
