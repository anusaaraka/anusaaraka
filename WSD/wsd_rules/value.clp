
(defrule value0
(declare (salience 5000))
(id-root ?id value)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id mUlya))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  value.clp 	value0   "  ?id "  mUlya )" crlf))
)

;"value","N","1.mUlya"
;The value of the rupee has gone up
;--"2.sixXAnwa_jinameM_samAja_kI_viSeRa_AsWA_ho"
;Youngsters have different set of values
;--"3.kisI_akRara_xvArA_praxarSiwa_rASi_kA_mUlya"
;Find the value of `x'
;
(defrule value1
(declare (salience 4900))
(id-root ?id value)
?mng <-(meaning_to_be_decided ?id)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id mola_lagA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  value.clp 	value1   "  ?id "  mola_lagA )" crlf))
)

(defrule value2
(declare (salience 4800))
(id-root ?id value)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id mola_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  value.clp 	value2   "  ?id "  mola_ho )" crlf))
)

;"value","V","1.mola_ho[lagA]"
;default_sense && category=verb	mola_lagA	0
;"value","VT","1.mola_lagAnA"
;He valued the car for rupees one lakh
;--"2.Axara_karanA"
;I value his friendship.
;

;@@@ Added by Prachi Rathore[6-3-14]
;The value of π = 3.1415926... is known to a large number of significant figures.[ncert]
;π = 3.1415926... का मान बहुत अधिक सार्थक अङ्कों तक ज्ञात है. ...
(defrule value3
(declare (salience 5500))
(id-root ?id value)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(or(viSeRya-of_saMbanXI  ?id ?id1)(viSeRya-as_saMbanXI  ?id ?id1))
(or(id-root ?id1 number|velocity)(id-cat_coarse ?id1 number))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id mAna))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  value.clp 	value3   "  ?id "  mAna)" crlf))
)
