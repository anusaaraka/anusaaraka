
(defrule hide0
(declare (salience 5000))
(id-root ?id hide)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id hiding )
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id gopanIya))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  hide.clp  	hide0   "  ?id "  gopanIya )" crlf))
)

;"hiding","N","1.gopanIya"
; krAMwikArI"hiding" sWAna ke liye prasWAna kara cuke We.
;
; Added by human
(defrule hide1
(declare (salience 4900))
(id-root ?id hide)
?mng <-(meaning_to_be_decided ?id)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id CipA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  hide.clp 	hide1   "  ?id "  CipA )" crlf))
)

(defrule hide2
(declare (salience 4800))
(id-root ?id hide)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Cipa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  hide.clp 	hide2   "  ?id "  Cipa )" crlf))
)

(defrule hide3
(declare (salience 4700))
(id-root ?id hide)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id CipanA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  hide.clp 	hide3   "  ?id "  CipanA )" crlf))
)

;default_sense && category=noun	jAnavara kI KAla	0
;"hide","N","1.jAnavara kI KAla"
;'hide' jUwe/bega Axi kaI waraha kI vaswuez banawI hEM.  
;
;
