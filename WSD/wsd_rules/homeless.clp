
(defrule homeless0
(declare (salience 5000))
(id-root ?id homeless)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id beGara_kA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  homeless.clp 	homeless0   "  ?id "  beGara_kA )" crlf))
)

;"homeless","Adj","1.beGara_kA"
;'homeless'logoM ke lie aneka saMsWAna kAma kara rahA hE 
;
(defrule homeless1
(declare (salience 4900))
(id-root ?id homeless)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id GarahIna))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  homeless.clp 	homeless1   "  ?id "  GarahIna )" crlf))
)

;"homeless","N","1.GarahIna"
;wurkI meM Aye vinASa kAri BUkampa meM hajAroM loga 'homeless'(GarahIna)ho gaye hEM.
;

;@@@ Added by Prachi Rathore[9-1-14]
; A shelter for the homeless. 
(defrule homeless2
(declare (salience 5000))
(id-root ?id homeless)
?mng <-(meaning_to_be_decided ?id)
(or(viSeRya-for_saMbanXI  ?id1 ?id)(kriyA-for_saMbanXI  ?id1 ?id))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id nirASriwa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  homeless.clp 	homeless2   "  ?id "  nirASriwa )" crlf))
)
;@@@ Added by Prachi Rathore[9-1-14]
;The scheme has been set up to help homeless people. [oald]
(defrule homeless3
(declare (salience 5000))
(id-root ?id homeless)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
(viSeRya-viSeRaNa  ?id1 ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id beGara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  homeless.clp 	homeless3   "  ?id "  beGara )" crlf))
)
