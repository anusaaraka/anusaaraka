
(defrule stimulate0
(declare (salience 5000))
(id-root ?id stimulate)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 secretion)
(kriyA-object ?id ?id1)
;(id-cat_coarse ?id verb) this and the above line are automatically modified using a program by Sukhada
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id preriwa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  stimulate.clp 	stimulate0   "  ?id "  preriwa_kara )" crlf))
)

(defrule stimulate1
(declare (salience 4900))
(id-root ?id stimulate)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id preriwa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  stimulate.clp 	stimulate1   "  ?id "  preriwa_kara )" crlf))
)

;default_sense && category=verb	uwwejiwa kara	0
;"stimulate","V","1.uwwejiwa karanA"
;When Rahul stood first in his class,it stimulated him to work even harder.
;
;
