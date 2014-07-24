
(defrule equivalent0
(declare (salience 4000))
(id-root ?id equivalent)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id barAbara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  equivalent.clp 	equivalent0   "  ?id "  barAbara )" crlf))
)

(defrule equivalent1
(declare (salience 4000))
(id-root ?id equivalent)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id barAbara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  equivalent.clp 	equivalent1   "  ?id "  barAbara )" crlf))
)

;"equivalent","Adj","1.barAbara"
;The perpendicular bisector of a line divides it into two equivalent halves.
;
;


;@@@ Added by Pramila(Banasthali University) on 04-02-2014
;English word 'army' is an equivalent of Hindi 'sena'.   ;shiksharthi
;अंग्रेजी शब्द 'आर्मी' हिन्दी के 'सेना' शब्द का पर्याय है.
;There is no English equivalent for 'bon appetit' so we have adopted the French expression.   ;cald
;'बोन एपीटिट' के लिए कोई अंग्रेजी पर्याय नहीं है इसलिए हमने फ्रेंच अभिव्यक्ति को लिया है..
(defrule equivalent2
(declare (salience 4900))
(id-root ?id equivalent)
?mng <-(meaning_to_be_decided ?id)
(or(viSeRya-of_saMbanXI  ?id ?)(viSeRya-for_saMbanXI  ?id ?))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id paryAya))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  equivalent.clp 	equivalent2   "  ?id "  paryAya )" crlf))
)
