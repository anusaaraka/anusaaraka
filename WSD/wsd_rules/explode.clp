
(defrule explode0
(declare (salience 5000))
(id-root ?id explode)
?mng <-(meaning_to_be_decided ?id)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id visPota_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  explode.clp 	explode0   "  ?id "  visPota_kara )" crlf))
)

(defrule explode1
(declare (salience 4900))
(id-root ?id explode)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id visPota_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  explode.clp 	explode1   "  ?id "  visPota_ho )" crlf))
)

;Changed by Amba from PUtanA to visPota_karanA/honA based on paxasUwra
;default_sense && category=verb	PUta	0
;"explode","VI","1.PUtanA"
;The champagne bottle exploded.
;
;
